# SYNOPSIS

Checks packages statuses at MetaCPAN. A list of packages is taken from 02packages file.


# INSTALL

    $ sparrow plg install metacpan-api-packages-status

# USAGE

    $ sparrow plg run metacpan-api-packages-status

# DEBUGGING

If you are plugin developer it's probably better download 02packages file and the feed it to the plugin:

    $ curl http://www.cpan.org/modules/02packages.details.txt -o /tmp/02packages.details.txt
    $ cat /tmp/02packages.details.txt | sparrow plg run metacpan-api-packages-status --param lines=20

# Parameters

## lines

Process no more $lines of 02packages file. Useful when debugging. By default $lines is unset.

## cpan_mirror

A CPAN mirror URL to download 02packages file.  Default value is `http://www.cpan.org/modules`

# Author

Alexey Melezhik

# See also 

[MetaCPAN API Docs](https://github.com/metacpan/metacpan-api/blob/master/docs/API-docs.md)
