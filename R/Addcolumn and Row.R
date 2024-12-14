#Add Rows and Columns in R Data Frame
#Creating a dataframe respresenting products in store
Products <- data.frame(
  Product_ID = c(101,102,103),
  Product_Name = c("T-Shirt","Jeans","Shoes"),
  Price = c(15.99, 29.99, 49.99),
  Stock = c(50, 30, 25)
)
#Print the existing dataframe
cat("Existing dataframe (Products):\n")
print(Products)

#Adding a new row for a new product
New_Product <- c(104, "Sunglasses", 39.99, 40)
product <-rbind(Products, New_Product)

#Print the updated dataframe after adding the new product
cat("\nUpdated dataframe after adding a new product:\n")
print(product)


#Adding a new column for 'Discount' to the dataframe
Discount <- c(5,10,8,15) #New column values for discount
Product <- cbind(product, Discount)
print(Product)

#Rename the added column
colnames(Products)[ncol(product)] <- "Discount"
#Renaming the last column

#Print the updated dataframe after adding the new column
cat("\nUpdated dataframes after adding a new column 'Discount':\n")
print(Products)