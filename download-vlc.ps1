function downloadSdk() {
  mkdir lib -Force;
  iwr "https://download.videolan.org/pub/videolan/vlc/$vlcVersion/win64/vlc-$vlcVersion-win64.7z" -OutFile lib/vlc.7z;
  7z x lib/vlc.7z -r -olib/extracted sdk;
  mv lib/extracted/*/sdk lib/vlc;
  echo $vlcVersion > lib/.vlcversion;
  rm lib/vlc.7z && rm lib/extracted -Recurse;
}

$ErrorActionPreference = "Stop"
$vlcVersion = curl "http://update.videolan.org/vlc/status" | head -n 1;

if ((-not (Test-Path lib/.vlcversion)) -or ((Get-Content lib/.vlcversion) -ne $vlcVersion)) {
    Write-Output "Downloading latest vlc version: $vlcVersion"
    downloadSdk
} else {
    Write-Output "Found up-to-date vlc version: $vlcVersion"
}
