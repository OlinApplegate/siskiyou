#load required packages
library(rgdal)
library(sp)
library(sf)

#read spreadsheet, and define it as object
gwdata_siskiyou_sites_tab <- read.csv(here("data", "stations", "gwdata_siskiyou_sites_tab.csv")) 

# Create a SpatialPointsDataFrame object from the data
coordinates(gwdata_siskiyou_sites_tab) <- ~Long + Lat

#sets the projection of the data
proj4string(gwdata_siskiyou_sites_tab) <- "+proj=longlat +datum=WGS84"

# Write the data to a shapefile that is located in folder data_output -> shp_files -> stations
writeOGR(gwdata_siskiyou_sites_tab, "data_output/shp_files/stations/gwdata_siskiyou_sites_tab.shp", 
         "points", driver = "ESRI Shapefile")

