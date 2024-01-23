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


# Load necessary library
library(tidyverse)

# Set simulation parameters
n_properties <- 10000  # total number of properties to simulate
prop_condo_apartment <- 0.8087  # proportion of condominiums and apartments
prop_each_other_type <- (1 - prop_condo_apartment) / 3  # proportion for each of the other three property types

# Define property types
property_types <- c("Condominium", "Apartment", "TypeA", "TypeB", "TypeC")

# Define the probabilities for each property type
probabilities <- c(prop_condo_apartment / 2, prop_condo_apartment / 2, 
                   prop_each_other_type, prop_each_other_type, prop_each_other_type)

# Perform the simulation
set.seed(42)  # for reproducibility
simulated_properties <- sample(property_types, size = n_properties, replace = TRUE, 
                               prob = probabilities)

# Convert the results to a dataframe for analysis
simulated_properties_df <- as.data.frame(table(simulated_properties))
simulated_properties_df
# Plot the distribution of simulated property types
ggplot(data = simulated_properties_df, aes(x = simulated_properties, y = Freq)) +
  geom_bar(stat = "identity", fill = 'blue', color = 'black') +
  theme_minimal() +
  labs(title = "Simulated Distribution of Property Types",
       x = "Property Type",
       y = "Frequency") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x labels for better readability

