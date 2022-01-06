setwd("~/Dropbox/dissemination/2021-misc")

library(tidyverse)

ssifc <- read_csv("ssifccsv.csv")

ggplot(ssifc,aes(x=date,ymin=ci.lo,ymax=ci.hi)) +
  geom_ribbon(alpha=.3,fill="darkblue") +
  theme_minimal() +
  scale_y_continuous(limits = c(0,60000),breaks=c(0,20000,40000,60000)) +
  labs(x="",y="Smittetal") 

ggsave("ssifcplot.png",width=6,height=5)
