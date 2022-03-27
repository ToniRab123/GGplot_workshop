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
iris_clean %>% skim() #producing summary for you, infer what data is skewed, normal distributed

#Function 
iris_clean %>%
    ggplot()  #data visualization 
#Coordinates
iris_clean %>% 
  ggplot(.,aes(x=Trial, y=Sepal.Length)) #data visualization that reference to the data plot and aesthetic for x and y axis
#Mapping 
iris_clean %>%
  ggplot(.,aes(x=Trial, y=Sepal.Length, color = Species))
#Geometries 
#### geom_histogram(...), geom_point(...), geom_bar(...), geom_col(...)
##### - geom_histogram(...) is a count geom, so only takes one coordinate 
iris_clean %>% 
  ggplot(.,aes(x = Sepal.Length, color = Species)) +
  geom_histogram()
###stat_bin() using bins =30 if we secify band size, the larger the bin size, the fewer bins there will be to cover the whole range of the data and smaller bin size more bins there will need to be
iris_clean %>% 
  ggplot(.,aes(x = Sepal.Length, fill = Species)) +
  geom_histogram()
##### - The geom 'fill' is specified
##### - Add outline and transparency outside the mapping.
##### - specify the fill aesthetic inside the geom_histogram
iris_clean %>% 
  ggplot(.,aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(aes(color = Species), alpha = 0.4) #alpha refers to opacity lover values being more transparent colors
##### - Try out geom_point with an x and y coordinate.
##### - remove the 'as.character()' wrapper from Trial?
iris_clean %>% 
  ggplot(.,aes(x = Sepal.Width, y = Sepal.Length, color = Species,
               shape = as.character(Trial))) +
  geom_point()
##### - barchart with x and y coordinates, mapped to species.
##### - The default for geom_barchart(...) is count (similiar to geom_histogram(...)).
##### -  remove stat = 'identity'

iris_clean %>%
  ggplot(.,aes(x = Trial, y = Sepal.Length, fill = Species)) +
  geom_bar(stat = 'identity') #identity is telling R to use the y value provided for dependent variable 
##### - By changing position from the default 'stacked' to dodge we can look at the 
#####   species as separate columns.

iris_clean %>%
  ggplot(.,aes(x = Trial, y = Sepal.Length, fill = Species)) +
  geom_col(position = 'dodge')

##### - Before we move on to the next layer, is there another geom_* you want to try?
##### - Add your own geom_* below from some that we've discussed (boxplot, violin?)
##### - What have we learned about default arguments that could help here
##### - Remember to run '?geom_*()' to find defaults.

##### - By changing position from the default 'stacked' to dodge we can look at the 
#####   species as separate columns.

iris_clean %>%
  ggplot(.,aes(x = Trial, y = Sepal.Length, fill = Species)) +
  geom_col(position = 'dodge')

#Scales 



