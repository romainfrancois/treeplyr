% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treeplyr_functions.R
\name{select_.treedata}
\alias{select_.treedata}
\alias{select_.grouped_treedata}
\title{Function for selecting columns from an object of class \code{treedata}}
\usage{
\method{select_}{treedata}(.data, ..., .dots = list())
}
\arguments{
\item{.data}{An object of class \code{treedata}}

\item{...}{Additional arguments to select columns}

\item{.dots}{Used to work around non-standard evaluation. See \code{vignette}("nse") for details.}
}
\value{
An object of class \code{treedata} with specified variables selected.
}
\description{
This function can be used to select a subset of variables (columns) from a treedata object; 
see \code{\link{select}}.
}
\examples{
data(anolis)
td <- make.treedata(anolis$phy, anolis$dat)
tdselect <- select(td, SVL, awesomeness)
}
\seealso{
\code{\link{select}}
}
