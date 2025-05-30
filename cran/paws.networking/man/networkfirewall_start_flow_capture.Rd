% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkfirewall_operations.R
\name{networkfirewall_start_flow_capture}
\alias{networkfirewall_start_flow_capture}
\title{Begins capturing the flows in a firewall, according to the filters you
define}
\usage{
networkfirewall_start_flow_capture(
  FirewallArn,
  AvailabilityZone = NULL,
  MinimumFlowAgeInSeconds = NULL,
  FlowFilters
)
}
\arguments{
\item{FirewallArn}{[required] The Amazon Resource Name (ARN) of the firewall.}

\item{AvailabilityZone}{The ID of the Availability Zone where the firewall is located. For
example, \verb{us-east-2a}.

Defines the scope a flow operation. You can use up to 20 filters to
configure a single flow operation.}

\item{MinimumFlowAgeInSeconds}{The reqested \code{FlowOperation} ignores flows with an age (in seconds)
lower than \code{MinimumFlowAgeInSeconds}. You provide this for start
commands.

We recommend setting this value to at least 1 minute (60 seconds) to
reduce chance of capturing flows that are not yet established.}

\item{FlowFilters}{[required] Defines the scope a flow operation. You can use up to 20 filters to
configure a single flow operation.}
}
\description{
Begins capturing the flows in a firewall, according to the filters you define. Captures are similar, but not identical to snapshots. Capture operations provide visibility into flows that are not closed and are tracked by a firewall's flow table. Unlike snapshots, captures are a time-boxed view.

See \url{https://www.paws-r-sdk.com/docs/networkfirewall_start_flow_capture/} for full documentation.
}
\keyword{internal}
