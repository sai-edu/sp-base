#! /bin/bash -eux

NETWORK_NAME=${1}

rs=$(docker network ls -f name=${NETWORK_NAME} | wc -l)
find_count="$((${rs}-1))"

if [ "${find_count}" -gt 0 ]; then
    echo "docker network '${NETWORK_NAME}' already exists"
    exit
fi

echo "create network ${NETWORK_NAME}"
docker network create ${NETWORK_NAME}