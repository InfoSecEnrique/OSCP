for i in {1..254}; do ping -c 1 -W 1 10.11.1.$i | grep 'from' | cut -d " " -f 4 | grep ':' | cut -d ":" -f 1 >> pinglist.txt; done
