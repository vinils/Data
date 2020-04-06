::@FOR /f "tokens=*" %i IN ('docker-machine env dckmyhealth1') DO @%i
SET DOCKER_TLS_VERIFY=1
SET DOCKER_HOST=tcp://192.168.15.147:2376
SET DOCKER_CERT_PATH=C:\Users\Administrator\.docker\machine\machines\dckmyhealth1
SET DOCKER_MACHINE_NAME=dckmyhealth1
SET COMPOSE_CONVERT_WINDOWS_PATHS=true

docker exec -it data_db rm /var/opt/mssql/data/sqlbkp/DataContext_latest.bak
docker exec data_db bash /sqlbkp/backup.sh
docker cp data_db:/var/opt/mssql/data/sqlbkp/DataContext_latest.bak "z:\DADOS\BackUp\SQL Backup"

::docker-machine ssh dckmyhealth1 docker exec data_db bash /sqlbkp/backup.sh
::docker-machine ssh dckmyhealth1 docker cp data_db:/var/opt/mssql/data/sqlbkp/DataContext_latest.bak ~/sqlbkp
::z:
::cd "z:\DADOS\BackUp\SQL Backup"
::docker-machine scp dckMyHealth1:~/sqlbkp/DataContext_latest.bak asdf.t