#!/bin/bash
#
# 
# nist curve 256
# openssl ecparam -name prime256v1 -out prime256v1.pem

#ed25519
openssl req -new -out certificate.csr -key privateKey.key -config openssl-25519.cnf

openssl x509 -req -days 700 -in certificate.csr -signkey privateKey.key -out certificate.crt