library(shiny)
library(leaflet)
library(ggplot2)
library(data.table)
library(sf)

load("data/clim_stations.rdata")

station_coords <- data.table(station = c('prague', 'athens', 'oslo'), 
                             lat = c(50.1, 38, 59.95), 
                             lon = c(14.3, 23.7, 10.72))
station_coords_sf <- st_as_sf(station_coords, coords = c("lon", "lat"), crs = 4326)
