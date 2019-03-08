directorio=$1
if [ -d $directorio ]; then
    echo "El directorio existe"
    numeroArchivos=`ls -l $directorio/*.txt | wc -l`
    rm $directorio/*.txt
    echo "Se han eliminado $numeroArchivos archivos"
else
    echo "El directorio no existe"
fi
