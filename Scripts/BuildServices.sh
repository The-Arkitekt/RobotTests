#!/bin/bash

MMS_SCRIPTS_DIR=${PWD}/../../MovementManagementSystem/Scripts
RG_SCRIPTS_DIR=${PWD}/../../RemoteGateway/Scripts

cd ${MMS_SCRIPTS_DIR}
/bin/bash BuildMovementManagementSystem.sh ${1}

cd ${RG_SCRIPTS_DIR}
/bin/bash BuildRemoteGateway.sh ${1}

exit