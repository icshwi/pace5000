#@field IPADDR
#@type STRING
#IP or hostname of the TCP endpoint.
#
#@field PREFIX
#@type STRING
#Prefix for EPICS PVs.


#Specifying the TCP endpoint and port name
drvAsynIPPortConfigure("$(PREFIX)-asyn-port", "$(IPADDR):5025")

#Load your database defining the EPICS records
dbLoadRecords(pace5000.db, "P=$(PREFIX), R=:,PORT=$(PREFIX)-asyn-port")
