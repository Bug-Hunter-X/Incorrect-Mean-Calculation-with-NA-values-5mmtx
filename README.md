# R Bug: Incorrect Mean Calculation with NA values

This repository demonstrates a common, yet subtle, bug in R code related to calculating the mean of a vector containing `NA` (Not Available) values. The `calculate_mean` function, as initially written, produces unexpected `NaN` (Not a Number) results instead of handling `NA` values correctly.  The solution shows how to correctly handle this scenario to provide a robust mean calculation.  This is a crucial concept for data cleaning and analysis in R.

## Bug:
The bug lies in how the `sum()` function handles `NA` values. When an `NA` is present, `sum()` returns `NA`, which then causes the division to result in `NaN` when calculating the mean. 

## Solution:
The provided solution demonstrates how to utilize the `na.rm = TRUE` argument within the `sum()` and `mean()` functions to exclude `NA` values during calculations, ensuring the function returns the correct mean even when dealing with vectors containing missing data.