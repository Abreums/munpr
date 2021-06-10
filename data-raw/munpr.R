## code to prepare `munpr` dataset goes here

library(sf)
library(dplyr)
munpr <- read_sf(dsn = "data-raw",
                 layer = "PR_Municipios_2019")

munpr <- munpr %>%
  sf::st_drop_geometry() %>%
  dplyr::select(-SIGLA_UF)

usethis::use_data(munpr, overwrite = TRUE)
