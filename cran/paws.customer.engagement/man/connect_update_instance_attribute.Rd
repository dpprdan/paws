% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_update_instance_attribute}
\alias{connect_update_instance_attribute}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_update_instance_attribute(
  InstanceId,
  AttributeType,
  Value,
  ClientToken = NULL
)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{AttributeType}{[required] The type of attribute.

Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To access
this feature, contact Amazon Web ServicesSupport for allowlisting.}

\item{Value}{[required] The value for the attribute. Maximum character limit is 100.}

\item{ClientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services SDK
populates this field. For more information about idempotency, see
\href{https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/}{Making retries safe with idempotent APIs}.}
}
\description{
This API is in preview release for Amazon Connect and is subject to change.

See \url{https://www.paws-r-sdk.com/docs/connect_update_instance_attribute/} for full documentation.
}
\keyword{internal}
