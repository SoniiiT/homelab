$onedrivePath = "$env:LOCALAPPDATA\Microsoft\OneDrive\OneDrive.exe"

if (Test-Path $onedrivePath) {
    Write-Host "OneDrive is already installed."
} else {
    Write-Host "Downloading OneDrive installer..."
    $downloadUrl = "https://go.microsoft.com/fwlink/p/?LinkID=2182910&clcid=0x409&culture=de-de&country=de"
    $installerPath = "$env:USERPROFILE\Downloads\OneDriveSetup.exe"
    Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath
    Write-Host "OneDrive Setup downloaded successfully."

    # Install OneDrive
    Write-Host "Installing OneDrive..."
    Start-Process -FilePath $installerPath -ArgumentList "/silent" -Wait

    # Check if installation was successful
    if ($LASTEXITCODE -eq 0) {
        Write-Host "OneDrive was installed successfully."
    } else {
        Write-Host "OneDrive couldn't be installed."
    }
}