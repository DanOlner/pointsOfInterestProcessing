#Reload combined POI file for processing

library(plyr)
#Memory checking
library(pryr)

df <- readRDS("secureFolder/allPOIScotlandGrids.rds")

#filter out enery infrastructure - see if the name helps
filt <- test[test$PointX.Classification.Code=="07410534",]
