% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_spot_fleet_request_history}
\alias{ec2_describe_spot_fleet_request_history}
\title{Describes the events for the specified Spot Fleet request during the
specified time}
\usage{
ec2_describe_spot_fleet_request_history(
  DryRun = NULL,
  SpotFleetRequestId,
  EventType = NULL,
  StartTime,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{SpotFleetRequestId}{[required] The ID of the Spot Fleet request.}

\item{EventType}{The type of events to describe. By default, all events are described.}

\item{StartTime}{[required] The starting date and time for the events, in UTC format (for example,
\emph{YYYY}-\emph{MM}-\emph{DD}T\emph{HH}:\emph{MM}:\emph{SS}Z).}

\item{NextToken}{The token to include in another request to get the next page of items.
This value is \code{null} when there are no more items to return.}

\item{MaxResults}{The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination}{Pagination}.}
}
\description{
Describes the events for the specified Spot Fleet request during the specified time.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_spot_fleet_request_history/} for full documentation.
}
\keyword{internal}
