#! /bin/bash

domain="$1"

if [[ -z "$domain" ]]; then
 echo "Usage: $0 domain.com"
 
fi


whois "$domain"
