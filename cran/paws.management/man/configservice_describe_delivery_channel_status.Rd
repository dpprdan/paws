% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_describe_delivery_channel_status}
\alias{configservice_describe_delivery_channel_status}
\title{Returns the current status of the specified delivery channel}
\usage{
configservice_describe_delivery_channel_status(DeliveryChannelNames = NULL)
}
\arguments{
\item{DeliveryChannelNames}{A list of delivery channel names.}
}
\description{
Returns the current status of the specified delivery channel. If a delivery channel is not specified, this operation returns the current status of all delivery channels associated with the account.

See \url{https://www.paws-r-sdk.com/docs/configservice_describe_delivery_channel_status/} for full documentation.
}
\keyword{internal}
