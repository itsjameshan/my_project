# verctorizing examples

x <- c(5.4,6.2,7.3,4.1,5.5)
x
names(x) <- c(LETTERS[1:5])
x*2
x+2
y <- matrix(1:18,nrow=3,ncol=6,byrow=TRUE)
y
x+y[1,1:5]
rep(2,times=5)

#recycling fail!
x*2:3

# Calculate the GDP of each country
head(gapminder)
gapminder$pop*gapminder$gdpPercap

gapminder$GDP <- gapminder$pop*gapminder$gdpPercap

ggplot(gapminder,aes(x=year, y=GDP,color=continent)) +
      geom_line(aes(by=country))

ggplot(gapminder,aes(x=year, y=GDP,color=continent)) +
  geom_line(aes(by=country)) +
  scale_y_log10() + 
  scale_color_discrete(name="Continent")
ggsave("graphs/GDP_by_year.png")


x = 1/(1^2) + 1/(2^2) + 1/(3^2) + ... + 1/(n^2)

n <- 0
for (x in 1:10000){
  n = n + 1/(x^2)
}
n

for (y in 1:3){
  y=y+1
}
y

 n <- 0
 for (x in 1:10000){
     n = n + 1/(x^2)
   }
 n
 
 sum(1/(1:100)^2)
