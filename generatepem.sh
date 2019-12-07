#!/bin/bash
#
# 
# nist curve 256
# openssl ecparam -name prime256v1 -out prime256v1.pem

#ed25519
echo "Generating private key..."
openssl genpkey -algorithm ed25519 -outform PEM -out private_ed25519.pem

# ed25519 public key
echo "Generating public key..."
openssl pkey -in private_ed25519.pem -pubout
