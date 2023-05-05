#!/bin/bash

user="your-username"

connections=$(grep -c "Accepted publickey for $user" /var/log/auth.log)

date=$(date "+%d-%m-%Y-%H:%M")
filename="number_connection-$date"
echo $connections > "$filename"

tar -czf "$filename.tar" "$filename"
rm "$filename"

mkdir -p ~/Job8/Backup
mv "$filename.tar" ~/Job8/Backup/
