
getwd()

str(train)

passengers <- train

str(passengers$Sex)

library(dplyr)

sum(passengers$Fare)

passengers%>%
  group_by(Survived, Sex)%>%
  summarize( avgFare = mean(Fare), n(), prcnt = n()/891 * 100)%>%
  arrange(Sex, Survived)
