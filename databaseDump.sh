for i in `cat tableNames.txt`; do
	pg_dump --table="$i" --data-only --column-inserts projectdb >> testdump.sql
done
