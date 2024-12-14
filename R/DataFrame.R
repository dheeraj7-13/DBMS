# R program to create dataframe
# creating a data frame
friend.data <- data.frame(
  friend_id = c(1:5),
  friend_name = c("Sachin","Sourav",
                   "Dravid","Sehwag",
                  "Dhoni"),
  stringsAsFactors = FALSE
)
#print the data frame
print(friend.data)

# R program to get the structure of the data frame
#using str()
print(str(friend.data))


# R Program to get the summary of the data frame
#using summary()
print(summary(friend.data))


# R program to extract data from the data frame
#Expanding data frame
friend.data$location <- c("Kolkata", "Delhi",
                          "Banglore","Hyderabad",
                          "Chennai")
resultant <- friend.data
#print the modified data frame
print(resultant)

#Access Items using[]
friend.data[1]

#Access Items using [[]]
friend.data[['friend_name']]

#Access Items using $
friend.data$friend_id

#find out the number of rows and columns
dim(friend.data)