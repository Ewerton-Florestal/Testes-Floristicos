
library(openxlsx)

library(vegan)

testeshennon<-read.table("Teste de Shennon.txt", header=T)

attach(testeshennon)

shannon<-diversity(testeshennon)

shannon

Pielou<- shannon/log(specnumber(testeshennon))

Pielou

Simpson<- diversity(testeshennon, "simpson")

Simpson

odunleste<- 18/log1p(645)

odunoeste<- 15/log1p(438)

testehut<-read.xlsx("Teste de Hutcheson.xlsx", sheet=3, colNames = T)

attach(testehut)

library(ecolTest)

# two-sided test

Hutcheson_t_test(x=testehut$Leste,
                 y=testehut$Oeste,
                 shannon.base = 10)


