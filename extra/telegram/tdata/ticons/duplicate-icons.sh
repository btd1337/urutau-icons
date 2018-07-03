#!bin/bash

EXTENSION=.png
FIRST=1

function replaceLink() {
		local iconOrigin=$1
		local iconDestination=$2
		
		if [ -e "$iconDestination$EXTENSION" ] ; then
			echo "The file $iconDestination$EXTENSION does exists."
		else
    		ln -s "$iconOrigin$FIRST$EXTENSION" "$iconDestination$EXTENSION"
    		
		fi
}

function main() {
	
	while :
    do
       echo "Pres CTRL+C to stop..."
       sleep 1
       
	   echo -n "Enter the origin name icon > "
	   read iconOrigin
	
	   for i in {2..2000}
	   do
		   replaceLink $iconOrigin $iconOrigin$i   
	   done
	   echo ""
    done
}

main
