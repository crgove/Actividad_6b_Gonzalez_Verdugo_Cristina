arrayDias=(lunes martes miercoles jueves viernes sabado domingo)
linea=1
maxlineas=`cat precipitaciones.txt | wc -l`

while [ $linea -le $maxlineas ]; do
    i=`cat precipitaciones.txt | head -${linea} | tail -1`
    columna=`echo $i | awk '{print $2}'`
    if [ $columna -eq 0 ]; then
	dia=`echo $i | awk '{print $1}'`
	if [ $dia -gt 7 ]; then
	    dia=$(($dia-7))
	fi
	echo ${arrayDias[$dia-1]}
    fi    
    linea=$(($linea+1))
done

		 
    
