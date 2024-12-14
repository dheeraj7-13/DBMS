#Combining Data Frames in R
# Creating two sample dataframes
df1 <- data.frame(
  Name = c("Alice","Bob"),
  Age = c(25, 30),
  Score = c(80, 75)
)

df2 <- data.frame(
  Name = c("Charlie","David"),
  Age = c(28, 35),
  Score = c(90, 85)
)

#Print the exixting dataframe
cat("Dataframe 1:\n")
print(df1)

cat("\nDataframe 2:\n")
print(df2)

#Combining the dataframes using rbind()
combine_df <- rbind(df1, df2)

#Print the combined dataframe
cat("\nCombined Dataframes:\n")
print(combine_df)

#Combining the dataframes using cbind()
combine_df <- cbind(df1, df2)

#Print the combined dataframe
cat("\nCombined Dataframes:\n")
print(combine_df)

