% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_rollback_stack}
\alias{cloudformation_rollback_stack}
\title{When specifying RollbackStack, you preserve the state of previously
provisioned resources when an operation fails}
\usage{
cloudformation_rollback_stack(
  StackName,
  RoleARN = NULL,
  ClientRequestToken = NULL,
  RetainExceptOnCreate = NULL
)
}
\arguments{
\item{StackName}{[required] The name that's associated with the stack.}

\item{RoleARN}{The Amazon Resource Name (ARN) of an IAM role that CloudFormation
assumes to rollback the stack.}

\item{ClientRequestToken}{A unique identifier for this
\code{\link[=cloudformation_rollback_stack]{rollback_stack}} request.}

\item{RetainExceptOnCreate}{When set to \code{true}, newly created resources are deleted when the
operation rolls back. This includes newly created resources marked with
a deletion policy of \code{Retain}.

Default: \code{false}}
}
\description{
When specifying \code{\link[=cloudformation_rollback_stack]{rollback_stack}}, you preserve the state of previously provisioned resources when an operation fails. You can check the status of the stack through the \code{\link[=cloudformation_describe_stacks]{describe_stacks}} operation.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_rollback_stack/} for full documentation.
}
\keyword{internal}
