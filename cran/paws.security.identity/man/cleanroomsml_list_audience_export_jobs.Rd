% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_list_audience_export_jobs}
\alias{cleanroomsml_list_audience_export_jobs}
\title{Returns a list of the audience export jobs}
\usage{
cleanroomsml_list_audience_export_jobs(
  nextToken = NULL,
  maxResults = NULL,
  audienceGenerationJobArn = NULL
)
}
\arguments{
\item{nextToken}{The token value retrieved from a previous call to access the next page
of results.}

\item{maxResults}{The maximum size of the results that is returned per call.}

\item{audienceGenerationJobArn}{The Amazon Resource Name (ARN) of the audience generation job that you
are interested in.}
}
\description{
Returns a list of the audience export jobs.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_list_audience_export_jobs/} for full documentation.
}
\keyword{internal}
