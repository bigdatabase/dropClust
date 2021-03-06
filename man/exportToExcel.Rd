% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dropClust.R
\name{exportToExcel}
\alias{exportToExcel}
\title{Export the algorithms results to an Excel file}
\usage{
exportToExcel(data, directory, annotations, raw = FALSE)
}
\arguments{
\item{data}{The result of the dropClust algorithm}

\item{directory}{The parent directory where the files should saved. A new folder with the experiment name will be created (see below).}

\item{annotations}{Some basic metadata about the ddPCR reaction. If you provided \code{\link{runDropClust}} a template, this paramater can be filled with the corresponding field in the result. 
Otherwise, you have to provide a character vector containing a name and the the color channels, e.g. \code{c(Name="ddPCR_01-04-2017", Ch1="HEX", Ch2="FAM")}}

\item{raw}{Boolean which determines if the annotated raw data should be exported along with the final counts. Basically, a third column will be added to the original data, which contains the cluster number to which this point was assigned to.
Useful for example to visualize the clustering later on. (Warning: this can take a while!)}
}
\description{
A convinience function that takes the results of the droplClust algorithm and exports them to an Excel file.
}
\examples{
# Run dropClust
exampleFiles <- list.files(paste0(find.package("dropClust"), "/extdata"), full.names = TRUE)
result <- runDropClust(files = exampleFiles[1:8], template = exampleFiles[9])

# Export the results
dir.create("./Results")
exportToExcel(data = result$results, directory = "./Results/", annotations = result$annotations)

}
