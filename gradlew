#!/bin/sh
#
# Gradle wrapper script
#

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

OS="`uname`"
case "$OS" in
  CYGWIN*|MINGW*)
    absPath() { echo "$(cd "$1" && pwd -W)"; }
    ;;
  *)
    absPath() { echo "$(cd "$1" && pwd)"; }
    ;;
esac

DIRNAME=`dirname "$0"`
APP_HOME=`absPath "$DIRNAME"`

GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""

exec "$APP_HOME/gradlew" "$@"
