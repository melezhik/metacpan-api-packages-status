export line=$(story_var line);
#echo $line

if perl -e "$line=~/^(\\S+):\\s/ or $line=~/^$/ or exit 1"; then
  echo skip header line: $line
else
    export package=$(perl -e "$line=~/^(\\S+)\\s/ and print \$1")
    echo -n load meta info for $package ... ' ';
  if curl -s -f https://fastapi.metacpan.org/v1/module/$package -o $test_root_dir/$package.json; then
    echo ok
    echo pasring $test_root_dir/$package.json ...
    cat $test_root_dir/$package.json | perl -MJSON -e '
      $d=decode_json(join "",<STDIN>); 
      print $ENV{package}, " ", $d->{status}'
  else
    echo fail
  fi
  sleep 1;

fi
