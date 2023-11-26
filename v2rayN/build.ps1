msbuild -v:n -m:1 /p:Configuration="Release" `
	/p:Platform="x64" `
	/p:SolutionDir="..\" `
	/p:OutputPath="v2rayN" `
	/restore `
	v2rayN\v2rayN.csproj
	v2rayUpgrade\v2rayUpgrade.csproj

if ($LASTEXITCODE) { exit $LASTEXITCODE } 


# param (
# 	[Parameter()]
# 	[ValidateSet('Debug', 'Release')]
# 	[string]
# 	$Configuration = 'Release',

# 	[Parameter()]
# 	[ValidateNotNullOrEmpty()]
# 	[string]
# 	$OutputPath = 'release',

# 	[Parameter()]
# 	[bool]
# 	$SelfContained = $True,

# 	[Parameter()]
# 	[bool]
# 	$PublishSingleFile = $True,

# 	[Parameter()]
# 	[bool]
# 	$PublishReadyToRun = $False
# )

# 	dotnet publish `
# 		-c $Configuration `
# 		-r 'win-x64' `
# 		-p:Platform='x64' `
# 		-p:SelfContained=$True `
# 		-p:PublishTrimmed=$False `
# 		-p:PublishSingleFile=$True `
# 		-p:PublishReadyToRun=$False `
# 		-p:PublishReadyToRunShowWarnings=$False `
# 		-p:IncludeNativeLibrariesForSelfExtract=$True `
# 		-o ".\v2rayN\bin\$Configuration" `
# 		'.\v2rayN\v2rayN.csproj'
#cp -Force ".\v2rayN\bin\$Configuration\v2rayN.exe" $OutputPath

# if ( -Not ( Test-Path ".\Redirector\bin\$Configuration" ) ) {
# 	Write-Host
# 	Write-Host 'Building Redirector'

# 	msbuild `
# 		-property:Configuration=$Configuration `
# 		-property:Platform=x64 `
# 		'.\Redirector\Redirector.vcxproj'
# 	if ( -Not $? ) { exit $lastExitCode }
# }
# cp -Force ".\Redirector\bin\$Configuration\nfapi.dll"      "$OutputPath\bin"
# cp -Force ".\Redirector\bin\$Configuration\Redirector.bin" "$OutputPath\bin"

# if ( -Not ( Test-Path ".\RouteHelper\bin\$Configuration" ) ) {
# 	Write-Host
# 	Write-Host 'Building RouteHelper'

# 	msbuild `
# 		-property:Configuration=$Configuration `
# 		-property:Platform=x64 `
# 		'.\RouteHelper\RouteHelper.vcxproj'
# 	if ( -Not $? ) { exit $lastExitCode }
# }
# cp -Force ".\RouteHelper\bin\$Configuration\RouteHelper.bin" "$OutputPath\bin"

# if ( $Configuration.Equals('Release') ) {
# 	rm -Force "$OutputPath\*.pdb"
# 	rm -Force "$OutputPath\*.xml"
# }

Pop-Location
exit 0