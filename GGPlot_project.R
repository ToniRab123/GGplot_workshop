## title: "ggplot2::workshop(...)"

## Set up the environment
##### (check if tidyverse installed)

packages <- c("tidyverse", "skimr", "RColorBrewer")
install.packages(setdiff(packages, rownames(installed.packages())))

library(tidyverse)
library(skimr)
library(RColorBrewer)
search()

## 1. Data

iris[1:20,]

### Data Structure (tidyverse)

# iris %>% error
  # skimr::skim() need to load dplyr package that defines function first
install.packages("dplyr")
library(dplyr)
iris %>%
  skimr::skim() 

###tidyverse 
####data cleaning 

set.seed(100) #dealing with randome process, if you dont set a random seed you R code is not reproducible 
iris_clean <- iris %>%
   mutate(Trial = sample(3, n(), replace = TRUE)) #create new variable named Trial, nor n number of rows in data frame assign a # randomly selected for 1-3, true makes it use 1,2,3 
iris_clean %>% skim()
