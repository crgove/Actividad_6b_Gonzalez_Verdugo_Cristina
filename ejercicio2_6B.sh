suma=0
media=0
for i in $(cat precipitaciones.txt | awk '{print $2}'); do 
    suma=`expr $i + $suma`
    contador=`expr $contador + 1`
    done

media=`expr $suma / $contador`
echo "la media de precipitaciones es $media"
    
    
