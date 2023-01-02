# VLC plugin: Windows 10 SMTC integration

Plugin that integrates VLC Media Player with Windows 10 System Media Transport Controls (SMTC)

![example](https://i.imgur.com/md0ProP.png)

## Requirements

- VLC 3.0.x
- Windows 10 Version 1607+

## Installation

1. Get the plugin from [GitHub Releases](https://github.com/spmn/vlc-win10smtc/releases)
2. Copy `libwin10smtc_plugin.dll` to `<path-to-VLC>\plugins\misc`
    - *Note:* DLL architecture must match vlc.exe architecture (eg: x86 plugin is not compatible with x64 VLC)
3. Restart VLC and navigate to Advanced Preferences -> Interface -> Control Interfaces
4. Check `Windows 10 SMTC integration` and hit Save

## Build instructions

Official VLC build instructions recommend mingw. However, mingw doesn't support C++/WinRT, so for this plugin MSVC is used instead. In order to build this plugin you'll need: Visual Studio, Windows 10 SDK and VLC SDK:

1. Obtain VLC SDK. You can use the `download-vlc.ps1` script, which will download the latest version into `lib/vlc`.
2. Open a terminal with Visual Studio environment variables (`vcvars64.bat`).
3. Use CMake to build the project:

```
mkdir build && cd build
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DVLC_PATH=../lib/vlc ..
ninja
```

4. The built library will be in `build/src`.
