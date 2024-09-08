# Check if PowerShell is running with elevated privileges
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Please run this script as an administrator."
    Exit
}

# Set Execution Policy
Set-ExecutionPolicy AllSigned

# Install Chocolatey (if not already installed)
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Chocolatey packages
choco install ubisoft-connect -y
choco install ea-app -y
choco install discord -y
choco install prismlauncher -y
choco install itch -y
choco install googlechrome -y
choco install firefox -y
choco install epicgameslauncher -y
# choco install opera-gx -y

# Optional
# choco install streamdeck -y
# choco install icue -y
# choco install nzxt -y
# choco install razer-synapse-3 -y
# choco install parsec -y
# choco install steelseries-engine -y
# choco install lghub -y

# Only for Nvidia GPU
# choco install geforce-experience -y
# choco install nvidia-broadcast -y

# Only for AMD Users
# $urlAMD = "https://drivers.amd.com/drivers/installer/24.10/whql/amd-software-adrenalin-edition-24.8.1-minimalsetup-240829_web.exe"
# $amdExe = "$output\amd-software-adrenalin-edition-24.8.1-minimalsetup-240829_web.exe"
# Start-BitsTransfer -Source $urlAMD -Destination $amdExe
# Start-Process -FilePath $amdExe -ArgumentList "/S" -Wait

# Install Internet Programs
$output = [Environment]::GetFolderPath("User") + "\Downloads\"

# Install Steam
$urlSteam = "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe"
$steamExe = "$output\SteamSetup.exe"
Start-BitsTransfer -Source $urlSteam -Destination $steamExe
Start-Process -FilePath $steamExe -ArgumentList "/S" -Wait

# Install Battle.net
$urlBattleNet = "https://www.battle.net/download/getInstallerForGame?os=win&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP"
$battleNetExe = "$output\BattleNetSetup.exe"
Invoke-WebRequest -Uri $urlBattleNet -OutFile $battleNetExe
Start-Process -FilePath $battleNetExe -ArgumentList "/S" -Wait

# Install JBL Quantum Engine
# $urlJBL = "https://update.quantum.harman.com/upload/JBL_QuantumENGINE_1.18.0.1985_x64.exe"
# $jblExe = "$output\JBL_QuantumENGINE_1.18.0.1985_x64.exe"
# Start-BitsTransfer -Source $urlJBL -Destination $jblExe
# Start-Process -FilePath $jblExe -ArgumentList "/S" -Wait

# Install Elgato 4K Capture Utility
# $urlElgato = "https://edge.elgato.com/egc/windows/spotlight/1.7.13/4KCaptureUtility_1.7.13.6046_x64.msi"
# $elgatoMsi = "$output\4KCaptureUtility_1.7.13.6046_x64.msi"
# Invoke-WebRequest -Uri $urlElgato -OutFile $elgatoMsi
# Start-Process -FilePath "msiexec.exe" -ArgumentList "/i", $elgatoMsi, "/quiet" -Wait

