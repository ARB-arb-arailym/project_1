#!/bin/bash

# 1. Greeting
echo "=== Password Generator ==="

# 2. Request password length
echo "Input the length of password (For example: 12):"
read -r length

# Variable with all available characters (like yours)
chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%"
password=""

# 3. Loop to generate a password of a given length
for (( i=0; i<$length; i++ ))
do
# Select a random character from the chars string
rand_index=$(( RANDOM % ${#chars} ))
password+="${chars:$rand_index:1}"
done

# 4. Output the finished result password
echo "-------------------------------------"
echo "Your generated password:"
echo "$password"
echo "-------------------------------------"