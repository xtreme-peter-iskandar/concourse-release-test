#!/bin/bash

set -e -x

cf login -a http://api.run.pivotal.io -u $CF_USERNAME -p $CF_PASSWORD -o $CF_ORG -s $CF_SPACE

cf push release-test git -p gh-release/release-test-0.0.1-SNAPSHOT.jar