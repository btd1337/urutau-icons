#!bin/bash

DIRO=/usr/share/icons/elementary/apps
DIRD=apps
EXTENSION=.svg

function replaceLink() {
		local iconOrigin=$1
		local iconDestination=$2
		local SIZE=$3
		
		if [ -e "$DIRO/$SIZE/$iconOrigin$EXTENSION" ] ; then
			rm "$DIRD/$SIZE/$iconDestination$EXTENSION"
    		ln -s "$DIRO/$SIZE/$iconOrigin$EXTENSION" "$DIRD/$SIZE/$iconDestination$EXTENSION"
		else
    		echo "The file $DIRO/$SIZE/$iconOrigin$EXTENSION does not exists."
		fi
}

function main() {
	local sizes=(16 24 32 48 64 128 symbolic)
	# local sizes=(64 128 symbolic)  
	
	while :
    do
       echo "Pres CTRL+C to stop..."
       sleep 1
       
	   echo -n "Enter the destination name icon > "
	   read iconDestination
	   echo -n "Enter the origin name icon > "
	   read iconOrigin
	
	   for i in  "${sizes[@]}"
	   do
		   replaceLink $iconOrigin $iconDestination $i	   
	   done
	   echo ""
    done
}

main
