#!/usr/bin/env python3
import os
import glob
import shutil

def rename_png_files(folder_path):
    """
    Rename all PNG files in a folder to problem#.png format and save them in a 'renamed' subfolder
    
    Args:
        folder_path (str): Path to the folder containing PNG files
    """
    # Change to the specified directory
    if not os.path.exists(folder_path):
        print(f"Error: Folder '{folder_path}' does not exist.")
        return
    
    # Create 'renamed' subfolder
    renamed_folder = os.path.join(folder_path, "renamed")
    os.makedirs(renamed_folder, exist_ok=True)
    print(f"Created/verified 'renamed' folder: {renamed_folder}")
    
    # Get all PNG files in the folder (excluding files already in the renamed folder)
    png_pattern = os.path.join(folder_path, "*.png")
    png_files = glob.glob(png_pattern)
    
    if not png_files:
        print("No PNG files found in the specified folder.")
        return
    
    print(f"Found {len(png_files)} PNG files to rename.")
    
    # Sort files to ensure consistent ordering
    png_files.sort()
    
    # Copy and rename each file to the renamed folder
    for i, old_file_path in enumerate(png_files, start=1):
        # Create new filename in the renamed folder
        new_filename = f"problem{i}.png"
        new_file_path = os.path.join(renamed_folder, new_filename)
        
        # Handle case where target filename already exists
        if os.path.exists(new_file_path):
            print(f"Warning: {new_filename} already exists in renamed folder. Skipping {os.path.basename(old_file_path)}")
            continue
        
        try:
            # Copy the file with the new name to the renamed folder
            import shutil
            shutil.copy2(old_file_path, new_file_path)
            print(f"Copied and renamed: {os.path.basename(old_file_path)} -> renamed/{new_filename}")
        except OSError as e:
            print(f"Error copying {os.path.basename(old_file_path)}: {e}")

def main():
    # You can modify this path or make it accept command line arguments
    folder_path = input("Enter the folder path containing PNG files: ").strip()
    
    # Remove quotes if user pasted a quoted path
    folder_path = folder_path.strip('"\'')
    
    # Use current directory if no path provided
    if not folder_path:
        folder_path = "."
        print("Using current directory...")
    
    rename_png_files(folder_path)
    print("Renaming process completed!")

if __name__ == "__main__":
    main()
