$oneDrivePath = "C:\Users\user\OneDrive - CompanyName\"
$folderNamesLVL0 = @("Organisation", "OrganisationGT", "Projekte", "ProjekteGT")
$folderNamesLVL1 = @("Verwaltung", "VerwaltungGT")
$folderNamesLVL2 = "Gesellschaft"

$UserLVL0 = $env:USERNAME
$UserLVL1 = @("Christoph.Rohde", "Joachim.Hirschner", "Michael.Mozer", "Stiliani.Sirianni", "Susann.Hahn", "Matthias.Unholzer", "Francesca.Pasqua", "Georgia.Berrios")
$UserLVL2 = @("Christoph.Rohde", "Joachim.Hirschner", "Michael.Mozer")

# Check if all folders and files are synced
$folders = @($folderNamesLVL0 + $folderNamesLVL1 + $folderNamesLVL2)
foreach ($folder in $folders) {
    $folderPath = Join-Path $oneDrivePath $folder
    $syncStatus = (Get-ChildItem $folderPath -Force).Attributes.ToString()
    if ($syncStatus -notmatch "Offline") {
        Write-Host "$folder is fully synced."
    } else {
        Write-Host "$folder is not fully synced."
    }
    # Check if user has access to folder
    if ($folder -in $folderNamesLVL0) {
        if ($UserLVL0 -notin $UserLVL1) {
            Write-Host "Alert: $UserLVL0 does not have access to $folder."
        }
    } elseif ($folder -in $folderNamesLVL1) {
        if ($UserLVL0 -notin $UserLVL1) {
            Write-Host "Alert: $UserLVL0 does not have access to $folder."
        } elseif ($UserLVL0 -notin $UserLVL2) {
            Write-Host "Alert: $UserLVL0 does not have access to $folder."
        }
    } elseif ($folder -eq $folderNamesLVL2) {
        if ($UserLVL0 -notin $UserLVL2) {
            Write-Host "Alert: $UserLVL0 does not have access to $folder."
        }
    }
    # Check if user has access to files in folder
    $files = Get-ChildItem $folderPath -Recurse -File
    foreach ($file in $files) {
        $filePath = $file.FullName
        $fileOwner = (Get-Acl $filePath).Owner
        if ($folder -in $folderNamesLVL0) {
            if ($fileOwner -notin $UserLVL1) {
                Write-Host "Alert: $fileOwner does not have access to $filePath."
            }
        } elseif ($folder -in $folderNamesLVL1) {
            if ($fileOwner -notin $UserLVL1) {
                Write-Host "Alert: $fileOwner does not have access to $filePath."
            } elseif ($fileOwner -notin $UserLVL2) {
                Write-Host "Alert: $fileOwner does not have access to $filePath."
            }
        } elseif ($folder -eq $folderNamesLVL2) {
            if ($fileOwner -notin $UserLVL2) {
                Write-Host "Alert: $fileOwner does not have access to $filePath."
            }
        }
    }
}
