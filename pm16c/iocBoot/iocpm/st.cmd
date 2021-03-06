#!../../bin/linux-x86_64/pm

## You may have to change pm to something else
## everywhere it appears in this file

< envPaths

#cd "${TOP}"

## Register all support components
dbLoadDatabase("../../dbd/pm.dbd",0,0)
pm_registerRecordDeviceDriver(pdbbase) 

#where can protocols be located?
#epicsEnvSet "STREAM_PROTOCOL_PATH", "${TOP}/protocols/"
epicsEnvSet "STREAM_PROTOCOL_PATH", "../../protocols/"

#example telnet style IP port setup
drvAsynIPPortConfigure "pm", "192.168.206.21:7777"
asynOctetSetInputEos "pm",0,"\r\n"
asynOctetSetOutputEos "pm",0,"\r\n"



## Load record instances
dbLoadRecords("../../db/pm.db","user=wuxt")

iocInit()

## Start any sequence programs
#seq sncpm,"user=wuxt"
