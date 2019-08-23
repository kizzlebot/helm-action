#!/usr/bin/env bash

set -o errexit
set -o pipefail


# REPOSITORY="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"

# CHART_NAME=$1
# if [[ -z $1 ]] ; then
#   echo "Chart name parameter needed!" && exit 1;
# fi

# CHART=$2
# if [[ -z $2 ]] ; then
#   echo "Chart path parameter needed!" && exit 1;
# fi

# URL=$3
# if [[ -z $3 ]] ; then
#   echo "Helm repository URL parameter needed!" && exit 1;
# fi

# BUCKET_URL=$4
# if [[ -z $4 ]] ; then
#   echo "Google cloud bucket url parameter needed!" && exit 1;
# fi



# init() {
#     helm init --client-only
#     helm repo add ${CHART_NAME} ${URL}
#     helm repo update
# }

# publish(){
#   mkdir -p repository
#   cd repository
#   rm -rf * # remove old content

#   helm dep build ../${CHART}
#   helm package ../${CHART}

#   # upload packaged charts to google bucket
#   gsutil cp * ${BUCKET_URL}

#   # download the existing repo's index.yaml so that we can merge it later
#   echo "downloading existing index.yaml"
#   gsutil cp "${BUCKET_URL}/index.yaml" index.yaml

#   # merge indexes
#   helm repo index --url ${URL} --merge index.yaml .

#   echo "uploading updated index from $PWD"
#   gsutil cp index.yaml "${BUCKET_URL}/index.yaml"
#   cd ../
# }

# deploy() {
#   helm repo update
#   helm upgrade enotarylog-fe enotarylog/enotarylog-fe --install --force --wait \
#       --namespace $CLUSTER_NAME \
#       --set image.repository="gcr.io/${GOOGLE_PROJECT_ID}/enotarylog-fe" \
#       --set image.tag="latest"
# }


# helm lint ${CHART}
# init
# publish
gsutil