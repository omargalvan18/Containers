docker volume create mssql_data

docker run -it --rm\
	-p 1433:1433 \
	--env-file .env \
	-v mssql_data:/var/opt/mssql/ \
	--name sqlserver \
	-d mcr.microsoft.com/mssql/server:2022-latest
