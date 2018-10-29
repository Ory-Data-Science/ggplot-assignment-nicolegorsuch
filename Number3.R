#load library
library(tidyverse)

#load data
dat <- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))

#rest of your code goes here
masses <- dat%>%
  group_by(mass.g., newborn.g.)

ggplot(data= masses, aes(x=mass.g., y= newborn.g.))+
  geom_point()+
  labs(x="Adult Mass", y="Newborn Mass")

ggplot(data= masses, aes(x=mass.g., y= newborn.g.))+
  geom_point()+
  labs(x="Log(Adult Mass)", y="Log(Newborn Mass)")+
  scale_x_log10()+
  scale_y_log10()

ggplot(data= masses, aes(x=mass.g., y= newborn.g., color =order))+
  geom_point()+
  labs(x="Log(Adult Mass)", y="Log(Newborn Mass)")+
  scale_x_log10()+
  scale_y_log10()

ggplot(data= masses, aes(x=mass.g., y= newborn.g.))+
  geom_point()+
  labs(x="Log(Adult Mass)", y="Log(Newborn Mass)")+
  scale_x_log10()+
  scale_y_log10()+
  facet_wrap(~order)

ggplot(data= masses, aes(x=mass.g., y= newborn.g.))+
  geom_point()+
  geom_smooth(method = "lm")+
  labs(x="Log(Adult Mass)", y="Log(Newborn Mass)")+
  scale_x_log10()+
  scale_y_log10()+
  facet_wrap(~order)


