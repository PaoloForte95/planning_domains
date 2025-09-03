#!/usr/bin/env python3

import os
import re
import base64
from openai import OpenAI

# Initialize client (make sure OPENAI_API_KEY is set in your environment)
client = OpenAI()

def encode_image_to_base64(image_path):
    """Reads an image file and encodes it as base64 for API use."""
    with open(image_path, "rb") as f:
        return base64.b64encode(f.read()).decode("utf-8")

def extract_number(filename):
    """Extract the number from filenames like problem12.png -> 12"""
    match = re.search(r"(\d+)", filename)
    return int(match.group(1)) if match else float("inf")

# PDDL generation template
PROMPT_TEMPLATE = """For block world: I want you to create PDDL problem file of the image that I give as input. 
A template for an PDDL problem file is reported below:
(define (problem block_world)
    (:domain block_world)
    (:objects
        object - type
    )
    (:init
 
    )
    (:goal
        (and
        )
    )
)
Type and predicated can be retrieved from the domain file:
 
(define (domain blocksworld)
    (:requirements :strips :typing)
    (:types block robot)
    (:predicates 
        (on ?x - block ?y - block)
        (ontable ?x - block)
        (clear ?x - block)
        (handempty ?x - robot)
        (handfull ?x - robot)
        (holding ?x - block)
    )
    (:action pick-up
        :parameters (?x - block ?robot - robot)
        :precondition (and
            (clear ?x) 
            (ontable ?x) 
            (handempty ?robot)
        )
        :effect (and
            (not (ontable ?x))
            (not (clear ?x))
            (not (handempty ?robot))
            (handfull ?robot)
            (holding ?x)
        )
    )
    (:action put-down
        :parameters (?x - block ?robot - robot)
        :precondition (and 
            (holding ?x)
            (handfull ?robot)
        )
        :effect (and 
            (not (holding ?x))
            (clear ?x)
            (handempty ?robot)
            (not (handfull ?robot))
            (ontable ?x))
        )
    (:action stack
        :parameters (?x - block ?y - block ?robot - robot)
        :precondition (and
            (holding ?x) 
            (clear ?y)
            (handfull ?robot)
        )
        :effect (and 
            (not (holding ?x))
            (not (clear ?y))
            (clear ?x)
            (handempty ?robot)
            (not (handfull ?robot))
            (on ?x ?y)
        )
    )
    (:action unstack
        :parameters (?x - block ?y - block ?robot - robot)
        :precondition (and
            (on ?x ?y)
            (clear ?x)
            (handempty ?robot)
        )
        :effect (and 
            (holding ?x)
            (clear ?y)
            (not (clear ?x))
            (not (handempty ?robot))
            (handfull ?robot)
            (not (on ?x ?y))
        )
    )
)
Your tasks are:
Create a stack of block: {task}

Just create the file and do not put any explanation
"""

def main():
    # Directories
    image_extensions = {".png", ".jpg", ".jpeg"}
    in_dir = "observation"
    task_dir = "instructions"
    out_dir = "problems/pddl"

    # Collect images
    images = [f for f in os.listdir(in_dir) if os.path.splitext(f)[1].lower() in image_extensions]

    if not images:
        print("No images found in 'observation/' folder.")
        return

    # Sort by number in filename
    images.sort(key=extract_number)

    # Ensure output folder exists
    os.makedirs(out_dir, exist_ok=True)

    for image_file in images:
        num = extract_number(image_file)

        # --- Load task from matching instruction file ---
        task_file = os.path.join(task_dir, f"problem{num}.txt")
        if not os.path.exists(task_file):
            print(f"⚠️ No instruction found for {image_file}, skipping...")
            continue

        with open(task_file, "r") as f:
            task = f.read().strip()

        # Build prompt with specific task
        prompt = PROMPT_TEMPLATE.format(task=task)

        # Encode image
        image_path = os.path.join(in_dir, image_file)
        base64_img = encode_image_to_base64(image_path)

        # Call API
        response = client.chat.completions.create(
            model="gpt-4.1",
            messages=[
                {"role": "system", "content": "You are an assistant that generates PDDL problem files from images. Only output valid PDDL content."},
                {"role": "user", "content": [
                    {"type": "text", "text": prompt},
                    {"type": "image_url", "image_url": {"url": f"data:image/jpeg;base64,{base64_img}"}}
                ]}
            ],
            max_tokens=1500,
        )

        # Extract reply text and clean it
        pddl_content = response.choices[0].message.content.strip()
        pddl_content = pddl_content.replace("```pddl", "").replace("```", "").strip()

        # Save to problems/problem#.pddl
        out_path = os.path.join(out_dir, f"problem{num}.pddl")
        with open(out_path, "w") as f:
            f.write(pddl_content)

        print(f"✅ Generated {out_path} for {image_file}")

if __name__ == "__main__":
    main()
