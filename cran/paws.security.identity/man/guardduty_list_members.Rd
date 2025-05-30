% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_list_members}
\alias{guardduty_list_members}
\title{Lists details about all member accounts for the current GuardDuty
administrator account}
\usage{
guardduty_list_members(
  DetectorId,
  MaxResults = NULL,
  NextToken = NULL,
  OnlyAssociated = NULL
)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector that is associated with the member.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}

\item{MaxResults}{You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 50. The maximum value is 50.}

\item{NextToken}{You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the list action. For
subsequent calls to the action, fill nextToken in the request with the
value of NextToken from the previous response to continue listing data.}

\item{OnlyAssociated}{Specifies whether to only return associated members or to return all
members (including members who haven't been invited yet or have been
disassociated). Member accounts must have been previously associated
with the GuardDuty administrator account using
\href{https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html}{\verb{Create Members}}
.}
}
\description{
Lists details about all member accounts for the current GuardDuty administrator account.

See \url{https://www.paws-r-sdk.com/docs/guardduty_list_members/} for full documentation.
}
\keyword{internal}
