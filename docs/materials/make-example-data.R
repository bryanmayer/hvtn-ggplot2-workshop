library(tidyverse)
library(here)

hvtnReports::mock_bama %>%
  filter(antigen == "ag_b" & isotype == "IgG") %>%
  write_csv(here("mock_bama_example.csv"))
