# This is a comment
# This file explores subsetting
x  <-  c(5.4,6.2,7.3,4.1,5.5) # THIS IS A VECTOR
names(x) <- letters[1:5]
names(x) <- c('a','b','c','d','e')
x
class(letters)
letters
letters[]
x
x[1]
x[5]
x[c(1,3)]
x[1:4]
x[5:1]
x[7]
x[0]
x[c(-1,-3)]
x[-2]
x[-(2:3)]
x["d"]
x[c("a","d")]
names (x)=="d"
x[names(x)=="d"]
x[!names(x)=="d"]
!names(x)=="d"
x[which(names(x)=="d")]
x[-which(names(x)=="d")]
names(x) =="a"
which(names(x)=="a")
x[-which(names(x) %in% c("a", "c"))]
x
names(x) %in% c("a", "c")
names(x) == c("a", "c")
names(x) <-  c('a','a','a')
x['a']
x
x[which(names(x)=='a')]
names(x) == c('a','c')
x <-  c('a','b','a','c')
names(x) <- c('a','b','a','c')
names(x)
names(x) %in% c('a','c')
x <- 1:3
names(x) <-  c('b','b','b')
names(x) == c('a','b',"b")
names(x) %in% c('a','b',"c")
x[c(TRUE, TRUE, FALSE, FALSE)]
x
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x>5
x<7
x>5&x<7
x>5|x<7
x>5||x<7
x>5&&x<7


which(x>5&x<7)
x[which(x>5&x<7)]
x[x<7]
(x[x<7])>5
x[x[x<7]]
x

# subsetting factors
f <- factor(c("a","b","c","b","b","a"))
levels(f)
f
f[4]
f[-3]
levels(f)
f[f=='a']
f[3:5]


#subsetting matrices
y[]
y[2,4]
y[2,]
y[,5]
y[,4:5]
y[,5,drop=FALSE]
y[3,,drop=FALSE]
y[3,]
y[FALSE,]
y[y>5]
y>5
y[1,y[1,]>5]
y[2,y[2,]>6]
f <- factor(c("a","a","b","c","c","d"))
f[f=="a"]
f[f %in% c("b","c")]
m <- matrix(rnorm(6*4),ncol=4,nrow=6)
m[3:4,c(3,1)]
m[3, , drop=FALSE]
m[5]
matrix(1:6,nrow=2,ncol=3)
matrix(1:6,nrow=2,ncol=3,byrow=TRUE)
m <- matrix(1:18,nrow=3,ncol=6)
print(m)
m[2,c(4,5)]

# subsetiing lists
xlist <- list(a = "Software Carpentry", b = 1:10, data = head(iris))
xlist[1]
split(xlist[["b"]], sep=" ")
c(xlist[["b"]])
gg<-c(xlist[["b"]])
gg[2]

mod <- aov(pop ~ lifeExp, data=gapminder)
names(gapminder)
mod
mod$df.residual

gapminder[gapminder$year == 1957,]
head(gapminder, n=5)
gapminder[,-(1:4)]
tail(gapminder, n=5)
gapminder[gapminder$lifeExp > 80,]
gapminder[, c(1,5,6)]
gapminder[gapminder$year == 2002 | gapminder$year==2007,]
data_small <- rbind(gapminder[(1:9),],gapminder[(19:23),])
