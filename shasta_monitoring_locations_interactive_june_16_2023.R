library(here)
library(readr)
library(tidyverse)
library(readxl)
library(sf)
library(mapview)
library(ggplot2)
library(ggtext)
library(fs)

#load shapefile polygon of b118 gw basins
b118_basins <-st_read(here("data", "shp_files", "basin_outline" , "i08_B118_CA_GroundwaterBasins.shp"))
ggplot(b118_basins) + geom_sf()

#plot the shapefile
plot(b118_basins$geometry)

#check to see that the class of the data is sf
class(gwdata_siskiyou_sites_tab)

#create interactive map of basin, and add the stations
library(mapview)
mapview(b118_basins) + mapview(gwdata_siskiyou_sites_tab)
