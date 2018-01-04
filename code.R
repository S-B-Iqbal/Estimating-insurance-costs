# Preparing the data 

insurance <- read.csv("insurance.csv", stringsAsFactors = TRUE)

# Checking the normality of the dependent variable i.e., expanses

summary(insurance$charges)

hist(insurance$charges)

# Exploring relationship among features- correlation matrix

cor(insurance[c("age", "bmi", "children", "charges")])

#Visualising with scatterplot matrix

pairs(insurance[c("age","bmi","children","charges")])

#Training a model on the data

ins_model <- lm(charges ~ ., data = insurance)

summary(ins_model)

# Improving model performace

# Adding non-linear relationships : As the treatment may becoe disproportionately
#expansive for the elderly, medical costs may not be constant throughout the ages.

insurance$age2 <- insurance$age^2

# Transformation- converting a numeric variable into a binary indicator
# Assuming obese people have a higher cost of insurance than non-obese people

bmi30 <- ifelse(insurance$bmi >= 30, 1,0)

#Adding interaction
#To interact obese people who smoke ie., charges ~ bmi30*smoker

ins_model2 <- lm(charges ~ age+ age2+ children+ bmi+ sex+ bmi30*smoker+ region, data = insurance)

summary(ins_model2)

