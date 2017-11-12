#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class test_array (
  $domains = '1.org 2.org 3.org',
  $nameservers = [ '192.168.0.1', '192.168.1.1', '10.126.0.1' ],
) {
  file { '/tmp/test_array_file':
    ensure   => 'file',
    owner    => '0',
    group    => '0',
    mode     => '0644',
    selrange => 's0',
    selrole  => 'object_r',
    seltype  => 'user_tmp_t',
    seluser  => 'unconfined_u',
    content  => template('test_array/test_array_file.erb')
  }
}
