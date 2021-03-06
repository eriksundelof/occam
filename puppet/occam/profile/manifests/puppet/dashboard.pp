###############################################################################
##                                                                           ##
## The MIT License (MIT)                                                     ##
##                                                                           ##
## Copyright (c) 2014 AT&T Inc.                                              ##
##                                                                           ##
## Permission is hereby granted, free of charge, to any person obtaining     ##
## a copy of this software and associated documentation files                ##
## (the "Software"), to deal in the Software without restriction, including  ##
## without limitation the rights to use, copy, modify, merge, publish,       ##
## distribute, sublicense, and/or sell copies of the Software, and to permit ##
## persons to whom the Software is furnished to do so, subject to the        ##
## conditions as detailed in the file LICENSE.                               ##
##                                                                           ##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS   ##
## OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF                ##
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.    ##
## IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY      ##
## CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT ##
## OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR  ##
## THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                ##
##                                                                           ##
###############################################################################
# == Class: profile::puppet::dashboard
#
# Configures puppet dashboard.
#
# === Parameters
# [db_pass]
#   database password
#
# [root_db_pass]
#   root user database password
#
# === Examples
# class {'profile::puppet::dashboard:
#   db_pass        = '1Cu(Wys)2$93nh',
#   root_db_pass   = 'a-kneet-wun-cuj-r',
# }
#
# === Authors
#
# James Kyle <james@jameskyle.org>
#
# === Copyright
#
# Copyright 2013 AT&T Foundry, unless otherwise noted.
class profile::puppet::dashboard (
  $db_pass        = '1Cu(Wys)2$93nh',
  $root_db_pass   =  'a-kneet-wun-cuj-r',
){

  class {'::dashboard':
    dashboard_password => $db_pass
  }
}
