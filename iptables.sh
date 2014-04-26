#!/bin/sh
# Example of an iptables script to redirect.

/sbin/iptables -t nat -A OUTPUT --destination ajax.googleapis.com/24 --protocol tcp --dport 80 -j DNAT --to-destination 127.0.0.1:10999
