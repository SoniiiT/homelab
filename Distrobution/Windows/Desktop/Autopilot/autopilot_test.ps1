# Set the AC power plan to turn off the display after 4 hours and put the computer to sleep after 4 hours
Set-SleepConfiguration -ACStandbyTimeout 240 -ACMonitorTimeout 240
# Set the battery power plan to turn off the display after 4 hours and put the computer to sleep after 4 hours
Set-SleepConfiguration -DCStandbyTimeout 240 -DCMonitorTimeout 240

# Only if the Script is executed locally
$PCName = Read-Host "Please enter the computername: "
$UIAUN = Read-Host "Please enter the admin username: "
$UIAPS = Read-Host "Please enter the admin password: "

# Rename the computer to "NewComputerName"
# $PCName = $env:COMPUTERNAME
Rename-Computer -NewName $PCName
Write-Host "Computername changed to $PCName"

# Join Active Directory Domain
# $UIAUN = $env:ADMINUSERNAME
# $UIAPS = $env:ADMIMPASSWORD
$adminUser = "itcares\$UIAUN"
$adminPassword = ConvertTo-SecureString $UIAPS -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($adminUser, $adminPassword)
Add-Computer -DomainName "itcares.local" -Credential $credential
Write-Host "Computer joined to domain"

# Install PSWindowsUpdate Module
Install-PackageProvider -Name NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
# Update Windows to newest version
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -ForceDownload -ForceInstall -IgnoreReboot
Write-Host "Windows updated"

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host "Chocolatey installed"

# Install Chocolatey Packages
$packages = @(
    "googlechrome",
    "firefox",
    "7zip",
    "teamviewer",
    "lanconfig",
    "lanmonitor",
    "microsoft-office-deployment",
    "microsoft-teams",
    "adobereader",
    "paint.net",
    "winscp",
    "jabra-direct",
    "vnc-viewer",
    "winscp.install"
)

$success = @()
$failure = @()

foreach ($package in $packages) {
    try {
        choco install $package -y
        $success += $package
    } catch {
        $failure += $package
    }
}

Write-Host "Chocolatey installed the following packages successfully: $($success -join ', ')"
if ($failure) {
    Write-Host "Chocolatey failed to install the following packages: $($failure -join ', ')" -ForegroundColor Red
}

# Install Windows Executable Files
#Install Lancom Advanced VPN Client
$LVPNDLURL = "https://www.lancom-systems.de/fileadmin/download/LC-VPN-Client-Advanced/LC-Advanced-VPN-Client-Win-614-Rel-x86-64.exe"
$LVPNSETUP = "$env:USERPROFILE\Downloads\LVPNSetup.exe"
Invoke-WebRequest -Uri $LVPNDLURL -OutFile $LVPNSETUP
Start-Process -FilePath $LVPNSETUP -ArgumentList "/silent" -Wait
Write-Host "Lancom Advanced VPN Client installed"

#Install LastPass
$LPURL = "https://download.cloud.lastpass.com/windows_installer/LastPassInstaller.exe"
$LPSETUP = "$env:USERPROFILE\Downloads\LPSetup.exe"
Invoke-WebRequest -Uri $LPURL -OutFile $LPSETUP
Start-Process -FilePath $LPSETUP -ArgumentList "/silent" -Wait
write-host "LastPass installed"

#Install Foxit PDF Reader
$FRURL = "https://www.foxit.com/downloads/latest.html?product=Foxit-Reader&platform=Windows&version=&package_type=&language=German&distID="
$FRSETUP = "$env:USERPROFILE\Downloads\FRSetup.exe"
Invoke-WebRequest -Uri $FRURL -OutFile $FRSETUP
Start-Process -FilePath $FRSETUP -ArgumentList "/silent" -Wait
write-host "Foxit PDF Reader installed"

# Install Windows MSI Files
#Install Unify Office
$UOURL = "https://downloads.ringcentral.com/app/unify/UnifyOffice-x64.msi"
$UOSETUP = "$env:USERPROFILE\Downloads\UOSetup.msi"
Invoke-WebRequest -Uri $UOURL -OutFile $UOSETUP
Start-Process -FilePath $UOSETUP -ArgumentList "/quiet" -Wait
Write-Host "Unify Office installed"

#Clean Downloads Folder
Remove-Item C:\Users\$Env:UserName\Downloads\* -Recurse -Force

# Set the AC power plan to turn off the display after 10 minutes and put the computer to sleep after 10 minutes
Set-SleepConfiguration -ACStandbyTimeout 10 -ACMonitorTimeout 10
# Set the battery power plan to turn off the display after 10 minutes and put the computer to sleep after 10 minutes
Set-SleepConfiguration -DCStandbyTimeout 10 -DCMonitorTimeout 10

# Reboot Computer
Restart-Computer -Force