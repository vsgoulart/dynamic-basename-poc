#!/usr/bin/env sh

# start - this block is only necessary for the example
eval echo "$(rm -rf server/${OPERATE_BASENAME})"
eval echo "$(mkdir -p server/${OPERATE_BASENAME})"
eval echo "$(mv build/* server/${OPERATE_BASENAME})"
# end - this block is only necessary for the example

basename_file_path="server/${OPERATE_BASENAME}/basename.js"
echo "window.OPERATE_BASENAME = '${OPERATE_BASENAME}';" > $basename_file_path