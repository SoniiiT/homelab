$folderName = "Verwaltung"
$oneDrivePath = "$env:USERPROFILE\IWTI\IWTI - Dokumente\"
$authorizedUsers = @("christoph.rohde", "francesca.pasqua", "georgia.berrios", "joachim.hirschner", "matthias.unholzer", "michael.mozer", "johannes.mang", "stiliani.sirianni", "susann.hahn") # Replace with the authorized user's usernames

if ($authorizedUsers -icontains $env:USERNAME) {
    Write-Host "User is authorized to use '$folderName' folder."
    if (Test-Path "$oneDrivePath\$folderName" -PathType Container) {
        $items = Get-ChildItem "$oneDrivePath\$folderName"
        if ($items.Count -gt 0) {
            Write-Host "The folder '$folderName' exists in OneDrive and contains $($items.Count) item(s). PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            exit 0
        } else {
            Write-Host "The folder '$folderName' exists in OneDrive but is empty. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            exit 1
        }
    } else {
        Write-Host "The folder '$folderName' does not exist in OneDrive. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
        exit 1
    }
} else {
    if (Test-Path "$oneDrivePath\$folderName" -PathType Container) {
        Write-Host "User is not authorized to use '$folderName' folder."
        $items = Get-ChildItem "$oneDrivePath\$folderName"
        if ($items.Count -gt 0) {
            Write-Host "The folder '$folderName' exists in OneDrive and contains $($items.Count) item(s). PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            exit 1
        } else {
            Write-Host "The folder '$folderName' exists in OneDrive but is empty. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            exit 1
        }
    } else {
        Write-Host "The folder '$folderName' does not exist in OneDrive. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
        exit 0
    }
}