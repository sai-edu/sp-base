#! /bin/bash -eux

cd $(dirname $0)

NETWORKS=(
    'shared'
)

for network in ${NETWORKS[@]}; do
    ./create-network.sh "sp-${network}"
done