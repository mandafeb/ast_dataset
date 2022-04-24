#!/bin/bash

user=$(awk '/ssh/ && /Accepted publickey for/ {print $9}' log)

user_csv="csv-output/user.csv"

ip=$(awk '/ssh/ && /Accepted publickey for/ {print $11}' log)

ip_csv="csv-output/ip.csv"

port=$(awk '/ssh/ && /Accepted publickey for/ {print $13}' log)

port_csv="csv-output/port.csv"

key=$(awk '/ssh/ && /Accepted publickey for/ {print $16}' log)

key_csv="csv-output/key.csv"

if [ ! -d csv-output ]; then

        mkdir csv-output

fi

echo "USER" >> ${user_csv}

echo "${user}" >> ${user_csv}

echo "IP" >> ${ip_csv}

echo "${ip}" >> ${ip_csv}

echo "PORT" >> ${port_csv}

echo "${port}" >> ${port_csv}

echo "KEY" >> ${key_csv}

echo "${key}" >> ${key_csv}

paste -d , ${user_csv} ${ip_csv} ${port_csv} ${key_csv} > csv-output/output.csv

