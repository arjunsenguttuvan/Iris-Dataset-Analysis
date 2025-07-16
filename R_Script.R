# -------------------------------------
# Module 1: Basics of R Programming for Bioinformatics
# Using iris.csv data
# -------------------------------------

# 1. Load required packages
install.packages("ggplot2")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

library(ggplot2)
# For Bioconductor package
BiocManager::install("limma")
library(limma)

install.packages("ggplot2")    # only if you haven't installed before
library(ggplot2)               # must be loaded every new session


# 2. Learn Basic R Data Types
# Vectors
species <- c("setosa", "versicolor", "virginica")
lengths <- c(5.1, 5.9, 6.5)

# Matrices
matrix_data <- matrix(1:6, nrow = 2, ncol = 3)
print(matrix_data)

# Data Frame
example_df <- data.frame(Species = species, AvgLength = lengths)
print(example_df)

# 3. Import CSV data
iris_data <- read.csv("C:\\Users\\Ashok Senguttuvan\\Desktop\\Arjun_Bioture\\iris.csv")
head(iris_data)

# 4. Basic Statistics
mean(iris_data$sepal_length)
sd(iris_data$sepal_width)
summary(iris_data)

# 5. Plot Graphs (Base R)
barplot(iris_data$sepal_length[1:10],
        names.arg = iris_data$species[1:10],
        col = "skyblue",
        main = "Sepal Length Bar Plot (First 10 Samples)")

hist(iris_data$sepal_length,
     col = "lightgreen",
     main = "Histogram of Sepal Length")

plot(iris_data$sepal_length,
     iris_data$sepal_width,
     col = "red",
     main = "Sepal Length vs Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width")

# 6. Plot with ggplot2
ggplot(iris_data, aes(x = species, y = sepal_length, fill = species)) +
  geom_boxplot() +
  ggtitle("Sepal Length by Species (ggplot2)") +
  theme_minimal()

# 7. Bioconductor package example (limma)

# Load limmaa
library(limma)

# Explore: list available functions
ls("package:limma")

# Help page
help(package = "limma")

# Description
packageDescription("limma")


print("limma package is installed and loaded!")


# In this assignment, I used R to create vectors, matrices, and data frames to represent gene expression data. 
# I imported a CSV file and performed basic statistical analysis using mean(), sd(), and summary(). 
# Finally, I visualized the data with barplots, histograms, and ggplot2 to better understand expression patterns.
