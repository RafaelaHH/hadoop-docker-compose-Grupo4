# Archivos de configuracion analizados

Los archivos de configuracion utilizados durante la practica pertenecen al repositorio original:

https://github.com/dhzdhd/hadoop-docker-compose

Los principales archivos analizados fueron:

- `docker-compose.yaml`
- `Dockerfile`
- `config/hadoop/core-site.xml`
- `config/hadoop/hdfs-site.xml`
- `config/hadoop/mapred-site.xml`
- `config/hadoop/yarn-site.xml`
- `config/hadoop/hbase-site.xml`
- `config/init`
- `run.ps1`
- `run.sh`

Estos archivos fueron utilizados para comprender la arquitectura, desplegar el entorno y realizar la prueba funcional sobre HDFS.

## Configuracion principal identificada

### Docker Compose

El proyecto define un unico servicio denominado `master`, basado en la imagen:

`ghcr.io/dhzdhd/hadoop-docker-compose:v1.2.5`

Los puertos publicados son:

- 8088
- 9000
- 9870
- 4040

El volumen utilizado es:

`./workdir:/workdir`

### HDFS

HDFS utiliza como direccion principal:

`hdfs://master:9000`

La configuracion establece:

- Directorio NameNode: `/home/hadoop/hdfs/namenode`
- Directorio DataNode: `/home/hadoop/hdfs/datanode`
- Factor de replicacion: `3`
- Tamano de bloque: `33554432` bytes

### MapReduce y YARN

MapReduce utiliza YARN como framework de ejecucion.

YARN tiene habilitado el servicio auxiliar:

`mapreduce_shuffle`

### HBase

HBase se encuentra configurado con:

`hbase.cluster.distributed=true`

## Fuente

Repositorio original:

https://github.com/dhzdhd/hadoop-docker-compose