#!/bin/bash

MMS_SCRIPTS_DIR=${PWD}/../../MovementManagementSystem/Scripts
RG_SCRIPTS_DIR=${PWD}/../../RemoteGateway/Scripts
SF_SCRIPTS_DIR=${PWD}/../../ServiceFramework/Scripts
EMULATOR_DIR="Emulators"

cd ${SF_SCRIPTS_DIR}
/bin/bash CleanServiceFrameworkBuild.sh ${1}
/bin/bash CleanServiceFrameworkBuild.sh ${EMULATOR_DIR}

cd ${MMS_SCRIPTS_DIR}
/bin/bash BuildMovementManagementSystem.sh ${1}

cd ${RG_SCRIPTS_DIR}
/bin/bash BuildRemoteGateway.sh ${1}

exit