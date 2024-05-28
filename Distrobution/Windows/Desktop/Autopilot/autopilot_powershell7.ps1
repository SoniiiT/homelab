New-Item -ItemType "directory" -Path "C:\Downloads" -Force
$url = "https://github.com/PowerShell/PowerShell/releases/latest/download/PowerShell-{0}-win-x64.msi" -f ((Invoke-WebRequest -Uri "https://github.com/PowerShell/PowerShell/releases/latest").Content | Select-String -Pattern 'PowerShell-(.*?)-win-x64.msi').Matches.Groups[1].Value
$output = "C:\Downloads\msiexec.msi"
Start-BitsTransfer -Source $url -Destination $output
Start-Process -FilePath $output -Wait