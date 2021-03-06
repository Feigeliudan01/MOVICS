% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runNTP.R
\name{runNTP}
\alias{runNTP}
\title{Run nearest template prediction}
\usage{
runNTP(
  expr = NULL,
  templates = NULL,
  scaleFlag = TRUE,
  centerFlag = TRUE,
  nPerm = 1000,
  distance = "cosine",
  seed = 123456,
  verbose = TRUE,
  doPlot = FALSE,
  fig.path = getwd(),
  fig.name = "ntpheatmap",
  width = 5,
  height = 5
)
}
\arguments{
\item{expr}{A numeric matrix with row features and sample columns; data is recommended to be z-scored.}

\item{templates}{A data frame with at least two columns; class (coerced to factor) and probe (coerced to character).}

\item{scaleFlag}{A logic value to indicate if the expression data should be further scaled. TRUE by default.}

\item{centerFlag}{A logic value to indicate if the expression data should be further centered. TRUE by default.}

\item{nPerm}{An integer value to indicate the permutations for p-value estimation.}

\item{distance}{A string value to indicate the distance measurement. Allowed values contain c('cosine', 'pearson', 'spearman', 'kendall'); "cosine" by default.}

\item{seed}{An integer value for p-value reproducibility.}

\item{verbose}{A logic value to indicate whether console messages are to be displayed; TRUE by default.}

\item{doPlot}{A logic value to indicate whether to produce prediction heatmap; FALSE by default.}

\item{fig.path}{A string value to indicate the output path for storing the nearest template prediction heatmap.}

\item{fig.name}{A string value to indicate the name of the nearest template prediction heatmap.}

\item{width}{A numeric value to indicate the width of output figure.}

\item{height}{A numeric value to indicate the height of output figure.}
}
\value{
A figure of predictive heatmap by NTP (.pdf) and a list with the following components:

        \code{ntp.res}    a data.frame storing the results of nearest template prediction (see \link[CMScaller]{ntp}).

        \code{clust.res}  similar to `clust.res` returned by `getMOIC()` or `get%algorithm_name%` or `getConsensusMOIC()`.

        \code{mo.method}  a string value indicating the method used for prediction.
}
\description{
Using Nearest Template Prediction (NTP) based on predefined templates derived from current identified subtypes to assign potential subtype label on external cohort.
}
\examples{
# There is no example and please refer to vignette.
}
\references{
Hoshida, Y. (2010). Nearest Template Prediction: A Single-Sample-Based Flexible Class Prediction with Confidence Assessment. PLoS ONE 5, e15543.
}
