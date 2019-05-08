#!../../bin/linux-x86_64/pfcu

## You may have to change pfcu to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

epicsEnvSet "STREAM_PROTOCOL_PATH", "../../protocols/"

## Register all support components
dbLoadDatabase "dbd/pfcu.dbd"
pfcu_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=guest")
dbLoadTemplate "db/user.substitutions"

drvAsynSerialPortConfigure("pfcu", "/dev/ttyS0")
asynSetOption("pfcu", 0, "baud", "9600")
asynSetOption("pfcu", 0, "bits", "8")
asynSetOption("pfcu", 0, "parity", "none")
asynSetOption("pfcu", 0, "stop", "1")
asynSetOption("pfcu", 0, "clocal", "N")
asynSetOption("pfcu", 0, "crtscts", "N")

asynSetTraceIOMask("pfcu",0,2)
asynSetTraceMask("pfcu",0,9)


cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=guest"
