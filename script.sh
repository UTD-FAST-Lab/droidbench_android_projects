for d in */ ; do
    echo "$d"
    cd $d
    ./gradlew assembleDebug
    cd ..
done
