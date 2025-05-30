% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_get_log_anomaly_detector}
\alias{cloudwatchlogs_get_log_anomaly_detector}
\title{Retrieves information about the log anomaly detector that you specify}
\usage{
cloudwatchlogs_get_log_anomaly_detector(anomalyDetectorArn)
}
\arguments{
\item{anomalyDetectorArn}{[required] The ARN of the anomaly detector to retrieve information about. You can
find the ARNs of log anomaly detectors in your account by using the
\code{\link[=cloudwatchlogs_list_log_anomaly_detectors]{list_log_anomaly_detectors}}
operation.}
}
\description{
Retrieves information about the log anomaly detector that you specify. The KMS key ARN detected is valid.

See \url{https://www.paws-r-sdk.com/docs/cloudwatchlogs_get_log_anomaly_detector/} for full documentation.
}
\keyword{internal}
