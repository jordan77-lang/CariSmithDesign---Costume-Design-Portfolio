# PowerShell script to rename all images to descriptive names
# Run this script from the carismithdesign_local directory

# Define mappings for carousel_images folder
$carouselMappings = @{
    "05BD2B6F-1CB0-4A6E-99F4-950E003DD2AA.jpeg" = "billy-elliott-01.jpeg"
    "061D6D11-0E2D-42BA-8943-0EC46613504E.jpeg" = "elf-the-musical-01.jpeg"
    "06E15E37-84A4-4751-9C97-B12E2EC605EA.jpeg" = "mama-mia-01.jpeg"
    "0B884393-6055-405D-9DE0-7148261B4715.jpeg" = "bullets-over-broadway-01.jpeg"
    "0C4B1DA3-5F47-43BB-95F4-06094DF5E43D.jpeg" = "olaf-custom-puppet-01.jpeg"
    "2C0F5D63-0173-4C37-BCF0-A6508CC478D0.jpeg" = "dragon-puppet-magic-books-01.jpeg"
    "2E2A864F-61C8-4EE2-82F6-B2B36D334FBE.jpeg" = "custom-dancewear-01.jpeg"
    "2E57702A-9D21-47F4-974A-38E5A3E50D0C.jpeg" = "giant-wing-painting-az-opera-01.jpeg"
    "2F575E86-5C18-40EB-A7FB-7F051CCCCE72.jpeg" = "olaf-melting-01.jpeg"
    "30E6C2CF-1B58-4E4C-9738-4B468602D5A6.jpeg" = "magic-books-dragon-01.jpeg"
    "3309EBD5-5BC2-4E0A-A785-5DBAC7126345.jpeg" = "gypsy-01.jpeg"
    "34AEEF64-E64A-4624-AA75-25BDDBF1BA6F.jpeg" = "custom-bellydance-wear-01.jpeg"
    "395E9451-F3AF-4843-9260-0BF877EC3919.jpeg" = "costume-design-01.jpeg"
    "39D02CAB-6861-495C-99AF-BD500441FBA8.jpeg" = "pippin-01.jpeg"
    "3AAD18DD-6A2D-472D-B437-38740BE670D2.jpeg" = "roxie-and-velma.jpeg"
    "3F533989-9C02-41B9-B7A8-FB9EF8A0C8C6.jpeg" = "joey-sorge-walt-disney-when-you-wish.jpeg"
    "424F322F-DABA-4988-ACCC-3A8047D7091D.jpeg" = "santa-mrs-claus-elf-the-musical.jpeg"
    "454D84B8-69F3-4734-B96F-B75E344E053A.jpeg" = "westside-story-01.jpeg"
    "4A77EB21-800B-41C4-931D-C6178D4711C4.jpeg" = "costume-design-02.jpeg"
    "4FC3E0D9-8131-47F5-A4BF-F9C80FA1DBDC.jpeg" = "once-01.jpeg"
    "57234558-2A7E-4FA5-909A-E85151DFE0AB.jpeg" = "costume-design-03.jpeg"
    "5CACD8C8-6BC9-45BE-AB40-0731890C752D.jpeg" = "jersey-boys-angels.jpeg"
    "5FA331CC-07E4-4B4B-B1CF-9353CCAB3F12.jpeg" = "little-shop-of-horrors-01.jpeg"
    "602B696A-D3A2-4EFF-A94F-31A3EE4C3670.jpeg" = "costume-design-04.jpeg"
    "67766D35-EC81-4106-B467-E5752366BB9C.jpeg" = "mimis-boots-rent.jpeg"
    "69B68277-9CCB-42D1-9780-598E659C2FBA.jpeg" = "rent-angels-dress.jpeg"
    "6E08DCC2-0E56-4366-8E3C-0848E78DB8C0.jpeg" = "elf-the-musical-02.jpeg"
    "72E64B0C-AC15-4F75-8766-D68D67D7522D.jpeg" = "jersey-boys-01.jpeg"
    "7AF3F8D1-C640-4508-B66B-E58C9CCCB54F.jpeg" = "godspell-01.jpeg"
    "7E7869D5-5347-4D7E-A963-2D70A59B36AC.jpeg" = "mama-mia-02.jpeg"
    "820B4A13-D5A1-4E7F-AF1B-12B5645B75B2.jpeg" = "mama-mia-03.jpeg"
    "828E5247-C068-49D5-88A9-D42245F1E9C7.jpeg" = "costume-portfolio-header.jpeg"
    "8ADF38C9-0B36-4BD6-B929-E2416E5B750F.jpeg" = "pippin-and-charlemagne.jpeg"
    "951E8B81-2DD1-4A25-9D44-C7130D75DBF8.jpeg" = "giant-wing-painting-az-opera-02.jpeg"
    "9A708593-F6D0-4BF1-8C01-B9042EF05DBB.jpeg" = "olaf-custom-puppet-02.jpeg"
    "9BFC796A-AECB-4D46-9E24-0F27309F8D8C.jpeg" = "beehive-01.jpeg"
    "9C2331ED-2BBB-444E-8427-FCA0175252F4.jpeg" = "once-02.jpeg"
    "A0315969-0FEE-4C69-85D2-FC816C333218.jpeg" = "in-the-heights-01.jpeg"
    "A0B1CDA4-D8DA-4B32-8A55-821280833A3A.jpeg" = "beehive-02.jpeg"
    "A2B5447A-F3AC-4C6B-8637-75F648A84047.jpeg" = "westside-story-the-jets-01.jpeg"
    "A4413D96-020A-4082-B6B0-186F845B991C.jpeg" = "hand-to-god-puppetry-01.jpeg"
    "A64D0AF8-A55C-408F-A0D9-A712382FB9EF.jpeg" = "roxie-chicago.jpeg"
    "A9F2D43D-3387-42AC-AEE1-2CDD4A2642B1.jpeg" = "magic-books-dragon-02.jpeg"
    "AB43DC30-2334-4471-8AE5-5E7D85B2F253.jpeg" = "westside-story-the-jets-02.jpeg"
    "AEB445F2-3987-4E16-AC42-FF69810722FB.jpeg" = "once-03.jpeg"
    "AEDE4516-6165-4854-9476-612BA6B37A70.jpeg" = "custom-bellydance-wear-02.jpeg"
    "B10938E4-8B8F-4F49-8EDC-828F250A2590.jpeg" = "costume-design-05.jpeg"
    "B41EB841-B366-4C00-8A37-D809D224D0D7.jpeg" = "westside-story-02.jpeg"
    "B5786959-1B2A-4836-9417-A5C5CA9FA63C.jpeg" = "custom-bellydance-bra-and-belt.jpeg"
    "B730C56D-226B-43AC-94A8-86C2872B8A73.jpeg" = "childsplay-goodnight-moon-mouse-01.jpeg"
    "BAB05723-70AA-4453-87B2-0969547306CE.jpeg" = "billy-elliott-02.jpeg"
    "BBF461EE-0BB0-4779-A036-11B987E29650.jpeg" = "childsplay-goodnight-moon-mouse-02.jpeg"
    "BFEA078E-2CF4-4CA2-89B5-0C80276242B2.jpeg" = "custom-dancewear-02.jpeg"
    "C032D19F-41D1-4443-9896-066ED04B4614.jpeg" = "all-night-strut.jpeg"
    "C2304CEB-E1F6-427F-AD2B-DDCA43CDF989.jpeg" = "jersey-boys-02.jpeg"
    "C385DB08-B13B-4E38-87C1-1BCEC0CDA744.jpeg" = "godspell-02.jpeg"
    "C5AE38B3-4574-4E23-85D6-6F95FFE46350.jpeg" = "elf-the-musical-03.jpeg"
    "C957638C-0660-4C5F-892E-4341FB715EDE.jpeg" = "aretha-franklin-beehive.jpeg"
    "C9A790D5-1123-4D2B-AB8F-C4E0DAE8B49C.jpeg" = "costume-design-06.jpeg"
    "CB7B63DC-6903-45D8-A5C2-02E293CCF346.jpeg" = "costume-design-07.jpeg"
    "DB39AB00-A9BC-44DD-A52F-15F8B9336563.jpeg" = "mama-mia-04.jpeg"
    "DF09A13E-DD22-4DD2-BC04-A97D21295CE4.jpeg" = "pippin-02.jpeg"
    "DF5E994B-6E2C-4689-A5AD-70104A9874DA.jpeg" = "westside-story-03.jpeg"
    "E0CD090E-77B6-40CE-9383-3B9F9EBA4253.jpeg" = "beehive-03.jpeg"
    "E5F955BB-FFD6-4A3A-BBB2-3A5CDDAF9D5B.jpeg" = "tina-turner-beehive.jpeg"
    "E9CF811C-6C84-4306-BF4D-71D38E366EDD.jpeg" = "one-man-two-guvnors.jpeg"
    "EB3FCBCE-7476-4A56-ADA2-471BAD1F86DD.jpeg" = "roxie-02.jpeg"
    "ED70FB20-FA23-4D69-B312-71E273817360.jpeg" = "magic-books-dragon-03.jpeg"
    "EE1EDF70-C142-4D09-9ED7-E78497EE9119.jpeg" = "costume-design-08.jpeg"
    "F0BE3337-F3B3-47B4-82EA-974CABBAF27B.jpeg" = "hand-to-god-puppetry-02.jpeg"
    "F14BF06B-C6DB-4DE6-A266-FED18392F70A.jpeg" = "olaf-melting-02.jpeg"
    "F40A75CF-A03E-4805-BDE4-794220B550A4.jpeg" = "when-you-wish-01.jpeg"
    "F6DFC38B-4647-4E4B-B974-5A5CA7220547.jpeg" = "dora-explorer-puppets.jpeg"
    "FA4FD8BB-8BD4-4672-98CB-81F083464FF5.jpeg" = "costume-design-09.jpeg"
    "FABBD64C-B078-4E91-8060-D1838EBFB78E.jpeg" = "when-you-wish-02.jpeg"
    "FE858C7E-0161-428B-B513-38D241E7F304.jpeg" = "costume-design-10.jpeg"
}

