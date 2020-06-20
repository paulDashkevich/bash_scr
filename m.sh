#!/bin/bash
if
find /var/log/ -name scan.sh -exec {} \; > otchet.txt &&
mailx root@localhost < otchet.txt &&
cat otchet.txt


then
exit 0
else
echo "file not found"
fi
