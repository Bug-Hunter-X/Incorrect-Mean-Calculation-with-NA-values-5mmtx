```R
# This improved function correctly handles NA values
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vectors
  } else {
    total <- sum(x, na.rm = TRUE) #Remove NAs before summation
    mean <- total / length(x[!is.na(x)]) #consider only non NA values for mean calculation
    return(mean)
  }
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- numeric(0) # Empty vector
vec3 <- c(10, NA, 20, 30)

print(calculate_mean(vec1))  # Correct output: 3
print(calculate_mean(vec2))  # Correct output: NA
print(calculate_mean(vec3)) # Correct output: 20
```