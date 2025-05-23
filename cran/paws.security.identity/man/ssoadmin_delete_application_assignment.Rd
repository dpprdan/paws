% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssoadmin_operations.R
\name{ssoadmin_delete_application_assignment}
\alias{ssoadmin_delete_application_assignment}
\title{Revoke application access to an application by deleting application
assignments for a user or group}
\usage{
ssoadmin_delete_application_assignment(
  ApplicationArn,
  PrincipalId,
  PrincipalType
)
}
\arguments{
\item{ApplicationArn}{[required] Specifies the ARN of the application.}

\item{PrincipalId}{[required] An identifier for an object in IAM Identity Center, such as a user or
group. PrincipalIds are GUIDs (For example,
f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about
PrincipalIds in IAM Identity Center, see the \href{https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html}{IAM Identity Center Identity Store API Reference}.}

\item{PrincipalType}{[required] The entity type for which the assignment will be deleted.}
}
\description{
Revoke application access to an application by deleting application assignments for a user or group.

See \url{https://www.paws-r-sdk.com/docs/ssoadmin_delete_application_assignment/} for full documentation.
}
\keyword{internal}
