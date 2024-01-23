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
install.packages("readr")
library(readr)
install.packages("dplyr")
library(dplyr)
install.packages("stringr")
library(stringr)
install.packages("kableExtra")
# Load the data
library(readr)
library(knitr)
library(kableExtra)
df <- read_csv("/mnt/data/toronto_rentals.csv")

# Select only the required columns
df_selected <- df %>%
  select(X_id, property_type)

# Create a nicely formatted table
kable(df_selected, caption = "ID of Rental Housing and the Property Type", align = 'c') %>%
  kable_styling(bootstrap_options = c("striped", "hover"), full_width = F, position = "center")
write_csv(
  x = df_selected,
  file = "cleaned_toronto_rentals.csv"
)
head(df_selected)
