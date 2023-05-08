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
  url           = 'https://hndl.urbackup.org/Server/2.5.30/UrBackup%20Server%202.5.30.exe'
  checksum      = 'E2EDBA1CBCC458333FCBFF979B6C78EF5746FCBD5E86A207FAB4E8E93464702F'
  checksumType  = 'sha256'
  url64bit      = ""
  checksum64    = ''
  checksumType64= ''
  destination   = $toolsDir
  #installDir   = "" # passed when you want to override install directory - requires licensed editions 1.9.0+
}

Install-ChocolateyPackage @packageArgs

