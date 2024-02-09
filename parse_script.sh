#!/bin/bash

read -p "Enter your address: " input_string
hex_part=${input_string#*x}
lowercase_hex=$(echo "$hex_part" | tr 'A-F' 'a-f')
final_hash=$(echo "$lowercase_hex" | sed 's/^0*//')

echo "Processed address: 0x$final_hash"
