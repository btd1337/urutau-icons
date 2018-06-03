#!bin/bash

cd ../
DIR0=$(pwd)
EXTENSION=.svg

function main() {
	local sizes=(16 24 32 48 64 128)

	while :
    do
       echo "Pres CTRL+C to stop..."
       sleep 1

       echo -n "Enter the folder name > "
       read directory
			 echo -n "Enter the name icon > "
			 read iconOrigin

			 if [ -d "$directory" ]; then
         cd $directory/
				 echo $(pwd)
				 for i in  "${sizes[@]}"
				 do
					 removeIcon $iconOrigin $i
				 done
				 cd ..
				 echo ""
       else
				 printf "This directory not exists!\n\n"
			 fi
    done
}

function removeIcon() {
		local iconOrigin=$1
		local SIZE=$2

		if [ -e "$SIZE/$iconOrigin$EXTENSION" ] ; then
			rm "$SIZE/$iconOrigin$EXTENSION"
		else
    		echo "The file $SIZE/$iconOrigin$EXTENSION does not exists."
		fi
}

main
