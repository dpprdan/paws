% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_create_export_task}
\alias{cloudwatchlogs_create_export_task}
\title{Creates an export task so that you can efficiently export data from a
log group to an Amazon S3 bucket}
\usage{
cloudwatchlogs_create_export_task(
  taskName = NULL,
  logGroupName,
  logStreamNamePrefix = NULL,
  from,
  to,
  destination,
  destinationPrefix = NULL
)
}
\arguments{
\item{taskName}{The name of the export task.}

\item{logGroupName}{[required] The name of the log group.}

\item{logStreamNamePrefix}{Export only log streams that match the provided prefix. If you don't
specify a value, no prefix filter is applied.}

\item{from}{[required] The start time of the range for the request, expressed as the number of
milliseconds after \verb{Jan 1, 1970 00:00:00 UTC}. Events with a timestamp
earlier than this time are not exported.}

\item{to}{[required] The end time of the range for the request, expressed as the number of
milliseconds after \verb{Jan 1, 1970 00:00:00 UTC}. Events with a timestamp
later than this time are not exported.

You must specify a time that is not earlier than when this log group was
created.}

\item{destination}{[required] The name of S3 bucket for the exported log data. The bucket must be in
the same Amazon Web Services Region.}

\item{destinationPrefix}{The prefix used as the start of the key for every object exported. If
you don't specify a value, the default is \code{exportedlogs}.

The length of this parameter must comply with the S3 object key name
length limits. The object key name is a sequence of Unicode characters
with UTF-8 encoding, and can be up to 1,024 bytes.}
}
\description{
Creates an export task so that you can efficiently export data from a log group to an Amazon S3 bucket. When you perform a \code{\link[=cloudwatchlogs_create_export_task]{create_export_task}} operation, you must use credentials that have permission to write to the S3 bucket that you specify as the destination.

See \url{https://www.paws-r-sdk.com/docs/cloudwatchlogs_create_export_task/} for full documentation.
}
\keyword{internal}
