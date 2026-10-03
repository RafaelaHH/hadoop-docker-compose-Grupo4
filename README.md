# hadoop-docker-compose-Grupo4

**Integrantes:** Julia Rafaela Herrera Heiden, Rafaela Kiara Marta Puente, Alejandro Vidal

---

## 1. Repositorio seleccionado

- **Nombre:** hadoop-docker-compose
- **URL:** https://github.com/dhzdhd/hadoop-docker-compose
- **Autor:** dhzdhd
- **Descripción:** Entorno Big Data contenerizado con Docker Compose que integra Hadoop, HDFS, Spark, Hive, HBase y Pig, con scripts de despliegue para Windows y Linux.

## 2. Información general

## 3. Tecnologías

## 4. Arquitectura

## 5. Instalación y ejecución (Windows, PowerShell)

**Requisitos:** Docker Desktop en ejecución y Git.

1. **Clonar**
   ```powershell
   git clone https://github.com/dhzdhd/hadoop-docker-compose.git
   ```
2. **Entrar**
   ```powershell
   cd hadoop-docker-compose
   ```
3. **Ver archivos**
   ```powershell
   dir
   ```
4. **Analizar el compose**
   ```powershell
   type docker-compose.yaml
   ```
5. **Levantar y entrar al contenedor**
   ```powershell
   docker compose up -d
   docker exec -it master /bin/bash
   ```
   Dentro del contenedor:
   ```bash
   init
   ```
6. **Desde OTRA terminal**
   ```powershell
   docker ps
   ```

Evidencias en [`evidencias/`](evidencias/).

## 6. Prueba funcional HDFS

**Script:** [`scripts/prueba_hdfs.sh`](scripts/prueba_hdfs.sh). Se ejecuta dentro del contenedor.

- `hdfs dfsadmin -report`: Estado de HDFS
- `hdfs dfs -mkdir -p /prueba_bigdata`: Crear directorio
- `hdfs dfs -put /workdir/datos.txt /prueba_bigdata/`: Listar
- `hdfs dfs -cat /prueba_bigdata/datos.txt`: Leer contenido

**Resultado:** el archivo `datos.txt` se almacenó en HDFS y su contenido se leyó correctamente (`Hola Big Data - Grupo 4 - Hadoop en Docker`). El archivo se creó en `/workdir` dentro del contenedor y apareció en la carpeta `workdir` del host, lo que confirma el volumen compartido. Las capturas están en un PDF de evidencias.

## 7. Comparación con docker-hadoop (Big Data Europe)

## 8. Estructura del repositorio

```
hadoop-docker-compose-Grupo4/
├── README.md
├── docker-compose.yaml
├── Dockerfile
├── scripts/
│   ├── prueba_hdfs.sh
│   ├── run.sh
│   └── run.ps1
├── diagrama/
│   └── arquitectura.png
└── evidencias/
    ├── datos.txt
    └── Evidencias-CapturasDePantalla.pdf
```

## 9. Conclusiones
