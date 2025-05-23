% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagentruntime_operations.R
\name{bedrockagentruntime_list_invocations}
\alias{bedrockagentruntime_list_invocations}
\title{Lists all invocations associated with a specific session}
\usage{
bedrockagentruntime_list_invocations(
  maxResults = NULL,
  nextToken = NULL,
  sessionIdentifier
)
}
\arguments{
\item{maxResults}{The maximum number of results to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the \code{nextToken} field when making another request to
return the next batch of results.}

\item{nextToken}{If the total number of results is greater than the \code{maxResults} value
provided in the request, enter the token returned in the \code{nextToken}
field in the response in this field to return the next batch of results.}

\item{sessionIdentifier}{[required] The unique identifier for the session to list invocations for. You can
specify either the session's \code{sessionId} or its Amazon Resource Name
(ARN).}
}
\description{
Lists all invocations associated with a specific session. For more information about sessions, see \href{https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html}{Store and retrieve conversation history and context with Amazon Bedrock sessions}.

See \url{https://www.paws-r-sdk.com/docs/bedrockagentruntime_list_invocations/} for full documentation.
}
\keyword{internal}
