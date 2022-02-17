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
