$ErrorActionPreference = 'Stop';

$packageName  = 'urbackup-server'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#Based on Nsis
$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'urbackup-server*'
  fileType      = 'exe'
  silentArgs    = "/S"
  validExitCodes= @(0)
  url           = 'https://hndl.urbackup.org/Server/2.5.31/UrBackup%20Server%202.5.31.exe'
  checksum      = '949694AF979BA06731D0361D7F567AB89676E400309922572DEAD1A13F6581FD'
  checksumType  = 'sha256'
  url64bit      = ""
  checksum64    = ''
  checksumType64= ''
  destination   = $toolsDir
  #installDir   = "" # passed when you want to override install directory - requires licensed editions 1.9.0+
}

Install-ChocolateyPackage @packageArgs

