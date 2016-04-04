### Install
- Python and pip: https://wiki.python.org/moin/BeginnersGuide/Download
- Install Java SDK if not installed and configure JAVA_HOME environment variable

- Android SDK
  - Download SDK tools: http://developer.android.com/sdk/index.html#Other
  - Make sure that ANDROID_HOME env variable points to your Android SDK root. e.g. `export ANDROID_HOME=~/android_sdk`
  - Make sure adb is in PATH env variable. e.g. `export PATH=$ANDROID_HOME/platform-tools:$PATH`
  - Install platform and buildtools:
  `echo yes | $ANDROID_HOME/tools/android update sdk -u -a -t 1,2,3,4`
  - Install all android sdk files if needed (can take some time to download)
  `echo yes | $ANDROID_HOME/tools/android update sdk --no-ui`

- Appium (OS X)
  - Install dependencies (OS X):
    - Install Homebrew
    - Install coreutils: `brew install coreutils` and add coreutils to path
    - Install python & pip if not installed: `brew install python`
    - Install virtualenv (optional): `pip install virtualenv`
    - Install Node.js: `brew install node`   
    - Install Appium: `npm install -g appium`

- Appium (Linux Ubuntu etc.)
    - Install Linux Brew
      - `sudo apt-get install build-essential curl git m4 python-setuptools ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev`
      - `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"`
    - Add to your .bashrc or .zshrc:
      - `export PATH="$HOME/.linuxbrew/bin:$PATH"`
      - `export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"`
      - `export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"`
    - Install Node.js:
      - `brew update`
      - `brew install node` (this step can take ~10 min)
      - `brew link node`
    - Install appium:
      - `npm install -g appium`
      - `npm install wd`
    - Install virtualenv (optional): `[sudo] pip install virtualenv`

- Verify that Appium is installed correctly by executing command: `appium-doctor` output should be something like:
   Running Android Checks
   ✔ ANDROID_HOME is set to "/home/tatutahv/android-sdk-linux"
   ✔ JAVA_HOME is set to "/usr/lib/jvm/java-7-openjdk-amd64."
   ✔ ADB exists at /home/tatutahv/android-sdk-linux/platform-tools/adb
   ✔ Android exists at /home/tatutahv/android-sdk-linux/tools/android
   ✔ Emulator exists at /home/tatutahv/android-sdk-linux/tools/emulator
   ✔ Android Checks were successful.

   ✔ All Checks were successful

- Robot framework dependecies
    - use virtualenv (optional): https://virtualenv.pypa.io/en/latest/userguide.html
    - `pip install -r requirements.txt`
