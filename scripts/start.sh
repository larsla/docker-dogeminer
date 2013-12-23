#!/bin/bash

. /mnt/credentials

/usr/local/bin/minerd --url=$URL --userpass=$USERNAME:$PASSWORD
