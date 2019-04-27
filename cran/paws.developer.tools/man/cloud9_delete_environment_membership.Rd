% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloud9_operations.R
\name{cloud9_delete_environment_membership}
\alias{cloud9_delete_environment_membership}
\title{Deletes an environment member from an AWS Cloud9 development environment}
\usage{
cloud9_delete_environment_membership(environmentId, userArn)
}
\arguments{
\item{environmentId}{[required] The ID of the environment to delete the environment member from.}

\item{userArn}{[required] The Amazon Resource Name (ARN) of the environment member to delete from
the environment.}
}
\description{
Deletes an environment member from an AWS Cloud9 development
environment.
}
\section{Request syntax}{
\preformatted{svc$delete_environment_membership(
  environmentId = "string",
  userArn = "string"
)
}
}

\examples{
# 
\donttest{svc$delete_environment_membership(
  environmentId = "8d9967e2f0624182b74e7690ad69ebEX",
  userArn = "arn:aws:iam::123456789012:user/AnotherDemoUser"
)}

}
\keyword{internal}