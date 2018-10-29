#load library
library(tidyverse)

#load data from the internet, using tabs to seperate and replacing -999, etc with NA's 
dat <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999"))

#your code goes here


ggplot(data= dat, mapping = aes(x=F_mass))+
  geom_histogram()+
  labs(x="Female Mass(g)")

ggplot(data= dat, mapping = aes(x=log(F_mass), fill="Blue"))+
  geom_histogram()+
  labs(x="Female Mass(g)")

ggplot(data= dat, mapping = aes(x=log(F_mass)))+
           geom_histogram(alpha=0.3)+
           labs(x="Female Mass(g)")+
    geom_histogram(mapping=aes(x=log(M_mass)))+
    facet_wrap(~Family)
  
ggplot(data= dat, mapping = aes(x=log(F_wing)))+
    geom_histogram(alpha=0.3)+
    labs(x="Wing Size")+
    geom_histogram(mapping=aes(x=log(M_wing)))+
    facet_wrap(~Family)
  
  


