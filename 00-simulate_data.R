#### Preamble ####
# Purpose: Simulates the data for the number of planes landed every hour over a period of eight hours
# Author: Bella MacLean
# Date: 31 January 2024 
# Contact: bella.maclean@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####

library(tidyverse)
library(ggplot2)
library(knitr)

### Simulate data ###

# Create the dataset
plane_data <- data.frame(
  Hour = c('9AM-10AM', '10AM-11AM', '11AM-12PM', '12PM-1PM', '1PM-2PM', '2PM-3PM', '3PM-4PM', '4PM-5PM'),
  Planes_Landed = c(10, 12, 14, 18, 13, 10, 15, 16)
)

# Print the dataset in a table format
kable(plane_data)