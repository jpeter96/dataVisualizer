# dataVisualizer 📊
R package for creating customizable visualizations for data analysis



## dataVisualizer 📊
### Introduction 📝
`dataVisualizer` is an R package designed to simplify the creation of customizable visualizations for data analysis using `ggplot2`. This package was built for a university project in R
### Installation 🖥️
You can simply install the package from GitHub using the following command:

```R
remotes::install_github("jpeter96/dataVisualizer")
```

### Usage 📊
The package has 2 main functions: "plot_histogram" and "plot_scatter".

1. **plot_histogram**

**Usage**
This function allows you to create a histogram for a given numeric vector. You can use it like this:
```R
library(dataVisualizer)

# Example 1: Basic Histogram
plot_histogram(mtcars$mpg, bins = 10, title = "MPG Histogram")

# Example 2: Custom Histogram with different bin size
plot_histogram(iris$Sepal.Length, bins = 20, title = "Sepal Length Histogram", xlab = "Sepal Length", ylab = "Frequency")

# Example 3: Histogram of randomly generated data
random_data <- rnorm(1000, mean = 50, sd = 10)
plot_histogram(random_data, bins = 15, title = "Random Data Histogram", xlab = "Values", ylab = "Count")
```
The function takes the following arguments:

data: A numeric vector.
bins: Number of bins for the histogram. Default is 30.
title: Title of the histogram. Default is "Histogram".
xlab: Label for the x-axis. Default is "Value".
ylab: Label for the y-axis. Default is "Frequency".

**Output**
The output is a ggplot2 object representing the histogram.

**Explanation**
The function works by plotting a histogram of the given numeric vector using ggplot2. It allows customization of the number of bins, title, and axis labels.


2. **plot_scatter**:
   
**Usage**
This function allows you to create a scatter plot for two numeric vectors. You can use it like this:
```R
library(dataVisualizer)

# Example 1: Basic Scatter Plot
plot_scatter(mtcars$wt, mtcars$mpg, title = "Weight vs MPG", xlab = "Weight", ylab = "MPG")

# Example 2: Scatter Plot with Iris Dataset
plot_scatter(iris$Sepal.Length, iris$Sepal.Width, title = "Sepal Length vs Width", xlab = "Sepal Length", ylab = "Sepal Width")

# Example 3: Scatter Plot with Random Data
random_x <- rnorm(100)
random_y <- rnorm(100)
plot_scatter(random_x, random_y, title = "Random Scatter Plot", xlab = "Random X", ylab = "Random Y")
```
The function takes the following arguments:

x: A numeric vector for the x-axis.
y: A numeric vector for the y-axis.
title: Title of the scatter plot. Default is "Scatter Plot".
xlab: Label for the x-axis. Default is "X".
ylab: Label for the y-axis. Default is "Y".

**Output**
The output is a ggplot2 object representing the scatter plot.

**Explanation**
The function works by plotting a scatter plot of the given numeric vectors using ggplot2. It allows customization of the title and axis labels.


### Contribution 🤝
If you want to contribute to the package, feel free to open a pull request.

### License 📜
MIT License: https://opensource.org/licenses/MIT
## License Badge Changelog Badge Version Badge
<!-- You can add badges here using shields.io, for example: -->
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)


### Disclaimer 🚨
This package is for educational purposes only. I am not responsible for any misuse of the package. Use at your own risk.
