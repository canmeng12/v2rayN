dotnet publish -c Release --self-contained false -o $env:Wap_Project_Directory 

#rm -Force .\$env:Wap_Project_Directory\*.pdb &&
#rm -Force .\$env:Wap_Project_Directory\*.xml

#if ($LASTEXITCODE) { exit $LASTEXITCODE } 

          $env:Solution_Name -c Release --self-contained=false -p:PublishReadyToRun=true -p:PublishSingleFile=true