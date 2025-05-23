% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_instance_image_metadata}
\alias{ec2_describe_instance_image_metadata}
\title{Describes the AMI that was used to launch an instance, even if the AMI
is deprecated, deregistered, made private (no longer public or shared
with your account), or not allowed}
\usage{
ec2_describe_instance_image_metadata(
  Filters = NULL,
  InstanceIds = NULL,
  MaxResults = NULL,
  NextToken = NULL,
  DryRun = NULL
)
}
\arguments{
\item{Filters}{The filters.
\itemize{
\item \code{availability-zone} - The name of the Availability Zone (for
example, \verb{us-west-2a}) or Local Zone (for example,
\verb{us-west-2-lax-1b}) of the instance.
\item \code{instance-id} - The ID of the instance.
\item \code{image-allowed} - A Boolean that indicates whether the image meets
the criteria specified for Allowed AMIs.
\item \code{instance-state-name} - The state of the instance (\code{pending} |
\code{running} | \code{shutting-down} | \code{terminated} | \code{stopping} |
\code{stopped}).
\item \code{instance-type} - The type of instance (for example, \code{t3.micro}).
\item \code{launch-time} - The time when the instance was launched, in the ISO
8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for
example, \verb{2023-09-29T11:04:43.305Z}. You can use a wildcard (\code{*}),
for example, \verb{2023-09-29T*}, which matches an entire day.
\item \code{owner-alias} - The owner alias (\code{amazon} | \code{aws-marketplace} |
\code{aws-backup-vault}). The valid aliases are defined in an
Amazon-maintained list. This is not the Amazon Web Services account
alias that can be set using the IAM console. We recommend that you
use the \code{Owner} request parameter instead of this filter.
\item \code{owner-id} - The Amazon Web Services account ID of the owner. We
recommend that you use the \code{Owner} request parameter instead of this
filter.
\item \verb{tag:<key>} - The key/value combination of a tag assigned to the
resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key \code{Owner} and the value \code{TeamA}, specify \code{tag:Owner} for
the filter name and \code{TeamA} for the filter value.
\item \code{tag-key} - The key of a tag assigned to the resource. Use this
filter to find all resources assigned a tag with a specific key,
regardless of the tag value.
\item \code{zone-id} - The ID of the Availability Zone (for example,
\code{usw2-az2}) or Local Zone (for example, \code{usw2-lax1-az1}) of the
instance.
}}

\item{InstanceIds}{The instance IDs.

If you don't specify an instance ID or filters, the output includes
information for all instances.}

\item{MaxResults}{The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination}{Pagination}.

Default: 1000}

\item{NextToken}{The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Describes the AMI that was used to launch an instance, even if the AMI is deprecated, deregistered, made private (no longer public or shared with your account), or not allowed.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_instance_image_metadata/} for full documentation.
}
\keyword{internal}
