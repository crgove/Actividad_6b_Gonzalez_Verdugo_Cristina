directorios=$1

for i in $(cat nombres.txt); do
  
    for x in `seq 1 $directorios`; do
	mkdir -p $i/personal$x
    done 
done 
