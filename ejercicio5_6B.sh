usuariosLinux=0
usuariosWindows=0
procesosLinux=0
procesosWindows=0
linea=1
maxLineas=`cat listado.txt | wc -l`

while [ $linea -le $maxLineas ]; do
    i=`cat listado.txt | head -${linea} | tail -1`
    numeroProcesos=`echo $i | awk '{print $3}'`
    sistemaOperativo=`echo $i | awk '{print $2}'`
    if [ $sistemaOperativo = "Linux" ]; then
	usuariosLinux=$(($usuariosLinux+1))
	procesosLinux=$(($procesosLinux+$numeroProcesos))
    else
	usuariosWindows=$(($usuariosWindows+1))
	procesosWindows=$(($procesosWindows+$numeroProcesos))
    fi
    linea=$(($linea+1))
done

echo "Linux -> $usuariosLinux $procesosLinux"
echo "Windows -> $usuariosWindows $procesosWindows"
