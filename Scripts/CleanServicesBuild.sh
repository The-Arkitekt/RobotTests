#!/bin/bash

MMS_SCRIPTS_DIR=${PWD}/../../MovementManagementSystem/Scripts
RG_SCRIPTS_DIR=${PWD}/../../RemoteGateway/Scripts

cd ${MMS_SCRIPTS_DIR}
/bin/bash CleanMovementManagementSystemBuild.sh ${1}

cd  ${MMS_SCRIPTS_DIR}
/bin/bash CleanRemoteGatewayBuild.sh ${1}

exit