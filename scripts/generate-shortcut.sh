#!bin/bash

cd ../
DIR0=$(pwd)
EXTENSION=.svg

function generateShortcut() {
		local iconOrigin=$1
		local iconDestination=$2
		local SIZE=$3
		
		if [ -e "$SIZE/$iconOrigin$EXTENSION" ] ; then
			rm "$SIZE/$iconDestination$EXTENSION"
			cd $SIZE/
    		ln -s "$iconOrigin$EXTENSION" "$iconDestination$EXTENSION"
    		cd ../
		else
    		echo "The file $SIZE/$iconOrigin$EXTENSION does not exists."
		fi
}

function main() {
	local sizes=(16 24 32 48 64 128 symbolic) 
	
	while :
    do
       echo "Pres CTRL+C to stop..."
       sleep 1
       
       echo -n "Enter the folder name > "
       read directory
	   echo -n "Enter the destination name icon > "
	   read iconDestination
	   echo -n "Enter the origin name icon > "
	   read iconOrigin
	   
	   cd $directory/
	
	   for i in  "${sizes[@]}"
	   do
		   generateShortcut $iconOrigin $iconDestination $i	   
	   done
	   echo ""
    done
}

main
