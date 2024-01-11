data=read.csv()
View(data)
#Checking dimensions of the data
dim(data)
#There are 74 observations with 20 vaiables
# Descriptive analysis of numerical data
summary(data[sapply(data,is.numeric)])
#Descriptive analysis of categorical data
library(dplyr)
#Getting the frequency of top 5 players of the match
data %>% group_by(player_of_the_match) %>% summarixe(count=n())%>% arrange(desc(count)) %>% head(5)
#Getting the frequency of top 5 scorer of the match
data %>% group_by(top_scorer) %>% summarixe(count=n()) %>% arrange(desc(count)) %>% head(5)
#Creating bar plot to see number of winner in IPL 2022
library(ggplot2)
ggplot(data,aes(match_winner)) + geom_bar(fill="blue") + labs(title="Number of Match winner")
#Creating a scatter plot for both winnings score
ggplot(data,aes(x=first_ings_score,y=second_ings_score)) + geom_point(color="blue")

