library(ggplot2)
names(gapminder)
ggplot(gapminder,aes(x=year,y=gdpPercap))
ggplot(gapminder,aes(x=lifeExp,y=gdpPercap)) + geom_point()
ggplot(data = gapminder, aes(x =year, y = lifeExp)) + geom_point()
ggplot(gapminder,aes(x=year,y=gdpPercap, by=country, color=continent))
  + geom_point() + geom_line()

ggplot(gapminder,aes(x=year,y=gdpPercap, 
                     by=country, color=continent)) +
  geom_line()

ggplot(gapminder,aes(x=year,y=gdpPercap,
                     by=country, color=continent)) + 
  geom_line() + scale_y_log10()     

ggplot(gapminder,aes(x=lifeExp,y=gdpPercap)) + 
  geom_point(aes(color = continent))  + scale_y_log10() + 
  geom_smooth(method="lm",size = 2, color="black", se =FALSE)

# ggplot(gapminder,aes(x=lifeExp,y=gdpPercap)) + 
#   geom_point(aes(color = continent))  + scale_y_log10() + 
#   geom_smooth()

# ggplot(gapminder,aes(x=year,y=lifeExp)) + 
#   geom_point(aes(color = continent))  + scale_y_log10() + 
#   geom_qq()

ggplot(gapminder,aes(x=year,y=lifeExp, 
                     by=country)) +
                     geom_line(aes(color=continent))

ggplot(gapminder,aes(x=year, y=lifeExp)) + 
   geom_line(aes(color=continent)) +
  facet_wrap(~country)

ggplot(gapminder,aes(x=year, y=lifeExp)) + 
  geom_line(aes(color=continent)) +
  facet_wrap(~country) +
  xlab("Year") + 
  ylab("Life Expectancy") +
  scale_colour_discrete(name="Continent")

ggplot(gapminder,aes(x=year, y=lifeExp)) + 
  geom_line(aes(color=continent)) +
  facet_wrap(~country) +
  xlab("Year") + 
  ylab("Life Expectancy") +
  scale_colour_discrete(name="Continent") +
  theme(axis.text.x=element_blank(),
        axis.ticks.x=element_blank())

ggplot(gapminder,
       aes(x = year, y = lifeExp)) + 
  geom_line(aes(color = continent)) + 
  facet_wrap(~country) + 
  xlab("Year") + 
  ylab("Life Expectancy") + 
  scale_colour_discrete(name="Continent") +
  theme(axis.text.x = element_blank(), 
        axis.ticks.x = element_blank())
ggsave("graphs/lifebyyearbycountry.png")

gapminder <- cbind(gapminder, pop_mil=gapminder$pop/1000000)
gapminder 
names(gapminder)
head(gapminder, n=5)
gapminder <- gapminder [,-7]

mod <- aov(pop ~ lifeExp, data=gapminder)
mod
attributes(mod)
summary(mod)
residuals(mod)


# Challenge 5
# Create a density plot of GDP per capita, filled by continent.
# Advanced: - Transform the x axis to better visualise the data spread. 
# - Add a facet layer to panel the density plots by year.
names(gapminder)

ggplot(gapminder,aes(x=gdpPercap,fill=continent))+
  geom_density() +
  scale_x_log10() +
  facet_wrap(~ year) 

ggplot(gapminder,aes(x=gdpPercap,fill=continent))+
  geom_density() +
  scale_x_log10() +
  facet_wrap(~ country) 

pop_mil <- gapminder$pop/1e6
gapminder_new <- cbind(gapminder,pop_mil)
gapminder_new
head(gapminder_new,n=5)
head(gapminder,n=5)


ggplot(gapminder,aes(x=year,y=pop_mil, by= continent, color= country)) +
      geom_point()

pop_mil <- gapminder$pop/1e6
gapminder_new <- cbind(gapminder,pop_mil)
pick <- gapminder_new$country %in% c("China","India","Indonesia")
ggplot(gapminder_new[pick,],aes(x=year, y=pop_mil,by= continent, color= country)) +
       geom_line()

m <- matrix(1:12, nrow=3, ncol=4)
m
m > c(0, 20) 

