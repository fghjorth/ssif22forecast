# ssif22forecast

Digitaliseret version af SSI's fremskrivning af smittetal i foråret 2022. Gør det muligt at sammenligne den faktiske udvikling i smittetal med fremskrivningen.

Kode til at genskabe figuren:

```
ssifc <- read_csv2("ssifc.csv")

ggplot(ssifc,aes(x=date,ymin=ci.lo,ymax=ci.hi)) +
  geom_ribbon(alpha=.3,fill="darkblue") +
  theme_minimal() +
  scale_y_continuous(limits = c(0,60000),breaks=c(0,20000,40000,60000)) +
  labs(x="",y="Smittetal") 
``` 

!(ssifcplot.png)
