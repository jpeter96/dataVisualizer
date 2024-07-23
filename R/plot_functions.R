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
#' @examples
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
#' @examples
#' plot_scatter(mtcars$wt, mtcars$mpg, title = "Weight vs MPG")
plot_scatter <- function(x, y, title = "Scatter Plot", xlab = "X", ylab = "Y") {
  ggplot2::ggplot(data = data.frame(x = x, y = y), ggplot2::aes(x = x, y = y)) +
    ggplot2::geom_point(color = "red") +
    ggplot2::labs(title = title, x = xlab, y = ylab)
}
