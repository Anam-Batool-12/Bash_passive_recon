#!/bin/bash

domain="$1"

if [[ -z "$domain" ]]; then
    echo "Usage: $0 domain.com"
    exit 1
fi

echo "=== DNS Report for $domain ==="
echo

echo "[A Record]"
dig +short A "$domain"
echo

echo "[AAAA Record]"
dig +short AAAA "$domain"
echo

echo "[MX Records]"
dig +short MX "$domain"
echo

echo "[NS Records]"
dig +short NS "$domain"
echo

echo "[CNAME]"
dig +short CNAME "$domain"
echo

echo "[TXT Records]"
dig +short TXT "$domain"
echo

echo "[SOA]"
dig +short SOA "$domain"
echo

