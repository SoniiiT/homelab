
# Create a Folder to Store the Script
$scriptFolderPath = "C:\Windows\Scripts"
New-Item -ItemType Directory -Path $scriptFolderPath -Force | Out-Null

# Register the script to be executed from the context menu
$regPath = "HKCU:\Software\Classes\Applications\powershell.exe\shell\Add Chocolatey Package\Command"
New-Item -Path $regPath -Force | Out-Null
Set-ItemProperty -Path $regPath -Name "(Default)" -Value "powershell.exe -ExecutionPolicy Bypass -File 'C:\Windows\Scripts\CreateAChocolateyPackage.ps1' `"%1`""
Set-ItemProperty -Path $regPath -Name "Icon" -Value "powershell.exe"
Set-ItemProperty -Path $regPath -Name "Position" -Value "Bottom"

# Define the path to the new script
$scriptPath = Join-Path -Path $scriptFolderPath -ChildPath "CreateAChocolateyPackage.ps1"

# Define the content of the new script
$scriptContent = @"
param (
    [Parameter(Mandatory=$true)]
    [string]$ApplicationPath
)

function ConvertTo-ChocolateyPackage {
    param (
        [string]$path
    )

    # TODO: Add code to convert $path into a Chocolatey package
    Write-Host "Converting $path into a Chocolatey package..."
}

# Call the function with the provided file path
ConvertTo-ChocolateyPackage -path $ApplicationPath
"@

# Write the content to the new script
param (
    [Parameter(Mandatory=$true)]
    [string]$ApplicationPath
)

# Analyze the application
$ApplicationName = (Get-Item $ApplicationPath).Name
$ApplicationVersion = (Get-Item $ApplicationPath).VersionInfo.ProductVersion

# Create the package
$PackageName = $ApplicationName + '.nupkg'
$PackagePath = Join-Path $PSScriptRoot $PackageName

New-Item -ItemType Directory -Path "$PSScriptRoot\tools" -Force | Out-Null
New-Item -ItemType Directory -Path "$PSScriptRoot\lib" -Force | Out-Null

$PackageArgs = @{
    'PackageName' = $PackageName
    'Version' = $ApplicationVersion
    'Author' = 'Your Name Here'
    'Maintainer' = 'Your Email Here'
    'Summary' = 'Package Summary Here'
    'Description' = 'Package Description Here'
    'Tags' = 'Tag1','Tag2'
    'ReleaseNotes' = 'Release Notes Here'
    'LicenseUrl' = 'License URL Here'
    'ProjectUrl' = 'Project URL Here'
    'PackageSource' = "$PSScriptRoot"
    'FileFullPath' = $ApplicationPath
    'ChecksumType' = 'sha256'
}

New-ChocolateyPackage @PackageArgs