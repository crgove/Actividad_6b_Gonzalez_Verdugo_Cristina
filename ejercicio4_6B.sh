maxlineas=`cat numeros.txt | wc -l`
linea=1

while [ $linea -le $maxlineas ]; do
    i=`cat numeros.txt | head -${linea} | tail -1`
    resto=`expr $i % 2`
    if [ $resto -eq 0 ]; then
	echo "$i es par"
	totalPares=$(($totalPares + 1))
    else
	echo "$i no es par"
	totalImpares=$(($totalImpares + 1))
    fi
    linea=$(($linea + 1))
done

echo "El total de numeros pares es $totalPares"
echo "El total de numeros impares es $totalImpares"

