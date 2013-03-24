define sysctl::value($content) {
  concat::fragment { 'sysctl_$name':
    target => '/etc/sysctl.conf',
    content => "${name} = ${content}\n",
    order => 10
  }
}
