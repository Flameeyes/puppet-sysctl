Sysctl variables handling for Puppet
========================================================

Overview
--------

This module provides cross-distribution support for handling
sysctl variables.
It doesn't only set the variables in the appropriate config
file, but also makes sure that they're applied at runtime.

Usage example
-------------

Set the sysctl variable `net.ipv4.conf.all.accept_redirects` to 0:

    include sysctl
    sysctl::value { "net.ipv4.conf.all.accept_redirects": content => "0" }

If you want to manage your sysctl settings exclusively through Puppet, you
need to declare the class instead of using the `include` shortcut to set
the `exclusive` class parameter:

    class {"sysctl": exclusive => true }
    sysctl::value { "net.ipv4.conf.all.accept_redirects": content => "0" }

This will unset all custom sysctl variables set by the user/distribution
first and only those defined through Puppet will remain to be actually
applied.
