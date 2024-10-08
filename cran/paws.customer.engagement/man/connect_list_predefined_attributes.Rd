% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_list_predefined_attributes}
\alias{connect_list_predefined_attributes}
\title{Lists predefined attributes for the specified Amazon Connect instance}
\usage{
connect_list_predefined_attributes(
  InstanceId,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can find the instance
ID in the Amazon Resource Name (ARN) of the instance.}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}

\item{MaxResults}{The maximum number of results to return per page.}
}
\description{
Lists predefined attributes for the specified Amazon Connect instance. \emph{Predefined attributes} are attributes in an Amazon Connect instance that can be used to route contacts to an agent or pools of agents within a queue. For more information, see \href{https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html}{Create predefined attributes for routing contacts to agents}.

See \url{https://www.paws-r-sdk.com/docs/connect_list_predefined_attributes/} for full documentation.
}
\keyword{internal}
