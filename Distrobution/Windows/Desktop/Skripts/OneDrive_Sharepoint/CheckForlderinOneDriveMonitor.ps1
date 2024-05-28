$folderName = "Verwaltung"
$oneDrivePath = "$env:USERPROFILE\IWTI\IWTI - Dokumente\"
$authorizedUsersVerwaltung = "christoph.rohde", "francesca.pasqua", "georgia.berrios", "joachim.hirschner", "michael.mozer", "johannes.mang", "stiliani.sirianni", "susann.hahn" # Replace with the authorized user's usernames
if ($authorizedUsersVerwaltung -icontains $env:USERNAME) {
    if (Test-Path "$oneDrivePath\$folderName" -PathType Container) {
        $items = Get-ChildItem "$oneDrivePath\$folderName"
        if ($items.Count -gt 0) {
            Write-Host "<-Start Result->"
            Write-Host "RESULT=OK"
            Write-Host "<-End Result->"
            exit 0
        } else {
            Write-Host "<-Start Result->"
            Write-Host "ALERT=Failed"
            Write-Host "<-End Result->"
            Write-Host "<-Start Diagnostic->"
            Write-Host "The folder '$folderName' exists in OneDrive but is empty. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            Write-Host "<-End Diagnostic->"
            exit 1
        }
    } else {
        Write-Host "<-Start Result->"
        Write-Host "ALERT=Failed"
        Write-Host "<-End Result->"
        Write-Host "<-Start Diagnostic->"
        Write-Host "The folder '$folderName' does not exist in OneDrive. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
        Write-Host "<-End Diagnostic->"
        exit 1
    }
} else {
    if (Test-Path "$oneDrivePath\$folderName" -PathType Container) {
        $items = Get-ChildItem "$oneDrivePath\$folderName"
        if ($items.Count -gt 0) {
            Write-Host "<-Start Result->"
            Write-Host "ALERT=Failed"
            Write-Host "<-End Result->"
            Write-Host "<-Start Diagnostic->"
            Write-Host "User is not authorized to use '$folderName' folder. The folder '$folderName' exists in OneDrive and contains $($items.Count) item(s). PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            Write-Host "<-End Diagnostic->"
            exit 1
        } else {
            Write-Host "<-Start Result->"
            Write-Host "ALERT=Failed User is not authorized to use '$folderName' folder. The folder '$folderName' exists in OneDrive but is empty. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            Write-Host "<-End Result->"
            Write-Host "<-Start Diagnostic->"
            Write-Host "User is not authorized to use '$folderName' folder. The folder '$folderName' exists in OneDrive but is empty. PC Name: $env:COMPUTERNAME Username: $env:USERNAME"
            Write-Host "<-End Diagnostic->"
            exit 1
        }
    } else {
        Write-Host "<-Start Result->"
        Write-Host "RESULT=OK"
        Write-Host "<-End Result->"
        exit 0
    }
}