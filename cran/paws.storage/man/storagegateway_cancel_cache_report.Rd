% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_cancel_cache_report}
\alias{storagegateway_cancel_cache_report}
\title{Cancels generation of a specified cache report}
\usage{
storagegateway_cancel_cache_report(CacheReportARN)
}
\arguments{
\item{CacheReportARN}{[required] The Amazon Resource Name (ARN) of the cache report you want to cancel.}
}
\description{
Cancels generation of a specified cache report. You can use this operation to manually cancel an IN-PROGRESS report for any reason. This action changes the report status from IN-PROGRESS to CANCELLED. You can only cancel in-progress reports. If the the report you attempt to cancel is in FAILED, ERROR, or COMPLETED state, the cancel operation returns an error.

See \url{https://www.paws-r-sdk.com/docs/storagegateway_cancel_cache_report/} for full documentation.
}
\keyword{internal}
