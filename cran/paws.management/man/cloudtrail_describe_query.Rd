% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_describe_query}
\alias{cloudtrail_describe_query}
\title{Returns metadata about a query, including query run time in
milliseconds, number of events scanned and matched, and query status}
\usage{
cloudtrail_describe_query(
  EventDataStore = NULL,
  QueryId = NULL,
  QueryAlias = NULL,
  RefreshId = NULL,
  EventDataStoreOwnerAccountId = NULL
)
}
\arguments{
\item{EventDataStore}{The ARN (or the ID suffix of the ARN) of an event data store on which
the specified query was run.}

\item{QueryId}{The query ID.}

\item{QueryAlias}{The alias that identifies a query template.}

\item{RefreshId}{The ID of the dashboard refresh.}

\item{EventDataStoreOwnerAccountId}{The account ID of the event data store owner.}
}
\description{
Returns metadata about a query, including query run time in milliseconds, number of events scanned and matched, and query status. If the query results were delivered to an S3 bucket, the response also provides the S3 URI and the delivery status.

See \url{https://www.paws-r-sdk.com/docs/cloudtrail_describe_query/} for full documentation.
}
\keyword{internal}
