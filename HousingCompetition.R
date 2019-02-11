# Aim to regress SalePrice of a house based on variables:
# neighborhood, HouseStyle, RoofStyle, Fireplace, BedroomAbvGr
# TotRmsAbvGrd, KetchenAbvGr, GarageType, PoolQC,
# SaleType (could be categorised somehow with YearBuilt and SaleCondition) i.e. new, old etc.,

# read in data 

train_df <- read.csv(file = "train.csv", head = TRUE, sep = ",")
test_df <- read.csv(file = "test.csv", head = TRUE, sep = ",")

sapply(train_df, FUN=function(x) sum(is.na(x))) 
sapply(test_df, FUN=function(x) sum(is.na(x)))

summary(train_df)
head(train_df)
str(train_df)

par(mfrow = c(1,1))
plot(train_df$YearBuilt, train_df$SalePrice, col=train_df$Neighborhood)
plot(train_df$YearBuilt, train_df$YrSold, col=train_df$SaleType)

#  par(mfrow = c(1,1))
#  plot(test_df$YearBuilt, test_df$SalePrice, col=test_df$Neighborhood)
#  plot(test_df$YearBuilt, test_df$YrSold, col=test_df$SaleType)

hist(train_df$SalePrice, main = "Sale Price Distribtion", col = "pink") #  NEGATIVELY skewed
hist(train_df$LotFrontage, main = "Lot Frontage Distribtion", col = "blue")
hist(train_df$LotArea, main = "Lot Area Distribtion", col = "green")
hist(train_df$YearBuilt, main = "Year Built Distribtion", col = "yellow") # a lot built in previous years
hist(train_df$PoolArea, main = "Pool Area Distribtion", col = "grey") # very few have 
hist(train_df$GarageArea, main = "Garage Area Distribtion", col = "red")

plot(train_df$HouseStyle, main = "House Style Plotted", col = "black")
plot(train_df$RoofStyle, main = "Roof style plotted", col = "orange")
plot(train_df$Neighborhood, main = "Neighborhood plotted", col = "green")

plot(train_df$Fireplaces, main = "Fireplace plotted", col = "yellow")
boxplot(train_df$Fireplaces, main = "Fireplaces plotted", col = "yellow")
plot(train_df$Fireplaces, main = "Fireplaces plotted", col = "yellow")
hist(train_df$Fireplaces, main = "Fireplaces plotted", col = "yellow")

boxplot(train_df$BedroomAbvGr,  main = "Number of bedrooms plotted", col = "red") # appears to be outliers
hist(train_df$BedroomAbvGr, main = "Number of bedrooms plotted", col = "red")
barplot(train_df$BedroomAbvGr, main = "Number of bedrooms plotted", col = "red")
plot(train_df$BedroomAbvGr, main = "Number of bedrooms plotted", col = "red")

hist(train_df$TotRmsAbvGrd, main = "Total Number of rooms plotted", col = "black")
boxplot(train_df$TotRmsAbvGrd, main = "Total Number of rooms plotted", col = "black")
plot(train_df$TotRmsAbvGrd, main = "Total Number of rooms plotted", col = "black")

hist(train_df$KitchenAbvGr, main = "Kitchen plotted", col = "orange")
plot(train_df$KitchenAbvGr, main = "Kitchen plotted", col = "orange")
barplot(train_df$KitchenAbvGr, main = "Kitchen plotted", col = "orange")
boxplot(train_df$KitchenAbvGr, main = "Kitchen plotted", col = "orange")

plot(train_df$GarageType, main = "Garage Type plotted", col = "purple")

plot(train_df$PoolQC, main = "Pool Area plotted", col = "pink")

plot(train_df$SaleType, main = "Sale Type Plotted", col = "grey")

hist(train_df$YearBuilt, main = "Year Built Plotted", col = "grey")
boxplot(train_df$YearBuilt, main = "Year Built Plotted", col = "grey")
plot(train_df$YearBuilt, main = "Year Built Plotted", col = train_df$SaleType) 
plot(train_df$YearBuilt, main = "Year Built Plotted", col = train_df$Sale)

  