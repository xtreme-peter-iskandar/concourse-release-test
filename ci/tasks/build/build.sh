#!/bin/bash
set -e -x

cd concourse-release

./gradlew clean build

time=$(date +%s)

date=$(date +%Y-%m-%d)

echo -n "$time" > releases/tag
echo -n "release $time" > releases/name

