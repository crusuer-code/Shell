#!/usr/bin/env bash

#\\- Simple password analyzer -//

#Specify the file
file=/path/of/the/list

#Checks if the password list exists, if not bye bye.
[ -f "$file" ] &&  echo "[+] file found" || {  echo "[!] error: no such file "; exit 1; }

file_check() {

#Checking file size and how many passwords are there.

passwd_count=$(cat "$file" | wc -l) 
size=$(stat -c%s "$file"| awk '{print $1/1024 " KB"}')

echo " [+] Passwords available: $passwd_count"
echo " [%] Size of the file: $size "
echo
}

check_length() {

#Checking for special characters.

for passwd in $( cat "$file" ); do
    echo "Password: $passwd "
    echo "Length: ${#passwd}"
    echo "Special Characters:"
    echo -n " {#}->"; echo "$passwd" | grep -o '#' | wc -l
    echo -n " {!}->"; echo "$passwd" | grep -o '!' | wc -l
    echo -n " {*}->"; echo "$passwd" | grep -o '*' | wc -l
    echo -n " {?}->"; echo "$passwd" | grep -o '?' | wc -l
   echo -n  " {@}->"; echo "$passwd" | grep -o '@' | wc -l
    echo "------------------"
done
}

file_check
sleep 2
check_length
