#!/usr/bin/env bash

docker build --no-cache -t habi-exec .

docker-compose run habi-exec