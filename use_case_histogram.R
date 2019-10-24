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
jpal_orange <- "#E35925"
jpal_teal <- "#2FAA9F" 
jpal_green <- "#61b77f"
jpal_blue <- "#2d616e"
jpal_yellow <- "#F2C200"

test_school_data_fake <- read_excel("test_school_data_fake.xlsx")


plot1<-ggplot(data=test_school_data_fake, aes(x=test_score))+
  geom_histogram()+
  labs(title="Distribution of Test Scores",x="Score", y = "Count")

plot2<-plot1+bbc_style()

plot3<-plot1+jpal_style()


plot1
plot2
plot3

