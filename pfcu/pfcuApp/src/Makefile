TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = pfcu
# pfcu.dbd will be created and installed
DBD += pfcu.dbd

# pfcu.dbd will be made up from these files:
pfcu_DBD += base.dbd

# Include dbd files from all support applications:
#pfcu_DBD += xxx.dbd
pfcu_DBD += stream.dbd
pfcu_DBD += asyn.dbd
pfcu_DBD += drvAsynSerialPort.dbd

# Add all the support libraries needed by this IOC
#pfcu_LIBS += xxx
pfcu_LIBS += stream asyn

# pfcu_registerRecordDeviceDriver.cpp derives from pfcu.dbd
pfcu_SRCS += pfcu_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
pfcu_SRCS_DEFAULT += pfcuMain.cpp
pfcu_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#pfcu_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
pfcu_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

