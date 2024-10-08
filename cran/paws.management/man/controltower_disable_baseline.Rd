% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/controltower_operations.R
\name{controltower_disable_baseline}
\alias{controltower_disable_baseline}
\title{Disable an EnabledBaseline resource on the specified Target}
\usage{
controltower_disable_baseline(enabledBaselineIdentifier)
}
\arguments{
\item{enabledBaselineIdentifier}{[required] Identifier of the \code{EnabledBaseline} resource to be deactivated, in ARN
format.}
}
\description{
Disable an \code{EnabledBaseline} resource on the specified Target. This API starts an asynchronous operation to remove all resources deployed as part of the baseline enablement. The resource will vary depending on the enabled baseline. For usage examples, see \href{https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html}{\emph{the Amazon Web Services Control Tower User Guide}} .

See \url{https://www.paws-r-sdk.com/docs/controltower_disable_baseline/} for full documentation.
}
\keyword{internal}
