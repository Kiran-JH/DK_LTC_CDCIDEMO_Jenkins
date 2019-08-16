

# Application   : JHIM Windows component (The Windows.cdf file for JHIM)
# Department    : JHIM
#
#
# Description:-
#
#       Component Description File to be used for SystemTest/Staging/Production Environments
#	The .cdf file for JHIM site
#
#       Use the NT svndeploy tool for releasing this batch component
#
#       Application Name: JHIM_WIN   Component Name: JHIM_WIN 
#
#	Flavor & State 
#
#       For System Test specify:        -flavor JHIM_WIN,STEST
#       For Staging specify    :        -flavor JHIM_WIN,STAGE
#       For Production specify :        -flavor JHIM_WIN,PROD
#
#
# 
#-------------------------------------------------------------------------------------------------------------------------------------------
# Variables start
#-------------------------------------------------------------------------------------------------------------------------------------------

##Live folder structure
#--------------
# DEVELOPMENT JHIM
#--------------

-var JHIMMDMDDL JHIM/MDM/DDL
-var JHIMETLDDL JHIM/ETL/DDL
-var JHIMMDMDML JHIM/MDM/DML
-var JHIMODSDDL JHIM/ODS/DDL
-var JHIMdbMDMDDL JHIM/database/MDM/DDL
-var JHIMdbETLDDL JHIM/database/ETL/DDL
-var JHIMdbMDMDML JHIM/database/MDM/DML
-var JHIMdbODSDDL JHIM/database/ODS/DDL

#-------------------------------------------------------------------------------------------------------------------------------------------
# Variables end
#-------------------------------------------------------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------------------------------------------------------------------
# Components start
#-------------------------------------------------------------------------------------------------------------------------------------------
#-------------
# DEV MDM
#-------------

-win32     ${JHIMMDMDDL}/JHIM.MDM.STG1.NON_AGNT_TABLE_RESTORE.sql	 ${JHIMdbMDMDDL}/JHIM.MDM.STG1.NON_AGNT_TABLE_RESTORE.sql
-win32     ${JHIMMDMDDL}/JHIM.MDM.STG1.NON_AGNT_INDEX_RESTORE.sql	 ${JHIMdbMDMDDL}/JHIM.MDM.STG1.NON_AGNT_INDEX_RESTORE.sql
-win32     ${JHIMMDMDDL}/Extensions_TRIGGERS_DB2.sql	 ${JHIMdbMDMDDL}/Extensions_TRIGGERS_DB2.sql

-win32     ${JHIMETLDDL}/JHIM.VLT.STG1.NON_AGNT_TABLE_RESTORE.sql	 ${JHIMdbETLDDL}/JHIM.VLT.STG1.NON_AGNT_TABLE_RESTORE.sql
-win32     ${JHIMETLDDL}/JHIM.VLT.STG1.NON_AGNT_INDEX_RESTORE.sql	 ${JHIMdbETLDDL}/JHIM.VLT.STG1.NON_AGNT_INDEX_RESTORE.sql
-win32     ${JHIMETLDDL}/JHIM.VLT.STG1.NON_AGNT_TRIGGER_RESTORE.sql	 ${JHIMdbETLDDL}/JHIM.VLT.STG1.NON_AGNT_TRIGGER_RESTORE.sql
-win32     ${JHIMETLDDL}/JHIM.VLT.STG1.NON_AGNT_ROUTINE_RESTORE.sql	 ${JHIMdbETLDDL}/JHIM.VLT.STG1.NON_AGNT_ROUTINE_RESTORE.sql
-win32     ${JHIMETLDDL}/JHIM.CDL.STG1.NON_AGNT_TABLE_RESTORE.sql	 ${JHIMdbETLDDL}/JHIM.CDL.STG1.NON_AGNT_TABLE_RESTORE.sql

-win32     ${JHIMODSDDL}/JHIM.ODS.STG1.NON_AGNT_INDEX_RESTORE.sql	 ${JHIMdbODSDDL}/JHIM.ODS.STG1.NON_AGNT_INDEX_RESTORE.sql
-win32     ${JHIMODSDDL}/JHIM.ODS.STG1.NON_AGNT_TRIGGER_RESTORE.sql	 ${JHIMdbODSDDL}/JHIM.ODS.STG1.NON_AGNT_TRIGGER_RESTORE.sql
-win32     ${JHIMODSDDL}/JHIM.ODS.STG1.NON_AGNT_ROUTINE_RESTORE.sql	 ${JHIMdbODSDDL}/JHIM.ODS.STG1.NON_AGNT_ROUTINE_RESTORE.sql

#-win32     ${JHIMMDMDDL}/RPS_Group1_DML.sql	 ${JHIMdbMDMDDL}/RPS_Group1_DML.sql
#-win32     ${JHIMMDMDDL}/RPS_Group1_DML.sql	 ${JHIMdbMDMDDL}/RPS_Group1_DML.sql
#-win32     ${JHIMMDMDDL}/RPS_Group1_DML.sql	 ${JHIMdbMDMDDL}/RPS_Group1_DML.sql

#-win32     ${JHIMMDMDML}/RPS_Group1_DML.sql	 ${JHIMdbMDMDML}/RPS_Group1_DML.sql

#-win32     ${JHIMETLDDL}/RPS_Group1_DML.sql	 ${JHIMdbETLDDL}/RPS_Group1_DML.sql
#-win32     ${JHIMETLDDL}/RPS_Group1_DML.sql	 ${JHIMdbETLDDL}/RPS_Group1_DML.sql
#-win32     ${JHIMETLDDL}/RPS_Group1_DML.sql	 ${JHIMdbETLDDL}/RPS_Group1_DML.sql
#-win32     ${JHIMETLDDL}/RPS_Group1_DML.sql	 ${JHIMdbETLDDL}/RPS_Group1_DML.sql