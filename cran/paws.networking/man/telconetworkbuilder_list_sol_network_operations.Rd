% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/telconetworkbuilder_operations.R
\name{telconetworkbuilder_list_sol_network_operations}
\alias{telconetworkbuilder_list_sol_network_operations}
\title{Lists details for a network operation, including when the operation
started and the status of the operation}
\usage{
telconetworkbuilder_list_sol_network_operations(
  maxResults = NULL,
  nextToken = NULL,
  nsInstanceId = NULL
)
}
\arguments{
\item{maxResults}{The maximum number of results to include in the response.}

\item{nextToken}{The token for the next page of results.}

\item{nsInstanceId}{Network instance id filter, to retrieve network operations associated to
a network instance.}
}
\description{
Lists details for a network operation, including when the operation started and the status of the operation.

See \url{https://www.paws-r-sdk.com/docs/telconetworkbuilder_list_sol_network_operations/} for full documentation.
}
\keyword{internal}
