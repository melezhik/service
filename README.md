# SYNOSPIS

Manages Linux services.

* start
* stop
* enable
* disable

# Prerequisites

For Debian, Ubuntu a `chkconfig` utility should be installed.

# INSTALL

    $ sparrow plg install service


# USAGE


## Manually


    $ sparrow plg run service --param action=start
    $ sparrow plg run service --param action=enable
    $ # so on ...


## Via Sparrowdo


    $ cat sparrowfile


    use v6;
    
    use Sparrowdo;

    task_run %(
      task => 'enable nginx service',
      plugin => 'service',
      parameters => %( action => 'enable' )
    );
    

# Platforms supported

* Debian
* Ubuntu
* CentOS

# Author

[Alexey Melzhik](mailto:melezhik@gmail.com)


