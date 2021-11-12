#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
GDCclient=''

dataDir="${SCRIPT_DIR}/../data"
lobularDataDir="${dataDir}/lobular"
lobularManifestFile="${dataDir}/lobular_manifest.txt"
infiltratingDataDir="${dataDir}/infiltrating"
infiltratingManifestFile="${dataDir}/infiltrating_manifest.txt"


unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
       GDCclient="${SCRIPT_DIR}/../bin/gdc-client_linux"
elif [[ "$unamestr" == 'Darwin' ]]; then
       GDCclient="${SCRIPT_DIR}/../bin/gdc-client_darwin"
fi

function download_via_manifest() {
    echo "$1"
    echo "$2"
    mkdir -p "$2"
    ${GDCclient} download -m "$1" -d "$2"
    find "$2" -type f -iname "*.gz" -exec gunzip {} \; 
    
}

download_via_manifest ${infiltratingManifestFile} ${infiltratingDataDir}
download_via_manifest ${lobularManifestFile} ${lobularDataDir}
