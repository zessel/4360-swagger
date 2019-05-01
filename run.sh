#!/bin/bash

docker run -p 127.0.0.1:8181:7777/tcp --rm \
--name flight-info -t flight-info:latest