echo  "========REPORTE DEL SISTEMA ========"
echo "Fecha y  hora actual: $(date)"
echo "Nombre del host: $(hostname)"
echo "Usuarios conectados: $(who | wc -l)"
echo "Espacio libre en el disco principal:"
df -h / | awk 'NR==2 {print " Libre: "$4" / Total: "$2}'
echo "Memoria RAM disponible:"
free -h | awk 'NR==2 {print" Libre: "$4" / Total: "$2}'
echo "Contenedores Docker activos: $(docker ps -q | wc -l)"
echo "====================================="

