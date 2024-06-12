library(arrow)
library(dplyr)

items <- read_feather("data/ldt_item.arrow")

subjects <- read_feather("data/ldt_subj.arrow")

trials <- read_feather("data/ldt_trial.arrow")

data <- trials %>% 
  left_join(., items)

