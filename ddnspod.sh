#!/bin/sh
# Import ardnspod functions
. /etc/profile

cur_dir=$(dirname "$(readlink -f "$0")")
. ${cur_dir}/ardnspod

# Combine your token ID and token together as follows
arToken="$DDNSToken"

# Web endpoint to be used for querying the public IPv6 address
# Set this to override the default url provided by ardnspod
# arIp6QueryUrl="https://6.ipw.cn"

# Return code when the last record IP is same as current host IP
# Set this to a value other than 0 to distinguish with a successful ddns update
# arErrCodeUnchanged=0

# Place each domain you want to check as follows
# you can have multiple arDdnsCheck blocks

# IPv4:
arDdnsCheck "$DDNSURL" "$DDNSDomain"

# IPv6:
#arDdnsCheck "test.org" "subdomain6" 6
