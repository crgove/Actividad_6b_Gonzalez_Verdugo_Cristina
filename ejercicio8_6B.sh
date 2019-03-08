i=1
while [ $i -lt 255 ]; do
    respuesta=`ping -c 1 192.168.0.$i | grep -c ttl`
    echo "enviando ping a ping 192.168.0.$i"
    if test $respuesta -eq 1 ; then
	echo "Conexion existe: 192.168.0.$i"
    fi

    i=$(($i+1))
done
      echo "el numero total de maquinas en red es $i"
