% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/marketplacemetering_operations.R
\name{marketplacemetering_register_usage}
\alias{marketplacemetering_register_usage}
\title{Paid container software products sold through Amazon Web Services
Marketplace must integrate with the Amazon Web Services Marketplace
Metering Service and call the RegisterUsage operation for software
entitlement and metering}
\usage{
marketplacemetering_register_usage(ProductCode, PublicKeyVersion, Nonce = NULL)
}
\arguments{
\item{ProductCode}{[required] Product code is used to uniquely identify a product in Amazon Web
Services Marketplace. The product code should be the same as the one
used during the publishing of a new product.}

\item{PublicKeyVersion}{[required] Public Key Version provided by Amazon Web Services Marketplace}

\item{Nonce}{(Optional) To scope down the registration to a specific running software
instance and guard against replay attacks.}
}
\description{
Paid container software products sold through Amazon Web Services Marketplace must integrate with the Amazon Web Services Marketplace Metering Service and call the \code{\link[=marketplacemetering_register_usage]{register_usage}} operation for software entitlement and metering. Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call \code{\link[=marketplacemetering_register_usage]{register_usage}}, but you may choose to do so if you would like to receive usage data in your seller reports. The sections below explain the behavior of \code{\link[=marketplacemetering_register_usage]{register_usage}}. \code{\link[=marketplacemetering_register_usage]{register_usage}} performs two primary functions: metering and entitlement.

See \url{https://www.paws-r-sdk.com/docs/marketplacemetering_register_usage/} for full documentation.
}
\keyword{internal}
