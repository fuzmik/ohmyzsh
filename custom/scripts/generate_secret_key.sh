#!/bin/bash

openssl rand -base64 42 | tr -dc A-Za-z0-9 | cut -c -32 | tr -d '\n'

exit 0
