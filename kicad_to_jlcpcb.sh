#!/bin/sh

print_usage() {
    echo "Usage:"
    echo "  kicad_to_jlcpcb.sh /path/to/file"
    echo "          or"
    echo "  kicad_to_jlcpcb.sh --help"
}

print_help() {
    echo "Help:"
    print_usage
}

# argument number check
if [ $# != 1 ]
then
    echo "Invalid number of arguments!"
    print_usage
    exit
fi


# Help checks
if [ "$1" = "--help" ];
then
    print_help
    exit
fi

if [ "$1" = "-h" ];
then
    print_help
    exit
fi


# Change to given directory
cd $1

# TODO: actually finish the functon of this script
for each in ./*.gbr;
do

done
