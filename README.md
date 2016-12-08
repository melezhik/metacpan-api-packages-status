# SYNOPSIS

Checks packages statuses against ones listed at 02packages file.


# INSTALL

    $ sparrow plg install metacpan-api-packages-status

# USAGE

    $ sparrow plg run metacpan-api-packages-status

# DEBUGGING

If you are plugin developer it's probably better download 02packages file and the feed it to the plugin:

    $ curl http://www.cpan.org/modules/02packages.details.txt -o 02packages.details.txt
    $ cat 02packages.details.txt | sparrow plg run metacpan-api-packages-status

# Author

Alexey Melezhik

# See also 

[metacpan-api docs](https://github.com/metacpan/metacpan-api)
