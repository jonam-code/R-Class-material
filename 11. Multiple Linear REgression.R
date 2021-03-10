library(tidyverse)


data("marketing", package = "datarium")
head(marketing, 4)
str(marketing)
boxplot(marketing$youtube, main="youtube")
boxplot(marketing$facebook, main="facebook")
boxplot(marketing$facebook, main="newspaper")
#sales = b0 + b1*youtube + b2*facebook + b3*newspaper
model <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(model)
summary(model)$coefficient
model  <- lm(sales ~ youtube + facebook, data = marketing)
summary(model)