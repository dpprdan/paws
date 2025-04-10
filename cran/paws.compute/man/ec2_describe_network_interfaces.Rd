% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_network_interfaces}
\alias{ec2_describe_network_interfaces}
\title{Describes the specified network interfaces or all your network
interfaces}
\usage{
ec2_describe_network_interfaces(
  NextToken = NULL,
  MaxResults = NULL,
  DryRun = NULL,
  NetworkInterfaceIds = NULL,
  Filters = NULL
)
}
\arguments{
\item{NextToken}{The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.}

\item{MaxResults}{The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. You cannot specify this parameter and the network interface IDs
parameter in the same request. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination}{Pagination}.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NetworkInterfaceIds}{The network interface IDs.

Default: Describes all your network interfaces.}

\item{Filters}{One or more filters.
\itemize{
\item \code{association.allocation-id} - The allocation ID returned when you
allocated the Elastic IP address (IPv4) for your network interface.
\item \code{association.association-id} - The association ID returned when the
network interface was associated with an IPv4 address.
\item \code{addresses.association.owner-id} - The owner ID of the addresses
associated with the network interface.
\item \code{addresses.association.public-ip} - The association ID returned when
the network interface was associated with the Elastic IP address
(IPv4).
\item \code{addresses.primary} - Whether the private IPv4 address is the
primary IP address associated with the network interface.
\item \code{addresses.private-ip-address} - The private IPv4 addresses
associated with the network interface.
\item \code{association.ip-owner-id} - The owner of the Elastic IP address
(IPv4) associated with the network interface.
\item \code{association.public-ip} - The address of the Elastic IP address
(IPv4) bound to the network interface.
\item \code{association.public-dns-name} - The public DNS name for the network
interface (IPv4).
\item \code{attachment.attach-time} - The time that the network interface was
attached to an instance.
\item \code{attachment.attachment-id} - The ID of the interface attachment.
\item \code{attachment.delete-on-termination} - Indicates whether the
attachment is deleted when an instance is terminated.
\item \code{attachment.device-index} - The device index to which the network
interface is attached.
\item \code{attachment.instance-id} - The ID of the instance to which the
network interface is attached.
\item \code{attachment.instance-owner-id} - The owner ID of the instance to
which the network interface is attached.
\item \code{attachment.status} - The status of the attachment (\code{attaching} |
\code{attached} | \code{detaching} | \code{detached}).
\item \code{availability-zone} - The Availability Zone of the network
interface.
\item \code{description} - The description of the network interface.
\item \code{group-id} - The ID of a security group associated with the network
interface.
\item \code{ipv6-addresses.ipv6-address} - An IPv6 address associated with the
network interface.
\item \code{interface-type} - The type of network interface
(\code{api_gateway_managed} | \code{aws_codestar_connections_managed} |
\code{branch} | \code{ec2_instance_connect_endpoint} | \code{efa} | \code{efa-only} |
\code{efs} | \code{gateway_load_balancer} | \code{gateway_load_balancer_endpoint} |
\code{global_accelerator_managed} | \code{interface} | \code{iot_rules_managed} |
\code{lambda} | \code{load_balancer} | \code{nat_gateway} | \code{network_load_balancer}
| \code{quicksight} | \code{transit_gateway} | \code{trunk} | \code{vpc_endpoint}).
\item \code{mac-address} - The MAC address of the network interface.
\item \code{network-interface-id} - The ID of the network interface.
\item \code{operator.managed} - A Boolean that indicates whether this is a
managed network interface.
\item \code{operator.principal} - The principal that manages the network
interface. Only valid for managed network interfaces, where
\code{managed} is \code{true}.
\item \code{owner-id} - The Amazon Web Services account ID of the network
interface owner.
\item \code{private-dns-name} - The private DNS name of the network interface
(IPv4).
\item \code{private-ip-address} - The private IPv4 address or addresses of the
network interface.
\item \code{requester-id} - The alias or Amazon Web Services account ID of the
principal or service that created the network interface.
\item \code{requester-managed} - Indicates whether the network interface is
being managed by an Amazon Web Services service (for example, Amazon
Web Services Management Console, Auto Scaling, and so on).
\item \code{source-dest-check} - Indicates whether the network interface
performs source/destination checking. A value of \code{true} means
checking is enabled, and \code{false} means checking is disabled. The
value must be \code{false} for the network interface to perform network
address translation (NAT) in your VPC.
\item \code{status} - The status of the network interface. If the network
interface is not attached to an instance, the status is \code{available};
if a network interface is attached to an instance the status is
\verb{in-use}.
\item \code{subnet-id} - The ID of the subnet for the network interface.
\item \code{tag}:\<key\> - The key/value combination of a tag assigned to the
resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner} for
the filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific key,
regardless of the tag value.
\item \code{vpc-id} - The ID of the VPC for the network interface.
}}
}
\description{
Describes the specified network interfaces or all your network interfaces.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_network_interfaces/} for full documentation.
}
\keyword{internal}
