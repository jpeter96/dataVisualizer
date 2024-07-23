# R/plot_functions.R

#' Plot Histogram
#'
#' This function creates a histogram for a given numeric vector.
#'
#' @param data A numeric vector.
#' @param bins Number of bins for the histogram. Default is 30.
#' @param title Title of the histogram. Default is "Histogram".
#' @param xlab Label for the x-axis. Default is "Value".
#' @param ylab Label for the y-axis. Default is "Frequency".
#' @return A ggplot2 object representing the histogram.
#' @export
#' # Example 1: Basic Histogram
#' plot_histogram(mtcars$mpg, bins = 10, title = "MPG Histogram")
#'
#' # Example 2: Custom Histogram with different bin size
#' plot_histogram(iris$Sepal.Length, bins = 20, title = "Sepal Length Histogram", xlab = "Sepal Length", ylab = "Frequency")
#'
#' # Example 3: Histogram of randomly generated data
#' random_data <- rnorm(1000, mean = 50, sd = 10)
#' plot_histogram(random_data, bins = 15, title = "Random Data Histogram", xlab = "Values", ylab = "Count")
#' plot_histogram(mtcars$mpg, bins = 10, title = "MPG Histogram")
plot_histogram <- function(data, bins = 30, title = "Histogram", xlab = "Value", ylab = "Frequency") {
  ggplot2::ggplot(data = data.frame(x = data), ggplot2::aes(x = x)) +
    ggplot2::geom_histogram(bins = bins, fill = "blue", color = "black") +
    ggplot2::labs(title = title, x = xlab, y = ylab)
}


#' Plot Scatter
#'
#' This function creates a scatter plot for two numeric vectors.
#'
#' @param x A numeric vector for the x-axis.
#' @param y A numeric vector for the y-axis.
#' @param title Title of the scatter plot. Default is "Scatter Plot".
#' @param xlab Label for the x-axis. Default is "X".
#' @param ylab Label for the y-axis. Default is "Y".
#' @return A ggplot2 object representing the scatter plot.
#' @export
#' # Example 1: Basic Scatter Plot
#' plot_scatter(mtcars$wt, mtcars$mpg, title = "Weight vs MPG", xlab = "Weight", ylab = "MPG")
#'
#' # Example 2: Scatter Plot with Iris Dataset
#' plot_scatter(iris$Sepal.Length, iris$Sepal.Width, title = "Sepal Length vs Width", xlab = "Sepal Length", ylab = "Sepal Width")
#'
#' # Example 3: Scatter Plot with Random Data
#' random_x <- rnorm(100)
#' random_y <- rnorm(100)
#' plot_scatter(random_x, random_y, title = "Random Scatter Plot", xlab = "Random X", ylab = "Random Y")
#' plot_scatter(mtcars$wt, mtcars$mpg, title = "Weight vs MPG")
plot_scatter <- function(x, y, title = "Scatter Plot", xlab = "X", ylab = "Y") {
  ggplot2::ggplot(data = data.frame(x = x, y = y), ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_point(color = "red") +
    ggplot2::labs(title = title, x = xlab, y = ylab)
}
