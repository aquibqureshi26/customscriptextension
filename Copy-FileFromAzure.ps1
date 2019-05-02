
$dest = "C:\downloadpackage"
$source = "https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/windows/amd64/kubectl.exe"
New-Item -Path $dest -ItemType directory
Invoke-WebRequest $source -OutFile "$dest\kubectl.exe"
$env:Path += ";$dest"

#Install-WindowsFeature -Name Microsoft-Windows-Subsystem-Linux

$docker = "https://download.docker.com/win/stable/Docker%20for%20Windows%20Installer.exe"

Invoke-WebRequest $docker -OutFile "$dest\docker.exe"



