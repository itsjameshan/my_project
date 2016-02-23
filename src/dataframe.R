#data frame
df <-data.frame(id=c("a","b","c","d","e","f"),
                x=1:6,
                y=214:219)
df
#df[,1]
#df[3,1]
df$id <- as.character(df$id)
df <- cbind(df,SixToOne = 6:1)
df
levels(df$id)
#df <-df[,-3]
#add a new leve to df$id
levels(df$id) <- c(levels(df$id),"g")
#add a new row
df  <- rbind(df,c("g",7,220,0))
df
is.factor(df$id)
df$id <- factor(df$id)
levels(df$id)
df<-df[-7,]
df
levels(df$id) <-c(levels(df$id),"g")
levels(df$id)
df  <- rbind(df,c("g",7,220,0))
df
df <- cbind(df,caps=LETTERS[1:6])
df[complete.cases(df),] #Return 'TRUE' when no missing values
na.omit(df)  # Another function for the same purpose
df <- na.omit(df)
rbind(df,df)
df2 <- rbind(df,df)
rownames(df2) <- NULL
df2


dfc2 <- data.frame(firstName='James',lastName="Han",age=30)
dfc2
dfc2 <- rbind(dfc2,list("Dharmic","Payyala", 23))
levels(dfc2$firstName) <- c(levels(dfc2$firstName),"Dharmic") #add a factor level
levels(dfc2$firstName)
dfc2$firstName <- as.character(dfc2$firstName)
dfc2$lastName <- as.character(dfc2$lastName)
dfc2 <- rbind(dfc2,list("Dharmic","Payyala", 23))
#dfc2 <- dfc2[-2,]
dfc2 <- cbind(dfc2,confuse=c("Y","Y"))

#read in gapminder
gapminder <-  read.table("data/gapminder-FiveYearData.csv",
                         header=TRUE,
                         sep=",")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
typeof(gapminder)
class(gapminder)
typeof(gapminder$country)
class(gapminder$country)
head(gapminder)

gapminder[gapminder$country=="Australia",]
