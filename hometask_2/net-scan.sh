#! /bin/bash
for ip in $@;
do

echo $ip $@

#nc or netcat is an utility which can do lots of TCP and UDP related stuff including packet transimission, port scanning etc. To check whether a port is open, the syntax is:
#-v is to print the output in verbose mode 
#-n do not do any DNS or service lookups on any specified addresses, hostnames or ports.
#-z is for scanning the listening service at the specified port.
#-w (timeout) connections which cannot be established or are idle timeout after timeout seconds. The -w flag has no effect on the -l option, i.e. nc will listen forever for a connection, with or without the -w flag. The default is no timeout.
nc -vnz -w 1 $ip 80 2>&1 | grep succeeded
nc -vnz -w 1 $ip 443 2>&1 | grep succeeded

done
