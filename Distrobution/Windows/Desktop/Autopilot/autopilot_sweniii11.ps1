# Install PSWindowsUpdate Module
Install-PackageProvider -Name NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
# Update Windows to newest version
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -ForceDownload -ForceInstall -IgnoreReboot
Write-Host "Windows updated"

# Install Chocolatey (if not already installed)
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Chocolatey packages
choco install steam -y
choco install ubisoft-connect -y
choco install discord -y
choco install vscode -y
choco install obsidian -y
choco install prismlauncher -y
choco install itch -y
choco install 1password -y
choco install googlechrome -y
choco install elgato-game-capture -y
choco install streamdeck -y
choco install geforce-experience -y
choco install lghub -y
choco install nvidia-broadcast -y
choco install winscp -y
choco install docker-desktop -y
choco install git -y
choco install python312 -y
choco install python311 -y
choco install barrier -y
choco install jetbrainstoolbox -y
choco install nextcloud-client -y
choco install powershell-core -y

#Set Default Browser
$browserPath = "C:\Program Files\Google\Chrome\Application\chrome.exe" # Replace with the path to your desired browser executable
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\http\shell\open\command" -Name "(Default)" -Value """$browserPath"" %1"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\https\shell\open\command" -Name "(Default)" -Value """$browserPath"" %1"

# Install Internet Programs
$output = [Environment]::GetFolderPath("User") + "\Downloads\"

# Intall Equalizer apo
$url1 = "https://equalizerapo.com/EqualizerAPO64-1.2.1.zip"
Start-BitsTransfer -Source $url1 -Destination $output
Expand-Archive -Path "$output\EqualizerAPO64-1.2.1.zip" -DestinationPath "$output\EqualizerAPO64-1.2.1"
Start-Process -FilePath "$output\EqualizerAPO64-1.2.1\EqualizerAPO64-1.2.1.exe" -Wait

# Install Moondeckbuddy for Windows EXE
$url2 = "https://github.com/FrogTheFrog/moondeck-buddy/releases/download/v1.6.1/MoonDeckBuddy-1.6.1-win64.exe"
Start-BitsTransfer -Source $url2 -Destination $output
Start-Process -FilePath "$output\MoonDeckBuddy-1.6.1-win64.exe" -Wait

#Open Battle.net
Start-Process "https://eu.shop.battle.net/de-de"

#Open Peace
Start-Process "https://sourceforge.net/projects/peace-equalizer-apo-extension/postdownload"