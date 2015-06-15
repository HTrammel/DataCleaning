#Quiz 3 -Data Cleaning
#Questions 3-5
# Worthy to keep steps

library(dplyr)

# only grab the ranked countries
gdp <- read.csv("getdata-data-GDP.csv",skip=4,nrows=190)

edstats <- read.csv("getdata-data-EDSTATS_Country.csv")

q_gdp <- gdp 
    %>% rename(rank=X.1, code=X, GDP=X.4, country=X.3) 
    %>% mutate(quant = ntile(rank,5))

mergedData <- merge(q_gdp, edstats, by.x="code", by.y = "CountryCode")

#Question 3

mergedData %>% arrange(desc(rank)) %>% View()
    #visually find #13

#Question 4
tapply(mergedData$rank,mergedData$Income.Group,mean)


#Question 5
table(mergedData$quant,mergedData$Income.Group)
