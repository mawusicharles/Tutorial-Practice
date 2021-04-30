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
library(ggplot2)
ggplot(data = china, aes(x=year, y=lifeExp))+geom_point(col="red", size=3) +xlab("Year ")+ylab("Life Expectancy ") +ggtitle("Life Ecpectancy") +theme_bw()ggplot(data = china, aes(x=year, y=lifeExp))+geom_point(col="red", size=3) +xlab("Year ")+ylab("Life Expectancy ") +ggtitle("Life Ecpectancy") +theme_bw()

ggplot(data=china, aes(x=year, y=gdpPercap))+geom_line(col="red", size=2)+xlim(1940, 2016)+scale_y_log10(breaks=c(1995,2000,  2005, 2010))

#################################################################################################################

y<-seq(1, 20)+rnorm(20)
x<-seq(1, 20)
mydata<-data.frame(x,y)
model1<-lm(y~x, data=mydata)
summary(model1)

######################################################################################################################


install.packages("ggplot2")
