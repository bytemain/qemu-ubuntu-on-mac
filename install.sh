if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi
FILE=$(cat ./IMAGE_LOCATION)
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    read -p "Seem $FILE exists. Are you sure to continue? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        ./create-raw-img.sh
    fi
else 
    echo "$FILE does not exist."
    ./create-raw-img.sh
fi
./sign.sh
./configure-nat.sh
./run.sh -cdrom $(cat ./CDROM_LOCATION)
