#!/bin/bash

MMS_SCRIPTS_DIR=${PWD}/../../MovementManagementSystem/Scripts
RG_SCRIPTS_DIR=${PWD}/../../RemoteGateway/Scripts
SF_SCRIPTS_DIR=${PWD}/../../ServiceFramework/Scripts
EMULATOR_DIR="Emulators"

cd ${MMS_SCRIPTS_DIR}
/bin/bash CleanMovementManagementSystemBuild.sh ${1}

cd ${RG_SCRIPTS_DIR}
/bin/bash CleanRemoteGatewayBuild.sh ${1}

cd ${SF_SCRIPTS_DIR}
/bin/bash CleanServiceFrameworkBuild.sh ${1}
/bin/bash CleanServiceFrameworkBuild.sh ${EMULATOR_DIR}

exit