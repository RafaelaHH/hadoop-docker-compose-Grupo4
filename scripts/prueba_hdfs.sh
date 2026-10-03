echo "Hola Big Data - Grupo 4 - Hadoop en Docker" > /workdir/datos.txt
hdfs dfsadmin -report
hdfs dfs -mkdir -p /prueba_bigdata
hdfs dfs -ls /
hdfs dfs -put -f /workdir/datos.txt /prueba_bigdata/
hdfs dfs -ls /prueba_bigdata
hdfs dfs -cat /prueba_bigdata/datos.txt