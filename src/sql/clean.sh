vartest=`psql -X -U postgres -h localhost -t -c "select datname from pg_database where datistemplate = false and datname LIKE 'ccdd%' and datname <> (select datname from pg_database where datistemplate = false and datname like 'ccdd%' ORDER BY datname DESC LIMIT 1);"`
echo $vartest

for database in $vartest
do
  echo $database
  psql -X -U postgres -h localhost -t -c "SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = '$database'"
  dropdb -U postgres -h localhost $database
done
