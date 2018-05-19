#!/bin/bash
echo "Please, run this script in the /scripts folder!"
sizes=(16 24 32 48 64 128 symbolic)
directories=()
cd ../
home="$(pwd)"   # into /scripts folder


function main() {
    getDirectories
    
    for directory in "${directories[@]}"
    do
        # check if a directory doesn't exist:
        if [ ! -d "$directory" ]; then
          mkdir $directory
        fi
        for size in "${sizes[@]}"
        do                     
            fileList $directory $size
       done        
   done
    
}

function getDirectories() {                             # get all directories in the elementary icon folder
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
    local search_file=( $(find /usr/share/icons/elementary/$directory/$size/) )    
    if [ $search_file ]
    then
        for entry in "${search_file[@]}"
        do  
            if [ "${entry##*/}" != "" ]                          # block blank strings
            then
                removeIcon ${entry##*/} $directory $size         #${entry##*/} => it's necessary to not include the icon path
                generateSymlink ${entry##*/} $directory $size           
            fi
        done
    fi       
}

function removeIcon() {
    local icon=$1
    local directory=$2
    local size=$3
    rm -rf $directory/$size/$icon
}

function generateSymlink() {
    local icon=$1
    local directory=$2
    local size=$3
    
    cd $directory/
    if [ ! -d "$size" ]; then
      mkdir $size
    fi
    cd $size/
    ln -sf /usr/share/icons/elementary/$directory/$size/$icon $icon
    cd $home
}

main
