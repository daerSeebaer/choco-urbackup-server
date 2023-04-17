$ErrorActionPreference = 'Stop';

$packageName  = 'urbackup-server'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = ''

#Based on Nsis
$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'urbackup-server*'
  fileType      = 'exe'
  silentArgs    = "/S"
  validExitCodes= @(0)
  url           = 'https://hndl.urbackup.org/Server/2.4.12/UrBackup%20Server%202.4.12.exe'
  checksum      = 'C0D5F3AE1D78286AD2B7F7D237D937EE2268F6A92C904BA2D70F5EF7C2EF958C'
  checksumType  = 'sha256'
  url64bit      = ""
  checksum64    = ''
  checksumType64= ''
  destination   = $toolsDir
  #installDir   = "" # passed when you want to override install directory - requires licensed editions 1.9.0+
}

Install-ChocolateyPackage @packageArgs

