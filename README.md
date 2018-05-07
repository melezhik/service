# SYNOPSIS

Manages Linux services.

The list of supported actions:

* start
* stop
* restart
* enable
* disable

# Prerequisites

* For Debian, Ubuntu a `chkconfig` utility should be installed.
* For Alpine linux an `openrc` should be installed.
* For Funtoo an `openrc` should be installed.

# INSTALL

    $ sparrow plg install service


# USAGE


## Manually


    $ sparrow plg run service --param service=nginx --param action=enable
    $ sparrow plg run service --param service=nginx --param action=start
    $ sparrow plg run service --param service=nginx --param action=stop
    $ # so on ...


## Via Sparrowdo

    $ cat sparrowfile

    task_run %(
      task => 'enable nginx service',
      plugin => 'service',
      parameters => %( action => 'enable', service => 'nginx' )
    );
    
    task_run %(
      task => 'start nginx service',
      plugin => 'service',
      parameters => %( action => 'start', service => 'nginx' )
    );
        

# Parameters

## service

A service name.

## action

One of five: `(enable|disable|start|stop|restart)`. Default value is `enable`. Should be set.

# Platforms supported

* Debian
* Ubuntu
* CentOS
* Amazon Linux ( limited API, enable/disable actions are not yet supported )
* Archlinux
* Minoca
* Funtoo

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)


