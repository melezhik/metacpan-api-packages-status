if [ -t 0 ]; then
    echo fetching 02packages.details.txt by http not implemented yet
else
    while read -r line ; do
        run_story package-status line "'$line'"
    done
fi
