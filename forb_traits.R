library(leaflet)
library(leafsync)
library(raster)
library(shiny)

source('~/mpgPostdoc/projects/trait_transfer/app/ui.R')
source('~/mpgPostdoc/projects/trait_transfer/app/server.R')
source('~/mpgPostdoc/projects/trait_transfer/app/global.R')

runApp(ui = ui, server = server)
