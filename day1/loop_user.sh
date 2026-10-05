#!/bin/bash


for i in {1..5}
do


	read -p "Enter the user name" user_name

	
	sudo useradd -m $user_name
	echo "User $user_name added successfully"
done


	sudo userdel -m $user_name
