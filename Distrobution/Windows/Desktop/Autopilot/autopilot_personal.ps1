# Install PSWindowsUpdate Module
Install-PackageProvider -Name NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
# Update Windows to newest version
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -ForceDownload -ForceInstall -IgnoreReboot
Write-Host "Windows updated"

# Install Chocolatey (if not already installed)
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Chocolatey packages
choco install steam -y
choco install ubisoft-connect -y
choco install opera-gx -y
choco install discord -y
choco install vscode -y
choco install obsidian -y
choco install vmwareworkstation -y
choco install prismlauncher -y
choco install ea-app -y
choco install playstationplus -y
choco install itch -y
choco install 1password -y
choco install rustdesk -y
choco install threema-desktop -y
choco install whatsapp --version 2.2306.9 -y
choco install spotify -y
choco install googlechrome -y
choco install firefox -y
choco install brave -y
choco install elgato-game-capture -y
choco install streamdeck -y
choco install geforce-experience -y
choco install itunes -y
choco install logitechgaming -y
choco install msiafterburner -y
choco install obs-studio -y
choco install nvidia-broadcast -y
choco install parsec -y
choco install razer-synapse-3 -y
choco install winscp -y
choco install docker-desktop -y
choco install git -y
choco install javaruntime -y
choco install javaruntime-tiger -y
choco install python -y
choco install tailscale -y

#Set Default Browser
$browserPath = "C:\Program Files\Google\Chrome\Application\chrome.exe" # Replace with the path to your desired browser executable
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\http\shell\open\command" -Name "(Default)" -Value """$browserPath"" %1"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\https\shell\open\command" -Name "(Default)" -Value """$browserPath"" %1"

# Install Internet Programs
$output = "C:\Downloads\"

# Intall Equalizer apo
$url1 = "https://equalizerapo.com/EqualizerAPO64-1.2.1.zip"
Start-BitsTransfer -Source $url1 -Destination $output
Expand-Archive -Path "$output\EqualizerAPO64-1.2.1.zip" -DestinationPath "$output\EqualizerAPO64-1.2.1"
Start-Process -FilePath "$output\EqualizerAPO64-1.2.1\EqualizerAPO64-1.2.1.exe" -Wait

#Install reWASD
$url3 = "https://www.rewasd.com/release/download#install-rewasd"
Start-BitsTransfer -Source $url3 -Destination $output
Start-Process -FilePath "reWASD671-8191.exe" -Wait

#Open Battle.net
Start-Process "https://eu.shop.battle.net/de-de"

#Open Peace
Start-Process "https://sourceforge.net/projects/peace-equalizer-apo-extension/postdownload"