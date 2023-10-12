#!/bin/bash

modified_filepath="/var/lib/snapd/hostfs/$1"
cat "$modified_filepath"
