#creating a vector
x <-c("female","male","male","female")
print(x)

#Converting the vector x into a factor
#named gender
gender <-factor(x)
print(gender)

# Creating a factor with levels defined by programmer
gender <- factor(c("female","male","male","female"),
                 levels = c("female","transgender","male"));

gender


#Checking for a Factor in R
gender <- factor(c("female","male","male","female"));
print(is.factor(gender))


#Accessing element of a Factor in R
gender <- factor(c("female","male","male","female"));
gender[3]

#More than one element can be accessed at a time.
gender <- factor(c("female","male","male","female"));
gender[c(2,4)]


#Subtract one element at a time.
gender <- factor(c("female","male","male","female"));
gender[-3]

#Modification of a Factor in R
gender <- factor(c("female","male","male","female"));
gender[2]<-"female"
gender









