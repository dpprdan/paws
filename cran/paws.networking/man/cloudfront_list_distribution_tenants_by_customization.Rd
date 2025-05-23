% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_list_distribution_tenants_by_customization}
\alias{cloudfront_list_distribution_tenants_by_customization}
\title{Lists distribution tenants by the customization that you specify}
\usage{
cloudfront_list_distribution_tenants_by_customization(
  WebACLArn = NULL,
  CertificateArn = NULL,
  Marker = NULL,
  MaxItems = NULL
)
}
\arguments{
\item{WebACLArn}{Filter by the ARN of the associated WAF web ACL.}

\item{CertificateArn}{Filter by the ARN of the associated ACM certificate.}

\item{Marker}{The marker for the next set of results.}

\item{MaxItems}{The maximum number of distribution tenants to return by the specified
customization.}
}
\description{
Lists distribution tenants by the customization that you specify.

See \url{https://www.paws-r-sdk.com/docs/cloudfront_list_distribution_tenants_by_customization/} for full documentation.
}
\keyword{internal}
