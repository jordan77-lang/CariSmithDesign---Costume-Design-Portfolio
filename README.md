# CariSmithDesign - Local Website

This is a complete offline version of the carismithdesign.com website cloned from the Wayback Machine (April 2024 snapshot).

## Files & Folders

### Main Website
- **index.html** - The complete website with all sections:
  - Header with navigation
  - Hero section with tagline
  - Social media links (Instagram)
  - About section (3 service areas)
  - Portfolio section (4 content cards)
  - Photo Gallery with auto-playing filmstrip carousel (123 images)
  - Subscribe form
  - Contact section with Google Maps

### Carousel Files
- **carousel_images.js** - Array of all 123 gallery images with captions
- **carousel.html** - Standalone carousel page (backup/reference)

### Original GoDaddy Assets (Reference)
- **script1.js** - Original GoDaddy React widget framework (60KB)
- **script2.js** - Original carousel data with all image definitions (107KB)

### Images
- **images/** - Folder containing all 123 costume design photos

## Features

✅ **Fully Offline** - All resources load from local files (except Google Maps iframe)  
✅ **Auto-Playing Slideshow** - Carousel starts automatically on page load  
✅ **Filmstrip Layout** - Horizontal scrolling thumbnail strip  
✅ **Keyboard Navigation** - Arrow keys to navigate, spacebar to pause/play  
✅ **Clean Captions** - All trailing backslashes removed  
✅ **Responsive Design** - Works on desktop and mobile  
✅ **No React Dependencies** - Pure vanilla JavaScript  

## How to Use

1. Open `index.html` in any web browser
2. The carousel will auto-start when the page loads
3. Click thumbnails to jump to specific images
4. Use ◄ ► arrows to navigate manually
5. Keyboard shortcuts:
   - Left/Right arrows: Navigate images
   - Spacebar: Pause/resume autoplay

## GitHub Pages Deployment

To deploy this site to GitHub Pages:
1. Push this folder to your GitHub repository
2. Go to Settings → Pages
3. Select the branch and folder
4. Your site will be live at `https://yourusername.github.io/repo-name/`

## Technical Details

- **Original Site**: carismithdesign.com (GoDaddy Website Builder)
- **Snapshot Date**: April 2024 (Wayback Machine)
- **Total Images**: 123 costume design photos
- **Carousel Type**: Custom filmstrip with vanilla JavaScript
- **Map Widget**: Replaced with Google Maps iframe (3431 N 21ST DR, Phoenix, AZ 85015)

## Notes

- The original site used GoDaddy's proprietary React-based widget system which cannot be fully downloaded offline
- The carousel was rebuilt from scratch using vanilla JavaScript for offline compatibility
- All images extracted from the original GoDaddy CDN URLs
- The parent `carismithdesign` folder contains the original Wayback Machine files if needed for reference

---

**Created**: October 2025  
**Purpose**: Portfolio preservation and offline access
