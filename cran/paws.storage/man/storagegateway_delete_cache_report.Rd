% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_delete_cache_report}
\alias{storagegateway_delete_cache_report}
\title{Deletes the specified cache report and any associated tags from the
Storage Gateway database}
\usage{
storagegateway_delete_cache_report(CacheReportARN)
}
\arguments{
\item{CacheReportARN}{[required] The Amazon Resource Name (ARN) of the cache report you want to delete.}
}
\description{
Deletes the specified cache report and any associated tags from the Storage Gateway database. You can only delete completed reports. If the status of the report you attempt to delete still IN-PROGRESS, the delete operation returns an error. You can use \code{\link[=storagegateway_cancel_cache_report]{cancel_cache_report}} to cancel an IN-PROGRESS report.

See \url{https://www.paws-r-sdk.com/docs/storagegateway_delete_cache_report/} for full documentation.
}
\keyword{internal}
