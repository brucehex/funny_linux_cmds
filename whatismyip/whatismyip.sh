#!/bin/bash

curl -s http://whatismyip.org/ | grep -oP '(\d{1,3}\.){3}\d+'
