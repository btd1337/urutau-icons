#!/bin/bash

sizes=(16 24 32 48 64 128 symbolic)
directories=()
home="$(pwd)"

function main() {
    getDirectories

    cd ../   
    for directory in "${directories[@]}"
    do
        for size in "${sizes[@]}"
        do
            fileList $directory $size
        done        
    done
    
}

function getDirectories() {
    local current=''
    cd /usr/share/icons/elementary
    for directory in */
    do
        current="$(echo $directory)"                    # directory name include /
        directory_name=${current::-1}                   # exclude last char '/'
        if [ "$directory_name" != "cursors" ]           # it doesn't include cursor folder
        then 
            directories+=($directory_name)
        fi
    done
    cd $home
}

function fileList() {
    local directory=$1
    local size=$2
    local search_dir=(/usr/share/icons/elementary/$directory/$size/*)    # directory name include /
    
    for entry in "${search_dir[@]}"
    do
      removeIcon ${entry##*/} $directory $size         #${entry##*/} => it's necessary to not include the icon path
      #generateSymlink ${entry##*/} $folder $size
    done
}

function removeIcon() {
    local icon=$1
    local directory=$2
    local size=$3
    rm $directory/$size/$icon
}

function generateSymlink() {
    local icon=$1
    local directory=$2
    local size=$3
    
    cd $folder/$size/
    ln -s /usr/share/icons/elementary/$directory/$size/$icon $icon
    cd ../../
}

main
