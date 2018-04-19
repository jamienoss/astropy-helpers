#!/bin/bash

# Check whethere ci-helpers has already been cloned, if not, clone.
# Assumes working dir is correct

if [ ! -d "ci-helpers" ]; then git clone --depth 1 git://github.com/jamienoss/ci-helpers.git; fi
