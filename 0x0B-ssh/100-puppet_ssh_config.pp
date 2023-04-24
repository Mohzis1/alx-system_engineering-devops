#!/usr/bin/env bash
# Making changes to config files

file { 'config':
  ensure  => present,
  owner   => 'root',
  path    => '/etc/ssh/ssh_config',
  content    => 'IdentityFile ~/.ssh/school\n PasswordAuthentication no\n User ubuntu\n Host 18.209.180.49\n',
}
