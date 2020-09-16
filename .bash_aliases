JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64"
FLUTTER_HOME="$HOME/Documents/dev/flutter/flutter"
DART_HOME="/usr/lib/dart"
GO_HOME="/usr/local/go"
PATH="$PATH:$FLUTTER_HOME/bin:/opt/android-studio/bin:/home/shiishii/Android/Sdk/platform-tools/:${JAVA_HOME}/bin:${DART_HOME}/bin:${GO_HOME}/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias wsk='wsk -i'

function camlink(){
  ELGATO=/dev/video0
  V4LOOP=/dev/video2

  sudo modprobe v4l2loopback devices=1 exclusive_caps=1
  ffmpeg -f v4l2 -input_format yuyv422 -i $ELGATO -pix_fmt yuyv422 -codec copy -f v4l2 $V4LOOP
}
alias android_screenshare="adb shell 'while true; do screenrecord --output-format=h264 -; done' | ffplay -framerate 60 -probesize 32 -sync video -"
