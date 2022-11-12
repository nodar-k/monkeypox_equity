##################
# Comparing Monkeypox vaccine uptake across races/ethn
# November 12, 2022
# Nodar Kipshidze, MPH
#################

# Load libraries
library(tidyr)

# Load data
monkeypox_dat = read.csv("MPOX_DATA_TABLE.csv", header=TRUE)

# % Cases
monkeypox_dat_CASES = monkeypox_dat %>% 
  pivot_longer(cols=13:19,  names_to="Category", values_to="CASES")

monkeypox_dat_CASES = monkeypox_dat_CASES %>% 
  select(-(3:38))

# % Vaccinated
monkeypox_dat_VAX = monkeypox_dat %>% 
  pivot_longer(cols=30:37,  names_to="Category", values_to="VAX")

monkeypox_dat_VAX = monkeypox_dat_VAX %>% 
  select(-(3:37))

# I:C RATIO
monkeypox_dat_ICR = monkeypox_dat %>% 
  pivot_longer(cols=38:45,  names_to="Category", values_to="ICR")

monkeypox_dat_ICR = monkeypox_dat_ICR %>% 
  select(-(3:37))

# Descriptive Statistics
# Gets median, IQR, and number
# Note, only states that reported 0 for a specific category
# included a 0 in the observation, otherwise, the row was treated
# as missing, and some of the ns may be off
monkeypoxStats_CASES = monkeypox_dat_CASES %>%
  filter(is.na(CASES)==FALSE) %>% 
  group_by(Category) %>%
  summarise(median=median(CASES), IQR=IQR(CASES), n = n())

monkeypoxCasesStats_VAX = monkeypox_dat_VAX %>%
  filter(is.na(VAX)==FALSE) %>% 
  group_by(Category) %>%
  summarise(median=median(VAX), IQR=IQR(VAX), n = n())

monkeypoxVaxStats_ICR = monkeypox_dat_ICR %>%
  filter(is.na(ICR)==FALSE) %>% 
  group_by(Category) %>%
  summarise(median=median(ICR), IQR=IQR(ICR), n = n())

# Kruskal-Wallis Rank Sum
# Comparing no. cases between categories
anv = kruskal.test(CASES~Category, data=monkeypox_dat_CASES)

# Comparing no. vaxxed between categories
anv2 = kruskal.test(VAX~Category, data=monkeypox_dat_VAX)

# Comparing ICR between categories
anv3 = kruskal.test(ICR~Category, data=monkeypox_dat_ICR)

# Display results from tests
anv
anv2
anv3
