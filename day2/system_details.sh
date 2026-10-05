#!/bin/bash
<< usage
-Create functions for system information
- RAM used
- Storage uses
- Top processes
usage

check_memory() {
	free -h | awk 'NR==2 {print $7}'
}

check_storage() {
	df -h | awk 'NR==7 {print $2 }'

}
check_cpu() {
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$3}'
}


show_details() {
	echo "========System Details======="
	echo "Available memory"
	check_memory
	echo "Available Storage"
	check_storage
	echo "Most memory intensive process"
	check_cpu

}
show_details


