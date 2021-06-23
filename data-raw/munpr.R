## code to prepare `munpr` dataset goes here

library(sf)
library(dplyr)
library(readr)
library(janitor)

munpr <- sf::read_sf(dsn = "data-raw",
                 layer = "PR_Municipios_2019")

munpr <- sf::st_transform(munpr,
                          crs = CRS("+proj=longlat +datum=WGS84 +no_defs"))

# Código para regirar a geometria
# munpr <- munpr %>%
#   sf::st_drop_geometry() %>%
#   dplyr::select(-SIGLA_UF)
#
# Código para vincular a região ao município
# alim <- readr::read_delim(file = "data-raw/202012_ALIMENTADOR.TXT",
#                           delim = "|",
#                           col_types = readr::cols(.default = "c"))
# alim <- alim %>%
#   janitor::clean_names() %>%
#   dplyr::select(regiao, municipio) %>%
#   dplyr::mutate(regiao = case_when(
#     regiao == "86696" ~ "CSL",
#     regiao == "82362" ~ "LES",
#     regiao == "85148" ~ "NRO",
#     regiao == "84800" ~ "NRT",
#     regiao == "81776" ~ "OES",
#     TRUE ~ NA_character_))
# munpr <- munpr %>%
#   left_join(alim,
#             by = c("CD_MUN" = "municipio"))

# Código para testar se mapa com leaflet funciona
# library(leaflet)
# leaflet::leaflet() %>%
#   leaflet::addProviderTiles(providers$CartoDB.Positron) %>%
#   leaflet::addPolygons(data = munpr,
#                        color = "#660F00",
#                        weight = 1)

data=shapeData,weight=2,col = 'black',fillColor = shapeData$col,
highlightOptions = highlightOptions(color='white',weight=1,
                                    bringToFront = TRUE))

usethis::use_data(munpr, overwrite = TRUE)
