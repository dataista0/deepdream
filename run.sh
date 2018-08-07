#!/bin/bash

# Change this variable if you need to use other port than 8080
# The path custom-images/ allows the communication with the
EXTERNAL_PORT=8082
docker run -it -p ${EXTERNAL_PORT}:8080 \
	-v `pwd`/custom-images/:/quick-deep-dream/custom-images/ \
	quick-deep-dream