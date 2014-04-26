Replace Google's jQuery servers
-----


How to run
----
Run `make` to fetch all the data from Google's servers into the "ajax" directory.
Set up whatever web server you like to distribute the files (copy to Apache and
set up a vhost, fiddle with squid/nginx, you can do this: 
`python -m littlehttpserver -p 10999`
Add a firewall rule in order to route traffic from Google to your own server.
If using netfilter/iptables you might want to use the likes of:
`iptables -t nat -A OUTPUT --destination ajax.googleapis.com --protocol tcp --dport 80 -j DNAT --to-destination 127.0.0.1:10999`
