#!/bin/sh -l

echo "${1}" | base64 -D > /tmp/template.tpl
result=$(parse-template /tmp/template.tpl)

echo "::set-output name=time::$result"