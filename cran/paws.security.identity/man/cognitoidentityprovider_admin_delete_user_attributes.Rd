% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_delete_user_attributes}
\alias{cognitoidentityprovider_admin_delete_user_attributes}
\title{Deletes attribute values from a user}
\usage{
cognitoidentityprovider_admin_delete_user_attributes(
  UserPoolId,
  Username,
  UserAttributeNames
)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool where you want to delete user attributes.}

\item{Username}{[required] The name of the user that you want to query or modify. The value of this
parameter is typically your user's username, but it can be any of their
alias attributes. If \code{username} isn't an alias attribute in your user
pool, this value must be the \code{sub} of a local user or the username of a
user from a third-party IdP.}

\item{UserAttributeNames}{[required] An array of strings representing the user attribute names you want to
delete.

For custom attributes, you must prepend the \verb{custom:} prefix to the
attribute name.}
}
\description{
Deletes attribute values from a user. This operation doesn't affect tokens for existing user sessions. The next ID token that the user receives will no longer have the deleted attributes.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_admin_delete_user_attributes/} for full documentation.
}
\keyword{internal}
