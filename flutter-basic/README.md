# my_first_flutter

## Setup

Download Flutter image from this [link](https://flutter.dev/docs/get-started/install/macos) then extract file and move directory to `/usr/local`. 
To able to use `flutter` command you need to set path like this

```
# Flutter
export PATH="$PATH:/usr/local/flutter/bin
```

### Setup VS Code

Install extension `Flutter` and `Dart`.

### Setup Android Studio

Flutter require Android Studio 3.0 or above. Install plugin `Flutter` and `Dart`.

### Creating Project

```
flutter create $PROJECT_NAME
```

### Check validate setup 

From VS Code you can go to **View > Command Palette...** type `doctor` and select **Flutter: Run Flutter Doctor** will show information about setting up.

Or from command line 

```
flutter doctor
```

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, v1.2.1, on Mac OS X 10.14.3 18D109, locale en-TH)
[✓] Android toolchain - develop for Android devices (Android SDK version 28.0.3)
[!] iOS toolchain - develop for iOS devices (Xcode 10.2)
    ✗ libimobiledevice and ideviceinstaller are not installed. To install with Brew, run:
        brew update
        brew install --HEAD usbmuxd
        brew link usbmuxd
        brew install --HEAD libimobiledevice
        brew install ideviceinstaller
    ✗ ios-deploy not installed. To install:
        brew install ios-deployd
[!] Android Studio (version 3.3)
    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
    ✗ Dart plugin not installed; this adds Dart specific functionality.
[✓] VS Code (version 1.33.0)
[!] Connected device
    ! No devices available
```

### Run project

From VS Code go to **Debog > Start Debugging** or via command line 

``` 
flutter devices
```

```
flutter run
```

### For Android

```
# Android home
export ANDROID_HOME=/Users/$(whoami)/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK_HOME=/Users/$(whoami)/Library/Android/sdk/ndk-bundle
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools/emulator:$PATH 
```


### for iOS

Configure the Xcode command-line tools to use the newly-installed version of Xcode by running the following from the command line

```
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
```

Ensure you already agrre license 

```
sudo xcodebuild -license
```

To open iOS simulator

```
open -a Simulator
```

## Create project

## Run project

```
flutter doctor
```

```
flutter run
```

