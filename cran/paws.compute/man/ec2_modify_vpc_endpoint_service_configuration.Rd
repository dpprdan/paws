% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_vpc_endpoint_service_configuration}
\alias{ec2_modify_vpc_endpoint_service_configuration}
\title{Modifies the attributes of the specified VPC endpoint service
configuration}
\usage{
ec2_modify_vpc_endpoint_service_configuration(
  DryRun = NULL,
  ServiceId,
  PrivateDnsName = NULL,
  RemovePrivateDnsName = NULL,
  AcceptanceRequired = NULL,
  AddNetworkLoadBalancerArns = NULL,
  RemoveNetworkLoadBalancerArns = NULL,
  AddGatewayLoadBalancerArns = NULL,
  RemoveGatewayLoadBalancerArns = NULL,
  AddSupportedIpAddressTypes = NULL,
  RemoveSupportedIpAddressTypes = NULL,
  AddSupportedRegions = NULL,
  RemoveSupportedRegions = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{ServiceId}{[required] The ID of the service.}

\item{PrivateDnsName}{(Interface endpoint configuration) The private DNS name to assign to the
endpoint service.}

\item{RemovePrivateDnsName}{(Interface endpoint configuration) Removes the private DNS name of the
endpoint service.}

\item{AcceptanceRequired}{Indicates whether requests to create an endpoint to the service must be
accepted.}

\item{AddNetworkLoadBalancerArns}{The Amazon Resource Names (ARNs) of Network Load Balancers to add to the
service configuration.}

\item{RemoveNetworkLoadBalancerArns}{The Amazon Resource Names (ARNs) of Network Load Balancers to remove
from the service configuration.}

\item{AddGatewayLoadBalancerArns}{The Amazon Resource Names (ARNs) of Gateway Load Balancers to add to the
service configuration.}

\item{RemoveGatewayLoadBalancerArns}{The Amazon Resource Names (ARNs) of Gateway Load Balancers to remove
from the service configuration.}

\item{AddSupportedIpAddressTypes}{The IP address types to add to the service configuration.}

\item{RemoveSupportedIpAddressTypes}{The IP address types to remove from the service configuration.}

\item{AddSupportedRegions}{The supported Regions to add to the service configuration.}

\item{RemoveSupportedRegions}{The supported Regions to remove from the service configuration.}
}
\description{
Modifies the attributes of the specified VPC endpoint service configuration.

See \url{https://www.paws-r-sdk.com/docs/ec2_modify_vpc_endpoint_service_configuration/} for full documentation.
}
\keyword{internal}
