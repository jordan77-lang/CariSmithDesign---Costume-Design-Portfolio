# How to Add New Carousel Images

## Easy 3-Step Process:

### Step 1: Add Your Images
Copy your new photos to the `carousel_images` folder.

Supported formats: `.jpg`, `.jpeg`, `.png`, `.gif`, `.webp`

### Step 2: Run the Generator Script
Open PowerShell in this folder and run:
```powershell
powershell -ExecutionPolicy Bypass -File generate_carousel_list.ps1
```

This will automatically:
- Scan all images in the `carousel_images` folder
- Generate captions from the filenames
- Update `carousel_images_auto.js`

### Step 3: Refresh Your Browser
Open `index.html` in your browser or refresh if already open.

Your new images will appear in the carousel!

---

## Tips:

### Naming Your Images for Better Captions:
- Use hyphens or underscores to separate words
- Example: `My-Costume-Design.jpg` → Caption: "My Costume Design"
- Example: `Summer_Show_2025.jpg` → Caption: "Summer Show 2025"

### Removing Images:
1. Delete the image file from `carousel_images` folder
2. Re-run the generator script
3. Refresh your browser

---

## Current Images:
The carousel currently has **76 images** from your collection.

Original images remain in the `images` folder for other parts of the site.
