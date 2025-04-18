% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_describe_change_set_hooks}
\alias{cloudformation_describe_change_set_hooks}
\title{Returns hook-related information for the change set and a list of
changes that CloudFormation makes when you run the change set}
\usage{
cloudformation_describe_change_set_hooks(
  ChangeSetName,
  StackName = NULL,
  NextToken = NULL,
  LogicalResourceId = NULL
)
}
\arguments{
\item{ChangeSetName}{[required] The name or Amazon Resource Name (ARN) of the change set that you want
to describe.}

\item{StackName}{If you specified the name of a change set, specify the stack name or
stack ID (ARN) of the change set you want to describe.}

\item{NextToken}{A string, provided by the
\code{\link[=cloudformation_describe_change_set_hooks]{describe_change_set_hooks}}
response output, that identifies the next page of information that you
want to retrieve.}

\item{LogicalResourceId}{If specified, lists only the Hooks related to the specified
\code{LogicalResourceId}.}
}
\description{
Returns hook-related information for the change set and a list of changes that CloudFormation makes when you run the change set.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_describe_change_set_hooks/} for full documentation.
}
\keyword{internal}
