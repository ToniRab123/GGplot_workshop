#Setting up the environment
#check if tidyverse is installed 
packages <-c("tidyverse", "skimr", "RColorBrewer")
library(tidyverse)
#check for other 2 packages
library(skimr)
library(RColorBrewer)
install.packages("RColorBrewer")
#Data
iris[1:20,]
#Data Structure -tidyverse
iris >%>
  skimr::skim()
iris >%>
  skimr::skim()
mean(sepal.length)
#Data Structure (tidyverse) 
iris %>%
  skimr::skim()
#Data Cleaning
####tidyverse 
set.seed(100)
iris_clean <- iris %>% 
  mutate(Trial = sample(3, n(), replace = TRUE))
set.seed(100)
iris_clean <- iris %>% 
  mutate(Trial = sample(3, n(), replace = TRUE))
set.seed(100)
iris_clean <- iris %>%
  mutate(Trial = sample (3),n(), replace = TRUE) 
find.package("magrittr")
set.seed(100)
iris_clean <- iris %>%
  mutate(Trial = sample (3),n(), replace = TRUE) 
