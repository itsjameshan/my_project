# Week 7 moRe R, James Han 2-23-2016
getwd()
gapminder <- read.table("data/gapminder-FiveYearData.csv",
                     header=TRUE,
                     sep=",")
gapminder
names(gapminder)
# gapminder_Asia <- gapminder[which(gapminder$continent=="Asia") , ]
# ggplot(gapminder_Asia,aes(x=year,y=gdpPercap, by=country, color=country)) +
#        geom_line() +
#        scale_y_log10() +
#        facet_wrap((~country)) 
 pick <-  gapminder$continent=="Asia"   # Each country in Asia, I assume it's all countries in Asia continent
# pick <- gapminder$country %in% c("China","India", "Indonesia")      
ggplot(gapminder[pick, ],aes(x=year,y=gdpPercap, color=country)) +
  geom_line() +
  facet_wrap((~country)) + 
  ggtitle("Asia gdpPercap") +
  scale_colour_discrete(name="Country") +
  xlab("Year") +
  ylab("per capita GDP")
  ggsave("graphs/Han_week7.png")
  
  
  
