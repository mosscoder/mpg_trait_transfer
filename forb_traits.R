library(leaflet)
library(leafsync)
library(raster)
library(rgdal)
library(shiny)

source('https://raw.githubusercontent.com/mosscoder/mpg_trait_transfer/main/global.R') #remote global
source('https://raw.githubusercontent.com/mosscoder/mpg_trait_transfer/main/ui.R') #remote ui
source('https://raw.githubusercontent.com/mosscoder/mpg_trait_transfer/main/server.R') #remote server

shinyApp(ui = ui, server = server)