# Define mappings for main images folder
$mainImageMappings = @{
    "828E5247-C068-49D5-88A9-D42245F1E9C7.jpeg" = "header-background.jpeg"
    "blob-097a0d1.png" = "about-section-image-01.png"
    "A94FD24A-31C3-42FA-A229-BC8A3CCE9E6A.png" = "about-section-image-02.png"
    "FB_IMG_1631891438279.jpg" = "about-section-image-03.jpg"
    "E5F955BB-FFD6-4A3A-BBB2-3A5CDDAF9D5B.jpeg" = "content-card-musicals-beehive.jpeg"
    "C9A790D5-1123-4D2B-AB8F-C4E0DAE8B49C.jpeg" = "content-card-specialty.jpeg"
    "27173232_1735729186478079_6626051887854411448_.jpg" = "content-card-dance.jpg"
    "CB7B63DC-6903-45D8-A5C2-02E293CCF346.jpeg" = "content-card-custom.jpeg"
}

Write-Host "========================================"
Write-Host "Image Renaming Script"
Write-Host "========================================"
Write-Host ""

# Rename carousel_images
Write-Host "Renaming carousel_images folder..."
$carouselPath = "carousel_images"
$renamedCount = 0

if (Test-Path $carouselPath) {
    foreach ($oldName in $carouselMappings.Keys) {
        $oldFile = Join-Path $carouselPath $oldName
        $newName = $carouselMappings[$oldName]
        $newFile = Join-Path $carouselPath $newName
        
        if (Test-Path $oldFile) {
            try {
                Rename-Item -Path $oldFile -NewName $newName -ErrorAction Stop
                Write-Host "Renamed: $oldName -> $newName"
                $renamedCount++
            }
            catch {
                Write-Host "Error renaming $oldName : $_"
            }
        }
        else {
            Write-Host "File not found: $oldName"
        }
    }
}
else {
    Write-Host "carousel_images folder not found!"
}

