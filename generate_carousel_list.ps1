# PowerShell script to generate carousel image list
# Run this script whenever you add new images to carousel_images folder

$outputFile = "carousel_images_auto.js"
$imageFolder = "carousel_images"
$originalCaptionsFile = "carousel_images.js"

# Load original captions if the file exists
$captionMap = @{}
if (Test-Path $originalCaptionsFile) {
    $originalContent = Get-Content $originalCaptionsFile -Raw
    # Extract filename and caption pairs using regex
    $matches = [regex]::Matches($originalContent, 'src:\s*"images/([^"]+)"[^}]*caption:\s*"([^"]*)"')
    foreach ($match in $matches) {
        $fileName = $match.Groups[1].Value
        $caption = $match.Groups[2].Value
        $captionMap[$fileName] = $caption
    }
}

# Get all image files
$images = Get-ChildItem -Path $imageFolder -Filter *.* | Where-Object { $_.Extension -match '\.(jpg|jpeg|png|gif|webp)$' } | Sort-Object Name

# Start building the JavaScript file
$jsContent = "// Auto-generated list of carousel images`n"
$jsContent += "// Run generate_carousel_list.ps1 to update this file`n`n"
$jsContent += "const carouselImages = [`n"

# Add each image
foreach ($img in $images) {
    $filename = $img.Name
    # Try to get caption from original file, otherwise use empty string
    $caption = if ($captionMap.ContainsKey($filename)) { $captionMap[$filename] } else { "" }
    
    $jsContent += "    {src: 'carousel_images/$filename', caption: '$caption'},`n"
}

# Close the array
$jsContent += "];`n"

# Write to file
$jsContent | Out-File -FilePath $outputFile -Encoding UTF8

Write-Host "Generated $outputFile with $($images.Count) images"
Write-Host "To add new images: "
Write-Host "1. Copy images to '$imageFolder' folder"
Write-Host "2. Run this script: .\generate_carousel_list.ps1"
Write-Host "3. Refresh your browser"
