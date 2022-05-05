#!/bin/bash
./gradlew assembleDebug
C=$?
find . -type f -name '*.apk' -exec rename 's/-debug//g' {} +
return $C
