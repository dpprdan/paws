% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_accept_subscription_request}
\alias{datazone_accept_subscription_request}
\title{Accepts a subscription request to a specific asset}
\usage{
datazone_accept_subscription_request(
  assetScopes = NULL,
  decisionComment = NULL,
  domainIdentifier,
  identifier
)
}
\arguments{
\item{assetScopes}{The asset scopes of the accept subscription request.}

\item{decisionComment}{A description that specifies the reason for accepting the specified
subscription request.}

\item{domainIdentifier}{[required] The Amazon DataZone domain where the specified subscription request is
being accepted.}

\item{identifier}{[required] The unique identifier of the subscription request that is to be
accepted.}
}
\description{
Accepts a subscription request to a specific asset.

See \url{https://www.paws-r-sdk.com/docs/datazone_accept_subscription_request/} for full documentation.
}
\keyword{internal}
