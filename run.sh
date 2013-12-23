#!/bin/bash

docker images |grep -oE "^dogeminer" >/dev/null
if [ $? -gt 0 ]; then
	docker build -t dogeminer .
fi

docker run -i -t dogeminer -v .:/mnt:ro bash /mnt/scripts/start.sh
