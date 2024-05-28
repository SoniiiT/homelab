# Windows-Updates herunterladen und installieren (ohne Neustart)

# Prüfen, ob das Skript mit Administratorrechten ausgeführt wird
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Das Skript muss als Administrator ausgeführt werden." -ForegroundColor Red
    exit
}

# Installiere PSWindowsUpdate-Modul
Write-Host "Installiere PSWindowsUpdate-Modul..." -ForegroundColor Green
Install-Module -Name PSWindowsUpdate -Force -AllowClobber

# Install NuGet package provider
Write-Host "Installing NuGet package provider..." -ForegroundColor Green
Install-Module -Name PowerShellGet -Force -AllowClobber
Install-Module -Name PackageManagement -Force -AllowClobber
Install-PackageProvider -Name NuGet -Force

# Importiere das PSWindowsUpdate-Modul
Import-Module PSWindowsUpdate

# Windows-Updates herunterladen und installieren
Write-Host "Windows-Updates werden heruntergeladen und installiert..." -ForegroundColor Green
Get-WindowsUpdate -Install -AcceptAll -IgnoreReboot

Write-Host "Windows-Updates wurden erfolgreich installiert." -ForegroundColor Green
