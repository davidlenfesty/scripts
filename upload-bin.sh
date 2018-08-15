# Catch help
if [ "$1" = "--help" || "$1" = "-h" ];
then
    echo "Usage:";
    echo "upload-bin.sh device-type port filename"
    exit;
fi

# Catch wrong number of arguments
if [ $# != 3 ];
then
    echo "Wrong number of arguments";
    exit;
fi

avrdude -p "$1" -P $2 -c wiring -U flash:w:"$3"
