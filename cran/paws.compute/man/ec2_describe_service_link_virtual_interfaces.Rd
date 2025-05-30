% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_service_link_virtual_interfaces}
\alias{ec2_describe_service_link_virtual_interfaces}
\title{Describes the Outpost service link virtual interfaces}
\usage{
ec2_describe_service_link_virtual_interfaces(
  ServiceLinkVirtualInterfaceIds = NULL,
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL,
  DryRun = NULL
)
}
\arguments{
\item{ServiceLinkVirtualInterfaceIds}{The IDs of the service link virtual interfaces.}

\item{Filters}{The filters to use for narrowing down the request. The following filters
are supported:
\itemize{
\item \code{outpost-lag-id} - The ID of the Outpost LAG.
\item \code{outpost-arn} - The Outpost ARN.
\item \code{owner-id} - The ID of the Amazon Web Services account that owns the
service link virtual interface.
\item \code{state} - The state of the Outpost LAG.
\item \code{vlan} - The ID of the address pool.
\item \code{service-link-virtual-interface-id} - The ID of the service link
virtual interface.
\item \code{local-gateway-virtual-interface-id} - The ID of the local gateway
virtual interface.
}}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}

\item{NextToken}{The token for the next page of results.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Describes the Outpost service link virtual interfaces.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_service_link_virtual_interfaces/} for full documentation.
}
\keyword{internal}
