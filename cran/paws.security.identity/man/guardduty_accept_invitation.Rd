% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_accept_invitation}
\alias{guardduty_accept_invitation}
\title{Accepts the invitation to be monitored by a GuardDuty administrator
account}
\usage{
guardduty_accept_invitation(DetectorId, MasterId, InvitationId)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector of the GuardDuty member account.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}

\item{MasterId}{[required] The account ID of the GuardDuty administrator account whose invitation
you're accepting.}

\item{InvitationId}{[required] The value that is used to validate the administrator account to the
member account.}
}
\description{
Accepts the invitation to be monitored by a GuardDuty administrator account.

See \url{https://www.paws-r-sdk.com/docs/guardduty_accept_invitation/} for full documentation.
}
\keyword{internal}
