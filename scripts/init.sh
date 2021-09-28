#! /bin/bash -eux

cd $(dirname $0)

./network/init-networks.sh
cd ../
ROOT=$(pwd)

repos=(
    'sp-view-service git@github.com:sai-edu/sp-view-service.git'
)

cd workspace

