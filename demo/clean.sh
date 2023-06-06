#!/bin/bash

rm Alice/csr.conf \
   Alice/bundle-cert-alice.pem \
   Alice/private-key-alice.pem \
   Alice/public-key-alice.pem \
   Alice/server-alice.req \
   Alice/alice-secret-key.asc \
   Alice/message.txt.asc \
   Alice/server-certificate-alice.pem \
   Alice/alice-secret-gpg-key.asc \
   Alice/firma.sha256 \
   Alice/message.txt \
   Alice/message.enc

rm Bob/message.enc \
   Bob/message.txt \
   Bob/bob-secret-gpg-key.asc \
   Bob/message.txt.asc \
   Bob/firma.sha256 \
   Bob/public-key-alice.pem

rm hash/file1.txt hash/file2.txt

### clean certificate
rm Alice/server-certificate-alice.pem \
   Alice/bundle-cert-alice.pem \
   ca/newcerts/01.pem \
   ca/serial.old \
   ca/index.txt.attr \
   ca/index.txt.old

:> ca/index.txt

echo '01' > ca/serial
### end clean certificate

## delete gpg keys and secret keys

gpg --delete-secret-keys Bob Alice
gpg --delete-keys Alice Bob

