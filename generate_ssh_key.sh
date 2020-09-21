#!/bin/sh
echo "\033[0;34mGenerate keygen for principal account\033[0m"
ssh-keygen -t rsa -b 4096 -C "felipe2610@gmail.com"

echo "\033[0;34mGenerate keygen for bunsan account\033[0m"
ssh-keygen -t rsa -b 4096 -C "felipe@bunsan.io"
