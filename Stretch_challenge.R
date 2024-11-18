#Tidy up the combined_group_data
#Calculate mean height and age of people from each country
#Order data from largest mean height to smallest, plot bubble plot
#Make the names of the countries readable
#Label the axes appropriately
#Use only tidyverse
#Follow good coding practice

#calling the library
library(tidyverse)
#viewing the data
combined_group_data
#grouping the data by country
data_by_country <- combined_group_data %>%
  group_by(country_of_birth) %>%
  
  #calculating mean height and mean age
  summarise(
    mean_height = mean(height),
    mean_age = mean(age))
#viewing data
data_by_country

#Ordering in descending order
ordered_data_ht <- data_by_country %>%
  arrange(desc(mean_height))

#viewing data
ordered_data_ht


#Bubble plot
#using ggplot
ggplot(ordered_data_ht, aes(x=country_of_birth, y=mean_height, size=mean_age))+
  geom_point(alpha=0.4)+
  #adjusting the labelling on the x axis for visibility
  theme(axis.text.x=element_text(angle=45, hjust=1)) 





