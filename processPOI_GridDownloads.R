library(pryr)

#Getting wind turbines out of the POI data. Test data first. 
#Load CSV (which is actually pipe-separated, so... )

#http://stackoverflow.com/questions/17360843/how-to-read-numeric-values-as-factors-in-r
#For loading classification code correctly...
test <- read.csv("C:/Data/PointsOfInterest_OS/Download_testPOI_383956/poi_1039723/poi.csv", sep="|",
                 colClasses = "factor")

#filter out enery infrastructure - see if the name helps
filt <- test[test$PointX.Classification.Code=="07410534",]
