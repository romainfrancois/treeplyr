% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treeplyr_functions.R
\name{summarise.treedata}
\alias{summarise.treedata}
\alias{summarize.treedata}
\alias{summarize.grouped_treedata}
\alias{summarise.grouped_treedata}
\alias{summarise.grouped_treedata}
\title{Function for summarizing an object of class \code{treedata}}
\usage{
\method{summarise}{treedata}(.data, ...)

\method{summarise}{grouped_treedata}(.data, ...)
}
\arguments{
\item{.data}{An object of class \code{treedata}}

\item{...}{Additional expressions by which to summarize data in the \code{treedata} object}
}
\value{
An object of class \code{tbl_df} with the requested summary data.
}
\description{
This function can be used to summarize a treedata object.
}
\details{
Summarizing \code{treedata} objects allows expressions using the objects \code{phy}. The \code{treedata}
object can also be grouped, with summary statistics being applied to the pruned groups and phylogenies.
}
\examples{
data(anolis)
td <- make.treedata(anolis$phy, anolis$dat)
summarize(td, ntips = length(phy$tip.label), meanSVL = mean(SVL), sdSVL = sd(SVL))
tdGrouped <- group_by(td, ecomorph)
summarize(tdGrouped, ntips = length(phy$tip.label), 
   totalBL = sum(phy$edge.length), meanSVL = mean(SVL), sdSVL = sd(SVL))
}
\seealso{
\code{\link{summarize}}, \code{\link{group_by}}
}
