data <- read.csv(file.choose())   #choose file
attach(data)

head(data)
Expenditure
cor(data[,-1]) #correlation; -1 because we dont want ID column


#scatter plot
plot(Income,Expenditure , main= "Scatter plot")

#Simple Linear Regression
slr = lm(Expenditure~Income)
slr
summary(slr)

#if p<0.05, reject null hypothesis - significant value
#if p>0.05, accept null hypothesis - no significant value

#ANOVA Table
anova(slr)

#confidence interval
confint(slr)

#fitting the line
abline(slr)


#residuals
res=residuals(slr)
sum(res)


fitted.values(slr)