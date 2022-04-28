x <- 5

x <- 4  
class(x)

x <- 4L
class(x)

x <- c(3, 5, 1, 10, 12, 6) # definir todos os elementos desse vetor que são menores que 6 para serem iguais a zero.
x[x %in% 1:5] <- 0
x[x <= 5] <- 0
x[x < 6] <- 0

d <- read.csv("hw1_data.csv",nrows = 2)
d[152:153, ]
d[47,1]
e <- as.matrix(d)
f <- as.data.frame(d)

e <- as.matrix(d[ ,1])
bad <- complete.cases[e]

d$Ozone
e <- is.na(d$Ozone)
f <- as.numeric(e)
g <- as.list(f)
h <- g[g == 0]

n <- d[ ,1]
good <- complete.cases(d)
e <- d[good, ][ ,1]
f <- sum(e)/111
ave(e)

e <- d[c("Ozone", "Temp" , "Solar.R")]
e <- d[-c ("Ozone")]

e <- d[d$Ozone > 31, ]
f <- e[e$Temp > 90, ]
good <- complete.cases(f)
h <- f[good, ]
z <- ave(h$Solar.R)

e <- d[d$Month == 6, ]
f <- ave(e$Temp)

e <- d[d$Month == 5, ]
f <- e$Ozone
g <- is.na(f)
h <- f[!g]
i <- max(h)







data.frame(table(d$Ozone))