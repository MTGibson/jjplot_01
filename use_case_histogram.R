# Testing out jpal_style()

if(!require(pacman))install.packages("pacman")

pacman::p_load('dplyr', 'tidyr', 'gapminder',
               'ggplot2',  'ggalt',
               'forcats', 'R.utils', 'png', 
               'grid', 'ggpubr', 'scales',
               'bbplot', 'readxl', 'tidyverse',
               'haven','graphics', 'gtable',
               'skimr','gridExtra','stargazer','xtable','matrixStats',
               'gmodels', 'beepr','ggmap','maptools','maps')

#J-PAL Colors:


test_school_data_fake <- read_excel("test_school_data_fake.xlsx")


plotA<-ggplot(data=test_school_data_fake, aes(x=test_score))+
  geom_histogram()+
  labs(title="Distribution of Test Scores",x="Score", y = "Count")

plotB<-plotA+bbc_style()

plotC<-plotA+jpal_style()


plotA
plotB
plotC


## Testing out colors with facetted plots

ggplot(data=test_school_data_fake, aes(x=test_score, y = school, fill=school))+
  geom_point() 

 asdfasdfasdfsadf
 


