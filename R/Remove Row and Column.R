#Remove Row and Columns
install.packages("dplyr")
library(dplyr)

# Create a data frame
data <- data.frame(
  friend_id = c(1, 2, 3, 4, 5),
  friend_name = c("Sachin", "Sourav", "Dravid", "Sehwag", "Dhoni"),
  location = c("Kolkata", "Delhi", "Banglore", "Hyderabad","Chennai")
)

data

#Remove a row with friend_id =3 
data <- subset(data, friend_id != 3)

data


#Remove the 'Location' column
data <- select(data, -location)
data