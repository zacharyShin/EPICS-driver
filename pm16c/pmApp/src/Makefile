TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = pm
# pm.dbd will be created and installed
DBD += pm.dbd

# pm.dbd will be made up from these files:
pm_DBD += base.dbd

pm_DBD += mySupport.dbd
pm_DBD += stream.dbd
pm_DBD += asyn.dbd

# Include dbd files from all support applications:
#pm_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#pm_LIBS += xxx

pm_LIBS += stream
pm_LIBS += asyn


# pm_registerRecordDeviceDriver.cpp derives from pm.dbd
pm_SRCS += pm_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
pm_SRCS_DEFAULT += pmMain.cpp
pm_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#pm_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
pm_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

