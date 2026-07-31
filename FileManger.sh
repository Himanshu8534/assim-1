#!/bin/bash

cmd=$1   

case $cmd in         

# -------- DIRECTORY --------

addDir)
    mkdir -p "$2/$3"           
    echo "Directory created"     
    ;;

deleteDir)
    rm -rf "$2/$3"          
    echo "Directory deleted"   
    ;;

listFiles)
    find "$2" -type f     
    ;;

listDirs)
    find "$2" -type d
    ;;

listAll)
    ls "$2"
    ;;

# -------- FILE --------

addFile)
    touch "$2"
    echo "File created"
    ;;

addContentToFile)
    echo "$3" >> "$2"
    ;;

addContentToFileBeginning)
    temp="tempfile.txt"
    echo "$3" > $temp
    cat "$2" >> $temp
    mv $temp "$2"
    ;;

showFileBeginningContent)
    head -n "$3" "$2"
    ;;

showFileEndContent)
    tail -n "$3" "$2"
    ;;

showFileContentAtLine)
    awk "NR==$3" "$2"
    ;;

showFileContentForLineRange)
    awk "NR>=$3 && NR<=$4" "$2"
    ;;

moveFile)
    mv "$2" "$3"
    ;;

copyFile)
    cp "$2" "$3"
    ;;

clearFileContent)
    > "$2"
    ;;

deleteFile)
    rm -f "$2"
    ;;

*)
    echo "Invalid command"
    ;;

esac
