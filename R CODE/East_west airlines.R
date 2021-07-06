                              #East-West Airlines

library(readxl)
ew1 <- read_excel(file.choose(),sheet=2)
ew <- ew1[ , c(2:12)]

summary(ew)               # Summary of data set
#we know about skewness outliers all things from here.
sum(is.na(ew))           #No missing values are there

#First we have to see is there any outlier or not.
# we have outliers present here...for handle the outliers, we have to treat outliers.we need to normalize the value.

norm <- function(x){
  return ((x-min(x))/(max(x)-min(x)))
} 
norm_ew <- norm(ew)
summary(norm_ew)

# Distance matrix
dist_ew <- dist(norm_ew, method = "euclidean") 

fit <- hclust(dist_ew, method = "complete")

# Display dendrogram
plot(fit) 
plot(fit, hang = -1)

groups <- cutree(fit, k = 5) # Cut tree into 5 clusters

#we'll cluster as per balance of the customer into 5 category.

rect.hclust(fit, k = 3, border = "red")

Category <- as.matrix(groups)

final <- data.frame(Category, ew)

aggregate(ew, by = list(final$Category), FUN = mean)

library(readr)

write_csv(final, "East_west clust.csv")

getwd()


