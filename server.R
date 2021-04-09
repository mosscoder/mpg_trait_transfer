server <- function(input, output,session) {
  output$map <- renderUI({
    

     base_m <- leaflet(options = leafletOptions(attributionControl = FALSE,
                                           zoomControl = FALSE)) %>%
      addProviderTiles("Esri.WorldImagery") %>%
      addLayersControl(overlayGroups = 'Overlay')
     
     m1 <- base_m %>%
      addRasterImage(ranges[[1]],
                     color = 'lightgreen',
                     opacity = 0.5,
                     group = 'Overlay') %>%
      addCircleMarkers(lng = sp_pts[1] %>% as.data.frame() %>% dplyr::select(X) %>% unlist(),
                 lat = sp_pts[1] %>% as.data.frame() %>% dplyr::select(Y) %>% unlist(), radius =  1) %>%
      addControl(position = 'topleft', html = names(ranges)[1])
     
     m2 <- base_m %>%
       addRasterImage(ranges[[2]],
                      color = 'lightgreen',
                      opacity = 0.5,
                      group = 'Overlay') %>%
       addCircleMarkers(lng = sp_pts[2] %>% as.data.frame() %>% dplyr::select(X) %>% unlist(),
                  lat = sp_pts[2] %>% as.data.frame() %>% dplyr::select(Y) %>% unlist(), radius =  1) %>%
       addControl(position = 'topleft', html = names(ranges)[2])
     
     m3 <- base_m %>%
       addRasterImage(ranges[[3]],
                      color = 'lightgreen',
                      opacity = 0.5,
                      group = 'Overlay') %>%
       addCircleMarkers(lng = sp_pts[3] %>% as.data.frame() %>% dplyr::select(X) %>% unlist(),
                  lat = sp_pts[3] %>% as.data.frame() %>% dplyr::select(Y) %>% unlist(), radius =  1) %>%
       addControl(position = 'topleft', html = names(ranges)[3])
     
     m4 <- base_m %>%
       addRasterImage(ranges[[4]],
                      color = 'lightgreen',
                      opacity = 0.5,
                      group = 'Overlay') %>%
       addCircleMarkers(lng = sp_pts[4] %>% as.data.frame() %>% dplyr::select(X) %>% unlist(),
                  lat = sp_pts[4] %>% as.data.frame() %>% dplyr::select(Y) %>% unlist(), radius =  1) %>%
       addControl(position = 'topleft', html = names(ranges)[4])
     
     m5 <- base_m %>%
       addRasterImage(ranges[[5]],
                      color = 'lightgreen',
                      opacity = 0.5,
                      group = 'Overlay') %>%
       addCircleMarkers(lng = sp_pts[5] %>% as.data.frame() %>% dplyr::select(X) %>% unlist(),
                  lat = sp_pts[5] %>% as.data.frame() %>% dplyr::select(Y) %>% unlist(), radius =  1) %>%
       addControl(position = 'topleft', html = names(ranges)[5])
     
     m6 <- base_m %>%
       addRasterImage(ranges[[6]],
                      color = 'lightgreen',
                      opacity = 0.5,
                      group = 'Overlay') %>%
       addCircleMarkers(lng = sp_pts[6] %>% as.data.frame() %>% dplyr::select(X) %>% unlist(),
                  lat = sp_pts[6] %>% as.data.frame() %>% dplyr::select(Y) %>% unlist(), radius =  1) %>%
       addControl(position = 'topleft', html = names(ranges)[6])
    
    leafsync::sync(m1,m2,m3,m4,m5,m6)
    
  })
}