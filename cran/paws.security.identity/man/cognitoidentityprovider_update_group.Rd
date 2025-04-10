% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_update_group}
\alias{cognitoidentityprovider_update_group}
\title{Updates the specified group with the specified attributes}
\usage{
cognitoidentityprovider_update_group(
  GroupName,
  UserPoolId,
  Description = NULL,
  RoleArn = NULL,
  Precedence = NULL
)
}
\arguments{
\item{GroupName}{[required] The name of the group.}

\item{UserPoolId}{[required] The ID of the user pool.}

\item{Description}{A string containing the new description of the group.}

\item{RoleArn}{The new role Amazon Resource Name (ARN) for the group. This is used for
setting the \code{cognito:roles} and \code{cognito:preferred_role} claims in the
token.}

\item{Precedence}{The new precedence value for the group. For more information about this
parameter, see \code{\link[=cognitoidentityprovider_create_group]{create_group}}.}
}
\description{
Updates the specified group with the specified attributes.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_update_group/} for full documentation.
}
\keyword{internal}
