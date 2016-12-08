if [ -t 0 ]; then
    echo fetching 02packages.details.txt by http not implemented yet
else
    while read -r line ; do
        echo $line
    done
fi
