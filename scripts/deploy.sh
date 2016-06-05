#!/usr/bin/env bash

mkdocs build --clean
success=$?
if [ $success -ne 0 ]
then
echo "mkdocs build failed"
exit $success
fi

rsync -e "/usr/bin/ssh" -av ./site/  aetherhelp@aetherlog.com:/home/aetherhelp/help.aetherlog.com
success=$?
if [ $success -ne 0 ]
then
echo "rsync to help.aetherlog.com failed"
exit $success
fi
