% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicequotas_operations.R
\name{servicequotas_list_services}
\alias{servicequotas_list_services}
\title{Lists the names and codes for the Amazon Web Services services
integrated with Service Quotas}
\usage{
servicequotas_list_services(NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{NextToken}{Specifies a value for receiving additional results after you receive a
\code{NextToken} response in a previous request. A \code{NextToken} response
indicates that more output is available. Set this parameter to the value
of the previous call's \code{NextToken} response to indicate where the output
should continue from.}

\item{MaxResults}{Specifies the maximum number of results that you want included on each
page of the response. If you do not include this parameter, it defaults
to a value appropriate to the operation. If additional items exist
beyond those included in the current response, the \code{NextToken} response
element is present and has a value (is not null). Include that value as
the \code{NextToken} request parameter in the next call to the operation to
get the next part of the results.

An API operation can return fewer results than the maximum even when
there are more results available. You should check \code{NextToken} after
every operation to ensure that you receive all of the results.}
}
\description{
Lists the names and codes for the Amazon Web Services services integrated with Service Quotas.

See \url{https://www.paws-r-sdk.com/docs/servicequotas_list_services/} for full documentation.
}
\keyword{internal}
