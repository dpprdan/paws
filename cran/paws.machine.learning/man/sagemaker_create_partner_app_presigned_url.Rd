% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_partner_app_presigned_url}
\alias{sagemaker_create_partner_app_presigned_url}
\title{Creates a presigned URL to access an Amazon SageMaker Partner AI App}
\usage{
sagemaker_create_partner_app_presigned_url(
  Arn,
  ExpiresInSeconds = NULL,
  SessionExpirationDurationInSeconds = NULL
)
}
\arguments{
\item{Arn}{[required] The ARN of the SageMaker Partner AI App to create the presigned URL for.}

\item{ExpiresInSeconds}{The time that will pass before the presigned URL expires.}

\item{SessionExpirationDurationInSeconds}{Indicates how long the Amazon SageMaker Partner AI App session can be
accessed for after logging in.}
}
\description{
Creates a presigned URL to access an Amazon SageMaker Partner AI App.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_create_partner_app_presigned_url/} for full documentation.
}
\keyword{internal}
