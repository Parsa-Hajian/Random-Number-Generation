# Random-Number-Generation

A comprehensive guide to generating random numbers in R using various approaches.

---

## Overview

This repository demonstrates how to generate random numbers in R, including drawing from built-in statistical distributions, custom sampling techniques, and practical applications.

---

## Table of Contents

1. [Generating Random Numbers from Statistical Distributions](#1-generating-random-numbers-from-statistical-distributions)  
   a. [Uniform Distribution](#a-uniform-distribution)  
   b. [Normal Distribution](#b-normal-distribution)  
   c. [Binomial Distribution](#c-binomial-distribution)  
   d. [Poisson Distribution](#d-poisson-distribution)  
2. [Sampling from Custom Data](#2-sampling-from-custom-data)  
   a. [Basic Sampling](#a-basic-sampling)  
   b. [Weighted Sampling](#b-weighted-sampling)  
---

## 1. Generating Random Numbers from Statistical Distributions

### a) Uniform Distribution

**Function:** `runif(n, min, max)`  
- `n`: Number of samples to generate.  
- `min`: Minimum value (default is 0).  
- `max`: Maximum value (default is 1).

**Example:**
```r
runif(5)            # Generates 5 samples between 0 and 1
runif(5, 10, 20)    # Generates 5 samples between 10 and 20
 ```

### b) Normal Distribution

**Function:** `rnorm(n, mean, sd)`

- `n` : Number of samples to generate.
- `mean`: Mean of the distribution (default is 0).
- `sd`: Standard deviation (default is 1).

**Example:**
```r
rnorm(5)            # Generates 5 samples with mean 0 and sd 1
rnorm(5, 10, 2)     # Generates 5 samples with mean 10 and sd 2 
```
### c) Binomial Distribution

**Function:** rbinom(n, size, prob)

-  `n`: Number of replicates.
-  `size`: Number of trials per replicate.
-  `prob`: Probability of success in each trial.

**Example:**
```r
rbinom(5, size = 10, prob = 0.5)  # 5 replicates, 10 trials each, 50% success rate
```
### d) Poisson Distribution

**Function:** rpois(n, lambda)

-  `n`: Number of samples to generate.
-  `lambda`: Expected number of occurrences (rate).

**Example:**
```r
rpois(5, lambda = 3)  # Generates 5 samples with rate 3
```
## 2. Sampling from Custom Data

### a) Basic Sampling

**Function:** `sample(data, size)`  
- `data`: Vector of data to sample from.  
- `size`: Number of samples to draw.

**Example:**
```r
sample(1:10, 5)  # Randomly selects 5 values from 1 to 10
```
### b) Weighted Sampling

**Function:** sample(data, size, prob)

    prob: Probability weights for sampling.

**Example:**
```r
sample(1:3, size = 5, replace = TRUE, prob = c(0.1, 0.7, 0.2))   # Samples with probabilities: 1 (10%), 2 (70%), 3 (20%)
```
