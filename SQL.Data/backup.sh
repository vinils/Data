/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -Q "BACKUP DATABASE [DataContext] TO DISK = N'/var/opt/mssql/data/sqlbkp/DataContext_latest.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10"