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
