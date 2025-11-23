#| title: "Mapping Australia"
#| dataset-name: "aus_map"
#| colours: "`scale_fill_viridis_d()`"
#| description: "An introduction to drawing spatial plots in `ggplot2` using `sf`. The data is coming from the `ozmaps` package which provides shapefiles for Australian states and territories. Pay careful attention to the map and which states are to be drawn"

library(ggplot2)
library(dplyr)
library(sf)
library(ozmaps)

aus_map <- ozmaps::ozmap_data("states") |> filter(NAME != "Tasmania")

p <- ggplot(aus_map) + geom_sf(aes(fill = NAME)) + 
    theme_void() +
    scale_fill_viridis_d() +
    labs(fill = "State")

print(p)