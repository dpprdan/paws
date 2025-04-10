% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatch_operations.R
\name{cloudwatch_list_metrics}
\alias{cloudwatch_list_metrics}
\title{List the specified metrics}
\usage{
cloudwatch_list_metrics(
  Namespace = NULL,
  MetricName = NULL,
  Dimensions = NULL,
  NextToken = NULL,
  RecentlyActive = NULL,
  IncludeLinkedAccounts = NULL,
  OwningAccount = NULL
)
}
\arguments{
\item{Namespace}{The metric namespace to filter against. Only the namespace that matches
exactly will be returned.}

\item{MetricName}{The name of the metric to filter against. Only the metrics with names
that match exactly will be returned.}

\item{Dimensions}{The dimensions to filter against. Only the dimensions that match exactly
will be returned.}

\item{NextToken}{The token returned by a previous call to indicate that there is more
data available.}

\item{RecentlyActive}{To filter the results to show only metrics that have had data points
published in the past three hours, specify this parameter with a value
of \code{PT3H}. This is the only valid value for this parameter.

The results that are returned are an approximation of the value you
specify. There is a low probability that the returned results include
metrics with last published data as much as 50 minutes more than the
specified time interval.}

\item{IncludeLinkedAccounts}{If you are using this operation in a monitoring account, specify \code{true}
to include metrics from source accounts in the returned data.

The default is \code{false}.}

\item{OwningAccount}{When you use this operation in a monitoring account, use this field to
return metrics only from one source account. To do so, specify that
source account ID in this field, and also specify \code{true} for
\code{IncludeLinkedAccounts}.}
}
\description{
List the specified metrics. You can use the returned metrics with \code{\link[=cloudwatch_get_metric_data]{get_metric_data}} or \code{\link[=cloudwatch_get_metric_statistics]{get_metric_statistics}} to get statistical data.

See \url{https://www.paws-r-sdk.com/docs/cloudwatch_list_metrics/} for full documentation.
}
\keyword{internal}
