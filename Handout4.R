###################### Lab 4 #########################
# Session -> Set Working Directory -> Choose Directory(choose the directory where you download your data)

# Import it into RStudio and call the data frame genes
data <- read.csv("Handout4_genes.csv", header = T) # a data frame
genes <- data$nucleotides

hist(genes, main = "Distribution of Gene Lengths", xlab = "Gene Length (nucleotides)", right = F, col = "grey")

# calculate the population mean, μ, and standard deviation, σ
mean(genes) # Prelab problem 1
sd(genes)  

# From CLT, the standard deviation of the sampling distribution is
n <- 25 # the sample size
se <- sd(genes)/sqrt(n)
sd(genes)/sqrt(150) # Prelab problem 2


# Draw a sample of n=100 from the vector genes
mysample <- sample(genes, size = n)
mean(mysample)

# Create empty vector to store means
mymeans <- numeric(0)
# Generate 1,000 random samples and store means
for (i in 1:1000) {
  x <- sample(genes, size = n)
  mymeans[i] <- mean(x)
}

# Histogram of sampling distribution
hist(mymeans, main = "Sampling Distribution for n=100", xlab = "Mean Gene Length (nucleotides)", right = F, col = "grey")
mean(mymeans)
