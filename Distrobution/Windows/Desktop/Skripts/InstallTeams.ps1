try {
    $teamsDownloadUrl = "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=windows&arch=x64&download=true"

    $folderPath = "C:\Temp"
    if (-not (Test-Path $folderPath)) {
        New-Item -ItemType Directory -Path $folderPath | Out-Null
    }
    $teamsInstallerPath = "C:\Temp\msteams_windows_x64.exe"

    # Download Teams installer
    Invoke-WebRequest -Uri $teamsDownloadUrl -OutFile $teamsInstallerPath

    # Install Teams
    Start-Process -FilePath $teamsInstallerPath "/s"  -Wait

    # Kill Teams process
    Get-Process -Name Teams -ErrorAction SilentlyContinue | Stop-Process -Force
            
    Write-Host "Teams installed successfully. "
    exit 0
} catch {
    $errorMessage = $_.Exception.Message
    Write-Host "Teams installation failed. Reason: $errorMessage"
    exit 1
}