#### Preamble ####
# Purpose: Tests the data for the number of planes landed every hour over a period of eight hours
# Author: Bella MacLean
# Date: 31 January 2024 
# Contact: bella.maclean@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####

library(tidyverse)
library(ggplot2)

#### Simulated data ####

# Create the dataset
plane_data <- data.frame(
  Hour = c('9AM-10AM', '10AM-11AM', '11AM-12PM', '12PM-1PM', '1PM-2PM', '2PM-3PM', '3PM-4PM', '4PM-5PM'),
  Planes_Landed = c(10, 12, 14, 18, 13, 10, 15, 16)
)

#### Test data ####

# First Test: Test for Missing Values
sum(is.na(plane_data))

# Second Test: Test for Consistent Row Counts
# First, define the number of rows in the dataset
n_rows <- nrow(plane_data)
# Now, I check if all columns have the same number of rows
consistent_rows <- all(sapply(plane_data, function(column) length(column) == n_rows))
# Print the result
print(consistent_rows)

# Third Test: Test for Valid Strings in 'Hour' Column
# Define the expected categories
expected_hours <- c('9AM-10AM', '10AM-11AM', '11AM-12PM', '12PM-1PM', '1PM-2PM', '2PM-3PM', '3PM-4PM', '4PM-5PM')
# Check if all values match the expected categories
valid_hours <- all(plane_data$Hour %in% expected_hours)
# Print the result
print(valid_hours)