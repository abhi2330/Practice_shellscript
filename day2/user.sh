#!/bin/bash
<< usage
- take user name as input
- take password as input
- check if user already exists
- create the user
usage

# Function definitio

create_user() {
read -p "enter the username" username
read -p "enter the password" password

if id "$username" &>/dev/null; then
	echo "the user $username exists."
	exit 1
else 
	echo " the user $username does not exists."
fi


sudo useradd -m $username -p $password

echo "user $username added sucussefully"
}

create_user  # Call the function 
