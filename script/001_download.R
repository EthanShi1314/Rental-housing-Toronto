install.packages("knitr")
library(knitr)
install.packages("tidyverse")
library(tidyverse)
install.packages("janitor")
library(janitor)
install.packages("lubridate")
library(lubridate)

install.packages("opendatatoronto")
library(opendatatoronto)
packages <- list_packages(limit = 10)
packages
toronto_rentals = 
  list_package_resources("2ab20f80-3599-486a-8f8a-9cb59117977c")
toronto_rentals
toronto_rentals <-
  list_package_resources("2ab20f80-3599-486a-8f8a-9cb59117977c") |>
  filter(name == 
           "short-term-rental-registrations-data.csv") |>
  get_resource()

write_csv(
  x = toronto_rentals,
  file = "toronto_rentals.csv"
)

head(toronto_rentals)
library(tidyverse)
install.packages("readr")
library(readr)

