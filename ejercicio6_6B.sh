directorio=$1

numeroArchivos=`ls -l $directorio/*.txt | wc -l`
rm $directorio/*.txt
echo "Se han borrado $numeroArchivos ficheros" 
