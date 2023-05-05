#!/bin/bash

csv_file="Shell_Userlist.csv"

# read csv file line by line
while IFS=, read username password is_admin
do
    # check if user already exists
    if id "$username" >/dev/null 2>&1; then
        echo "User $username already exists"
    else
        # create user
        useradd -m -s /bin/bash "$username"
        echo "$username:$password" | chpasswd
        
        # grant superuser permissions if admin
        if [[ "$is_admin" == "1" ]]; then
            usermod -aG sudo "$username"
        fi
        
        echo "User $username created"
    fi
done < "$csv_file"
