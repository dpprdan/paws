% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_describe_integrations}
\alias{redshift_describe_integrations}
\title{Describes one or more zero-ETL or S3 event integrations with Amazon
Redshift}
\usage{
redshift_describe_integrations(
  IntegrationArn = NULL,
  MaxRecords = NULL,
  Marker = NULL,
  Filters = NULL
)
}
\arguments{
\item{IntegrationArn}{The unique identifier of the integration.}

\item{MaxRecords}{The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified \code{MaxRecords}
value, a value is returned in a \code{marker} field of the response. You can
retrieve the next set of records by retrying the command with the
returned marker value.

Default: \code{100}

Constraints: minimum 20, maximum 100.}

\item{Marker}{An optional pagination token provided by a previous
\code{\link[=redshift_describe_integrations]{describe_integrations}} request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by \code{MaxRecords}.}

\item{Filters}{A filter that specifies one or more resources to return.}
}
\description{
Describes one or more zero-ETL or S3 event integrations with Amazon Redshift.

See \url{https://www.paws-r-sdk.com/docs/redshift_describe_integrations/} for full documentation.
}
\keyword{internal}
