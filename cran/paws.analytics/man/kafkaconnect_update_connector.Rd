% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafkaconnect_operations.R
\name{kafkaconnect_update_connector}
\alias{kafkaconnect_update_connector}
\title{Updates the specified connector}
\usage{
kafkaconnect_update_connector(
  capacity = NULL,
  connectorConfiguration = NULL,
  connectorArn,
  currentVersion
)
}
\arguments{
\item{capacity}{The target capacity.}

\item{connectorConfiguration}{A map of keys to values that represent the configuration for the
connector.}

\item{connectorArn}{[required] The Amazon Resource Name (ARN) of the connector that you want to update.}

\item{currentVersion}{[required] The current version of the connector that you want to update.}
}
\description{
Updates the specified connector.

See \url{https://www.paws-r-sdk.com/docs/kafkaconnect_update_connector/} for full documentation.
}
\keyword{internal}
