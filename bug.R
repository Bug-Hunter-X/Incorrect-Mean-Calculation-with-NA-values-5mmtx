```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vectors
  } else {
    total <- sum(x)
    mean <- total / length(x)
    return(mean)
  }
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- numeric(0) # Empty vector
vec3 <- c(10, NA, 20, 30)

print(calculate_mean(vec1))  # Correct output
print(calculate_mean(vec2))  # Correct output
print(calculate_mean(vec3)) #Incorrect Output: NaN instead of 20
```