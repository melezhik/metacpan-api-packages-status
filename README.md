# SYNOPSIS

Checks packages statuses at MetaCPAN. A list of packages is taken from 02packages file.


# INSTALL

    $ sparrow plg install metacpan-api-packages-status

# USAGE

    $ sparrow plg run metacpan-api-packages-status

# DEBUGGING

If you are plugin developer it's probably better download 02packages file and the feed it to the plugin:

    $ curl http://www.cpan.org/modules/02packages.details.txt -o /tmp/02packages.details.txt
    $ head -n 13 /tmp/02packages.details.txt | sparrow plg run metacpan-api-packages-status

# Author

Alexey Melezhik

# See also 

[MetaCPAN API Docs](https://github.com/metacpan/metacpan-api/blob/master/docs/API-docs.md)
