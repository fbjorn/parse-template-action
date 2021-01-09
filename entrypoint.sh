#!/bin/sh -l

echo "Hello $1"
time=$(date)
set -x
ls -la /github
ls -la /github/workspace
ls -la /github/home
ls -la /github/workflow
echo "::set-output name=time::$time"