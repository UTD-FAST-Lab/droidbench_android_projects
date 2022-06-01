#!/bin/bash
./gradlew assembleDebug
C=$?
find . -type f -name '*.apk' -exec rename -f 's/-debug//g' {} +
exit $C
