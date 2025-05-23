% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_managed_prefix_list}
\alias{ec2_create_managed_prefix_list}
\title{Creates a managed prefix list}
\usage{
ec2_create_managed_prefix_list(
  DryRun = NULL,
  PrefixListName,
  Entries = NULL,
  MaxEntries,
  TagSpecifications = NULL,
  AddressFamily,
  ClientToken = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{PrefixListName}{[required] A name for the prefix list.

Constraints: Up to 255 characters in length. The name cannot start with
\code{com.amazonaws}.}

\item{Entries}{One or more entries for the prefix list.}

\item{MaxEntries}{[required] The maximum number of entries for the prefix list.}

\item{TagSpecifications}{The tags to apply to the prefix list during creation.}

\item{AddressFamily}{[required] The IP address type.

Valid Values: \code{IPv4} | \code{IPv6}}

\item{ClientToken}{Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}.

Constraints: Up to 255 UTF-8 characters in length.}
}
\description{
Creates a managed prefix list. You can specify entries for the prefix list. Each entry consists of a CIDR block and an optional description.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_managed_prefix_list/} for full documentation.
}
\keyword{internal}
