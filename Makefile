all:
	./download_jqueries.sh

iptables:
	./iptables.sh

run:
	./server.sh

clean:
	rm -rf ./ajax
