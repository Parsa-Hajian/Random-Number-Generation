# Random Number Generation: Intermediate Example and Analysis

# Set the random seed for reproducibility
set.seed(42)

# 1. Uniform Distribution Example and Analysis

# Generate 1000 samples from a uniform distribution between 0 and 100
uniform_data <- runif(1000, min = 0, max = 100)

# Visualize the distribution of the generated data
hist(uniform_data, main = "Histogram of Uniform Distribution (0 to 100)", 
     xlab = "Value", col = "lightblue", border = "black")

# Summary Statistics
uniform_summary <- summary(uniform_data)
cat("\nSummary Statistics for Uniform Distribution (0 to 100):\n")
print(uniform_summary)

# 2. Normal Distribution Example and Analysis

# Generate 1000 samples from a normal distribution with mean = 50 and sd = 10
normal_data <- rnorm(1000, mean = 50, sd = 10)

# Visualize the distribution of the generated data
hist(normal_data, main = "Histogram of Normal Distribution (mean = 50, sd = 10)", 
     xlab = "Value", col = "lightgreen", border = "black")

# Summary Statistics
normal_summary <- summary(normal_data)
cat("\nSummary Statistics for Normal Distribution (mean = 50, sd = 10):\n")
print(normal_summary)

# Calculate and compare the mean and standard deviation
cat("\nCalculated Mean and Standard Deviation for Normal Distribution:\n")
cat("Mean: ", mean(normal_data), "\n")
cat("Standard Deviation: ", sd(normal_data), "\n")

# 3. Binomial Distribution Example and Analysis

# Simulate 1000 coin flips (success = 1, failure = 0) with p = 0.5 (fair coin)
binomial_data <- rbinom(1000, size = 1, prob = 0.5)

# Visualize the distribution of the generated data (success/failure)
barplot(table(binomial_data), main = "Binomial Distribution (p = 0.5)",
        xlab = "Outcome", ylab = "Frequency", col = c("lightblue", "lightgreen"))

# Summary Statistics
binomial_summary <- summary(binomial_data)
cat("\nSummary Statistics for Binomial Distribution (p = 0.5):\n")
print(binomial_summary)

# 4. Poisson Distribution Example and Analysis

# Simulate 1000 events occurring randomly over a time period (lambda = 3)
poisson_data <- rpois(1000, lambda = 3)

# Visualize the distribution of the generated data
hist(poisson_data, main = "Histogram of Poisson Distribution (lambda = 3)", 
     xlab = "Number of Events", col = "lightcoral", border = "black")

# Summary Statistics
poisson_summary <- summary(poisson_data)
cat("\nSummary Statistics for Poisson Distribution (lambda = 3):\n")
print(poisson_summary)

# 5. Sampling from Custom Data (Basic and Weighted Sampling)

# Create a sample data set of values
sample_data <- c(10, 20, 30, 40, 50, 60, 70, 80, 90)

# Basic Sampling - Select 5 samples randomly from the data
basic_sample <- sample(sample_data, 5)
cat("\nBasic Sampling (5 samples from the data):\n")
print(basic_sample)

# Weighted Sampling - Weights for each element in the data
weights <- c(0.1, 0.2, 0.3, 0.4, 0.5, 0.2, 0.1, 0.4, 0.3)
weighted_sample <- sample(sample_data, 5, replace = TRUE, prob = weights)
cat("\nWeighted Sampling (5 samples with probabilities):\n")
print(weighted_sample)

# 6. Analysis of Results

# 6.1 Uniform Distribution Analysis
cat("\nUniform Distribution Analysis:")
cat("\nMean:", mean(uniform_data), "Min:", min(uniform_data), "Max:", max(uniform_data))

# 6.2 Normal Distribution Analysis
cat("\nNormal Distribution Analysis:")
cat("\nMean:", mean(normal_data), "Standard Deviation:", sd(normal_data))

# 6.3 Binomial Distribution Analysis
cat("\nBinomial Distribution Analysis:")
cat("\nSuccesses:", sum(binomial_data), "Failures:", length(binomial_data) - sum(binomial_data))

# 6.4 Poisson Distribution Analysis
cat("\nPoisson Distribution Analysis:")
cat("\nMean:", mean(poisson_data), "Variance:", var(poisson_data))

# Visualize the results from all distributions on a single plot for comparison
par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid
hist(uniform_data, main = "Uniform Distribution", col = "lightblue", border = "black")
hist(normal_data, main = "Normal Distribution", col = "lightgreen", border = "black")
hist(binomial_data, main = "Binomial Distribution", col = "lightyellow", border = "black")
hist(poisson_data, main = "Poisson Distribution", col = "lightcoral", border = "black")
par(mfrow = c(1, 1))  # Reset to default single plot layout
