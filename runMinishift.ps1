Remove-Item –path c:\minishift\minishift-developer -Force –recurse 

$dir = "C:\minishift"
if(!(Test-Path -Path $dir )){
    New-Item -ItemType directory -Path $dir
    Write-Host "New folder created"
}
else
{
  Write-Host "Folder already exists"
}


git clone https://github.com/srilakshmichennu/minishift-developer.git

cd C:\minishift\minishift-developer

.\minishift.exe start --vm-driver=virtualbox


     
