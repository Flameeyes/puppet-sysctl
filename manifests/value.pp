define sysctl::value($content) {
  if ! defined( Class["sysctl"] ) {
    class { sysctl: }
  }

  concat::fragment { "sysctl_$name":
    target  => '/etc/sysctl.conf',
    content => "${name} = ${content}\n",
    order   => 10
  }
}