Write-Host ""
Write-Host "Carousel images renamed: $renamedCount / $($carouselMappings.Count)"

# Rename main images
Write-Host ""
Write-Host "Renaming main images folder..."
$imagesPath = "images"
$mainRenamedCount = 0

if (Test-Path $imagesPath) {
    foreach ($oldName in $mainImageMappings.Keys) {
        $oldFile = Join-Path $imagesPath $oldName
        $newName = $mainImageMappings[$oldName]
        $newFile = Join-Path $imagesPath $newName
        
        if (Test-Path $oldFile) {
            try {
                Rename-Item -Path $oldFile -NewName $newName -ErrorAction Stop
                Write-Host "Renamed: $oldName -> $newName"
                $mainRenamedCount++
            }
            catch {
                Write-Host "Error renaming $oldName : $_"
            }
        }
        else {
            Write-Host "File not found: $oldName"
        }
    }
}
else {
    Write-Host "images folder not found!"
}

Write-Host ""
Write-Host "Main images renamed: $mainRenamedCount / $($mainImageMappings.Count)"
Write-Host ""
Write-Host "========================================"
Write-Host "Total files renamed: $($renamedCount + $mainRenamedCount)"
Write-Host "========================================"
Write-Host ""
Write-Host "All done! Images have been renamed."
Write-Host ""
