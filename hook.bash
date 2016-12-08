COUNTER=1
lines=$(config lines)
cpan_mirror=$(config cpan_mirror)

if [ -t 0 ]; then

    # check if metacpan api alive ...
    if ! curl -I -s -f -k https://fastapi.metacpan.org/v1; then
       run_story url-alert url https://fastapi.metacpan.org/v1
       exit 
    fi

    # check if cpan mirror available ...
    if ! curl -I -s -f $cpan_mirror/02packages.details.txt; then
       run_story url-alert url $cpan_mirror/02packages.details.txt
       exit 
    fi
    
    curl -s -f $cpan_mirror/02packages.details.txt 2>&1 | while read line; do  

        (( ++COUNTER ))

        if test $lines && test $COUNTER -gt $lines; then
          set_stdout "counter > $lines, so I am done" 
          break
        else
          run_story package-status n $COUNTER line "'$line'"
        fi

    done

else
    while read -r line ; do

        COUNTER=$[$COUNTER +1]
        
        if test $lines && test $COUNTER -gt $lines; then
          set_stdout "counter > $lines, so I am done" 
          exit
        else
          run_story package-status n $COUNTER line "'$line'"
        fi

    done
fi
