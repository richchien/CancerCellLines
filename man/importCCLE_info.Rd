% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/importCCLE_info.R
\name{importCCLE_info}
\alias{importCCLE_info}
\title{Import CCLE cell line information}
\usage{
importCCLE_info(fn, con)
}
\arguments{
\item{fn}{The path of the data file}

\item{con}{A \code{SQLiteConnection} object to the database}
}
\value{
TRUE or FALSE depending on whether the data has been written successfully
}
\description{
This function imports the information in CCLE_sample_info_file_2012-10-18.txt into the database.
}

