% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/licensemanagerusersubscriptions_operations.R
\name{licensemanagerusersubscriptions_list_instances}
\alias{licensemanagerusersubscriptions_list_instances}
\title{Lists the EC2 instances providing user-based subscriptions}
\usage{
licensemanagerusersubscriptions_list_instances(
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{Filters}{You can use the following filters to streamline results:
\itemize{
\item Status
\item InstanceId
}}

\item{MaxResults}{The maximum number of results to return from a single request.}

\item{NextToken}{A token to specify where to start paginating. This is the nextToken from
a previously truncated response.}
}
\description{
Lists the EC2 instances providing user-based subscriptions.

See \url{https://www.paws-r-sdk.com/docs/licensemanagerusersubscriptions_list_instances/} for full documentation.
}
\keyword{internal}
