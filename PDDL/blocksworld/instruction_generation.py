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

def main():
    # Supported image formats
    image_extensions = {".png", ".jpg", ".jpeg"}
    images = [f for f in os.listdir(".") if os.path.splitext(f)[1].lower() in image_extensions]

    if not images:
        print("No images found in the current folder.")
        return

    # Sort images by their number in the filename
    images.sort(key=extract_number)

    # Ensure output folder exists
    out_dir = "instructions"
    os.makedirs(out_dir, exist_ok=True)

    for image_file in images:
        num = extract_number(image_file)
        base64_img = encode_image_to_base64(image_file)

        response = client.chat.completions.create(
            model="gpt-4.1",
            messages=[
                {
                    "role": "system",
                    "content": "You are an assistant that generates stacking problems based on images of blocks."
                },
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "text",
                            "text": (
                                "Create a random stack of blocks from the image. "
                                "You can create one or multiple stacks if you want.\n"
                                "The instructions should look like this: "
                                "Create a stack of block: pink over red over yellow over green."
                            )
                        },
                        {
                            "type": "image_url",
                            "image_url": {
                                "url": f"data:image/jpeg;base64,{base64_img}"
                            }
                        }
                    ]
                }
            ],
            max_tokens=150,
        )

        # Extract reply text
        output_text = response.choices[0].message.content

        # Save to instructions/problem#.txt (matching number in image filename)
        filename = os.path.join(out_dir, f"problem{num}.txt")
        with open(filename, "w") as f:
            f.write(output_text.strip())

        print(f"✅ Generated {filename} for {image_file}")

if __name__ == "__main__":
    main()
