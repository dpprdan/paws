% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpclattice_operations.R
\name{vpclattice_create_resource_gateway}
\alias{vpclattice_create_resource_gateway}
\title{Creates a resource gateway}
\usage{
vpclattice_create_resource_gateway(
  clientToken = NULL,
  ipAddressType = NULL,
  name,
  securityGroupIds = NULL,
  subnetIds,
  tags = NULL,
  vpcIdentifier
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.}

\item{ipAddressType}{The type of IP address used by the resource gateway.}

\item{name}{[required] The name of the resource gateway.}

\item{securityGroupIds}{The IDs of the security groups to apply to the resource gateway. The
security groups must be in the same VPC.}

\item{subnetIds}{[required] The IDs of the VPC subnets in which to create the resource gateway.}

\item{tags}{The tags for the resource gateway.}

\item{vpcIdentifier}{[required] The ID of the VPC for the resource gateway.}
}
\description{
Creates a resource gateway.

See \url{https://www.paws-r-sdk.com/docs/vpclattice_create_resource_gateway/} for full documentation.
}
\keyword{internal}
