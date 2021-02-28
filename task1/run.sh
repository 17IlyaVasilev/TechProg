# ./run.sh <./run.sh <путь к директории> <расширение> <название папки для бэкапа> <имя архива с бэкапом>

mkdir $3
find $1 -name "*.$2" -exec cp --backup=numbered {} $3 \;
tar -czf $4 $3
echo done
