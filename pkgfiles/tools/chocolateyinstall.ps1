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
  url           = 'https://hndl.urbackup.org/Server/2.5.32/UrBackup%20Server%202.5.32.exe'
  checksum      = '82A0AAE6DAFFE849F7233847A0803E525DA4A122073A6008D46FFE9AE0C15C1A'
  checksumType  = 'sha256'
  url64bit      = ""
  checksum64    = ''
  checksumType64= ''
  destination   = $toolsDir
  #installDir   = "" # passed when you want to override install directory - requires licensed editions 1.9.0+
}

Install-ChocolateyPackage @packageArgs

