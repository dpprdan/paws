% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securitylake_operations.R
\name{securitylake_list_data_lake_exceptions}
\alias{securitylake_list_data_lake_exceptions}
\title{Lists the Amazon Security Lake exceptions that you can use to find the
source of problems and fix them}
\usage{
securitylake_list_data_lake_exceptions(
  maxResults = NULL,
  nextToken = NULL,
  regions = NULL
)
}
\arguments{
\item{maxResults}{Lists the maximum number of failures in Security Lake.}

\item{nextToken}{Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return an HTTP 400 InvalidToken error.}

\item{regions}{The Amazon Web Services Regions from which exceptions are retrieved.}
}
\description{
Lists the Amazon Security Lake exceptions that you can use to find the source of problems and fix them.

See \url{https://www.paws-r-sdk.com/docs/securitylake_list_data_lake_exceptions/} for full documentation.
}
\keyword{internal}
