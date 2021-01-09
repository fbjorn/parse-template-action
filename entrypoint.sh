#!/bin/sh -l

echo "Hello $1"
time=$(date)
ls -la /github/workspace
echo "::set-output name=time::$time"