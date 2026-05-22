# This R script is just for testing and doing extra stuff.
# This is not meant to be submitted
# Krystof Vavra

# Now I will inspect preliminaries from Assignment Part 3
# Our group number is 3 therefore:
# Series_ID is CEU1000000001 Title Mining and Logging

if (!require("fpp3")) install.packages("fpp3")
library(fpp3)

employement_data <- us_employment
glimpse(employement_data)

# Filter us_employment for your Series_ID. Inspect the result using View() and autoplot().
mySeries <- employement_data %>% filter(Series_ID=='CEU1000000001')
View(mySeries)
autoplot(mySeries)

# Do we have leading NA values? If yes we remove them

head(mySeries, 10)
# No leading NA values
na_values <- nrow(mySeries %>% filter(is.na(Employed)))
na_values
# Na_values = 0 so no NA values in whole series

# Use saveRDS() to save the resulting time series on disk. Use it to solve the following task.
saveRDS(mySeries, file = "part_3/employment_series_CEU1000000001.rds")

# Then in our project we can load the series using:
mySeries <- readRDS("employment_series_CEU1000000001.rds")


