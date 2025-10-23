# PowerShell script to update image references in index.html

Write-Host "Updating image references in index.html..." -ForegroundColor Yellow

$htmlFile = "index.html"
$content = Get-Content $htmlFile -Raw

# Replace all the image filenames
$replacements = @{
    "828E5247-C068-49D5-88A9-D42245F1E9C7.jpeg" = "header-background.jpeg"
    "blob-097a0d1.png" = "about-section-image-01.png"
    "A94FD24A-31C3-42FA-A229-BC8A3CCE9E6A.png" = "about-section-image-02.png"
    "FB_IMG_1631891438279.jpg" = "about-section-image-03.jpg"
    "E5F955BB-FFD6-4A3A-BBB2-3A5CDDAF9D5B.jpeg" = "content-card-musicals-beehive.jpeg"
    "C9A790D5-1123-4D2B-AB8F-C4E0DAE8B49C.jpeg" = "content-card-specialty.jpeg"
    "27173232_1735729186478079_6626051887854411448_.jpg" = "content-card-dance.jpg"
    "CB7B63DC-6903-45D8-A5C2-02E293CCF346.jpeg" = "content-card-custom.jpeg"
}

$count = 0
foreach ($old in $replacements.Keys) {
    $new = $replacements[$old]
    if ($content -match [regex]::Escape($old)) {
        $content = $content -replace [regex]::Escape($old), $new
        Write-Host "Replaced: $old -> $new" -ForegroundColor Green
        $count++
    }
    else {
        Write-Host "Not found: $old" -ForegroundColor DarkYellow
    }
}

# Save the updated content
$content | Set-Content $htmlFile -NoNewline

Write-Host ""
Write-Host "Updated $count image references in index.html" -ForegroundColor Cyan
Write-Host "Done!" -ForegroundColor Green
