% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_start_access_request}
\alias{ssm_start_access_request}
\title{Starts the workflow for just-in-time node access sessions}
\usage{
ssm_start_access_request(Reason, Targets, Tags = NULL)
}
\arguments{
\item{Reason}{[required] A brief description explaining why you are requesting access to the
node.}

\item{Targets}{[required] The node you are requesting access to.}

\item{Tags}{Key-value pairs of metadata you want to assign to the access request.}
}
\description{
Starts the workflow for just-in-time node access sessions.

See \url{https://www.paws-r-sdk.com/docs/ssm_start_access_request/} for full documentation.
}
\keyword{internal}
