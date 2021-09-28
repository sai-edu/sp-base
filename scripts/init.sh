#! /bin/bash -eux

cd $(dirname $0)

./network/init-networks.sh
cd ../
ROOT=$(pwd)

repos=(
    'sp-api-service git@github.com:sai-edu/sp-api-service.git'
    'sp-view-service git@github.com:sai-edu/sp-view-service.git'
)

cd workspace

for row in "${repos[@]}"; do
    repo=(${row[@]})
    dir=${repo[0]}
    url=${repo[1]}
    if [ -e ${dir} ]; then
        echo "skip ${dir}"
        continue
    fi

    echo "clone ${url}"
    git clone ${url} ${dir}
done
