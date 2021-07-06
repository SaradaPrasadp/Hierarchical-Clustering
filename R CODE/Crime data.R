                                       #Crime_Data


cd <- read.csv(file.choose())


summary(cd)               # Summary of data set
#we know about skewness outliers all things from here.
sum(is.na(cd))           #No missing values are there

#First we have to see is there any outlier or not.
# we dont have outliers present here... 

#we need to standarize the value to get in a same scale.

norm <- function(x){
  return ((x-min(x))/(max(x)-min(x)))
} 
std_cd <- scale(cd[ , 2:5] )
summary(std_cd)

# Distance matrix
dist_cd <- dist(norm_cd, method = "euclidean") 

fit <- hclust(dist_cd, method = "complete")

# Display dendrogram
plot(fit) 
plot(fit, hang = -2)

groups <- cutree(fit, k = 3) # Cut tree into 3 clusters

#we'll cluster as per crime rate line maximum , minimum and moderate.

rect.hclust(fit, k = 3, border = "red")

Crime_category <- as.matrix(groups)

final <- data.frame(Crime_category, cd)

aggregate(cd, by = list(final$Crime_category), FUN = mean)

library(readr)

write_csv(final, "Crime data clust.csv")

getwd()
