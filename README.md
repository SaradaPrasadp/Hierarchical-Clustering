# Hierarchical-Clustering
Clustering is basically a technique that groups similar data points such that the points in the same group are more similar to each other than the points in the other groups. The group of similar data points is called a Cluster.
Hierarchical clustering Technique:
Hierarchical clustering is one of the popular and easy to understand clustering technique. This clustering technique is divided into two types:
Agglomerative
Divisive
Click Here To Claim Yout Complimentary McDonald’s Gift Card
Agglomerative Hierarchical clustering Technique: In this technique, initially each data point is considered as an individual cluster. At each iteration, the similar clusters merge with other clusters until one cluster or K clusters are formed.
The basic algorithm of Agglomerative is straight forward.
Compute the proximity matrix
Let each data point be a cluster
Repeat: Merge the two closest clusters and update the proximity matrix
Until only a single cluster remains
Key operation is the computation of the proximity of two clusters
To understand better let’s see a pictorial representation of the Agglomerative Hierarchical clustering Technique. Lets say we have six data points {A,B,C,D,E,F}.
Step- 1: In the initial step, we calculate the proximity of individual points and consider all the six data points as individual clusters as shown in the image below.

Agglomerative Hierarchical Clustering Technique
Step- 2: In step two, similar clusters are merged together and formed as a single cluster. Let’s consider B,C, and D,E are similar clusters that are merged in step two. Now, we’re left with four clusters which are A, BC, DE, F.
Step- 3: We again calculate the proximity of new clusters and merge the similar clusters to form new clusters A, BC, DEF.
Step- 4: Calculate the proximity of the new clusters. The clusters DEF and BC are similar and merged together to form a new cluster. We’re now left with two clusters A, BCDEF.
Step- 5: Finally, all the clusters are merged together and form a single cluster.
The Hierarchical clustering Technique can be visualized using a Dendrogram.
A Dendrogram is a tree-like diagram that records the sequences of merges or splits.


Dendrogram representation
2. Divisive Hierarchical clustering Technique: Since the Divisive Hierarchical clustering Technique is not much used in the real world, I’ll give a brief of the Divisive Hierarchical clustering Technique.
In simple words, we can say that the Divisive Hierarchical clustering is exactly the opposite of the Agglomerative Hierarchical clustering. In Divisive Hierarchical clustering, we consider all the data points as a single cluster and in each iteration, we separate the data points from the cluster which are not similar. Each data point which is separated is considered as an individual cluster. In the end, we’ll be left with n clusters.
As we’re dividing the single clusters into n clusters, it is named as Divisive Hierarchical clustering.
So, we’ve discussed the two types of the Hierarchical clustering Technique.
But wait!! we’re still left with the important part of Hierarchical clustering.

Q1 = AutoInsurance = 	Perform clustering on mixed data convert the categorical variables to numeric by using dummies or Label Encoding and perform normalization techniques. The data set consists details of customers related to auto insurance. Refer to Autoinsurance.csv dataset.
Q2 =  Telco_Custumer = 3.)	Perform clustering analysis on the telecom data set. The data is a mixture of both categorical and numerical data. It consists the number of customers who churn. Derive insights and get possible information on factors that may affect the churn decision. Refer to Telco_customer_churn.xlsx dataset.
Hint: 
•	Perform EDA and remove unwanted columns.
•	Use Gower dissimilarity matrix, In R use daisy() function.

Q3 = Crime Data = 2.)	Perform clustering for the crime data and identify the number of clusters            formed and draw inferences. Refer to crime_data.csv dataset.

Q3 = EastWest Airlines = 1.)	Perform clustering for the airlines data to obtain optimum number of clusters. Draw the inferences from the clusters obtained. Refer to EastWestAirlines.xlsx dataset.
