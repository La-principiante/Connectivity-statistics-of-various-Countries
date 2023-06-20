path <- "D:/Internet Speed 2022.csv"
# reading contents of csv file
content <- read.csv(path)
# contents of the csv file
View (content)
attach(content)
vectordata=as.vector(content)
print(vectordata)
info=data.frame(country,broadband,mobile)
info
table1=table(info$broadband)
table1
table2=(info$mobile)
table2
plot(table1,type="o",col="red",xlab="country",ylab="broadband")
plot(table2,type = "o",col="red",xlab="Country",ylab="mobile_data")
boxplot(table2)
summary(table2)
summary(table1)
regression1=lm(info$broadband~info$mobile)
regression1
abline(regression1)
summary(regression1)
regression2=lm(info$mobile~info$broadband)
regression2
abline(regression2)
summary(regression2)
cor.test(info$broadband,info$mobile,method="pearson")
