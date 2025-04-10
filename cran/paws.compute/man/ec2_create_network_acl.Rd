% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_network_acl}
\alias{ec2_create_network_acl}
\title{Creates a network ACL in a VPC}
\usage{
ec2_create_network_acl(
  TagSpecifications = NULL,
  ClientToken = NULL,
  DryRun = NULL,
  VpcId
)
}
\arguments{
\item{TagSpecifications}{The tags to assign to the network ACL.}

\item{ClientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{VpcId}{[required] The ID of the VPC.}
}
\description{
Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_network_acl/} for full documentation.
}
\keyword{internal}
