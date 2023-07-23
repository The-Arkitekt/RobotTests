#!/bin/bash

BLD_PATH=$PWD/../${1}/bld

echo "Starting Services for: ${1}"

MMS_SCRIPTS_DIR=${PWD}/../../MovementManagementSystem/Scripts
RG_SCRIPTS_DIR=${PWD}/../../RemoteGateway/Scripts

cd ${MMS_SCRIPTS_DIR}
/bin/bash StartMovementManagementSystem.sh ${1} &

cd ${RG_SCRIPTS_DIR}
/bin/bash StartRemoteGateway.sh ${1} &

wait

exit