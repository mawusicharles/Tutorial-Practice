# Charles Mawusi 
# Week 2 Tutorials
install.packages("gapminder")
install.packages("Rtools")
library("gapminder")
help("gapminder")
str(gapminder)
colSums(is.na(gapminder))
# Subsetting data using tidyvers and dplyr 
install.packages("tidyverse")
install.packages("dplyr")

# magrittr and pipes using dplyr library 
library(dplyr)
log(mean(gapminder$pop)) # Normal way 

gapminder$pop %>% mean() %>% log()
gapminder$pop %>% mean() %>% log() %>% round(, 2)
install.packages("glue") # use when you have errors with running the pipe

gapminder %>% filter(country=="Oman")
gapminder %>% filter(country=="Oman" & year>="2002")
head(gapminder)
gapminder %>%
  filter(country=="Oman"|country=="Ghana"& 
           year>1980 & year<=2000)

china<-gapminder %>% filter(country=="China")
head(china)
 # Using GGplot2 
