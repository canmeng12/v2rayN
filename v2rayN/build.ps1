Write-Host 'Building'

dotnet publish `
    -c Release `
    --self-contained false `
    -o $env:Wap_Project_Directory  &&

#rm -Force .\$env:Wap_Project_Directory\*.pdb &&
#rm -Force .\$env:Wap_Project_Directory\*.xml

if ($LASTEXITCODE) { exit $LASTEXITCODE } 

Write-Host 'Build done'