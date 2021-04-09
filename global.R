ranges <- stack('www/target_ranges.gri')

sp_list <- c('COLLIN',
             'COLPAR',
             'ERICOM',
             'GAIARI',
             'GEUTRI',
             'PHALIN')

sp_pts <- lapply(FUN = function(x){st_read(x) %>% st_coordinates}, 
       X = paste0('www/',sp_list, '.kml'))