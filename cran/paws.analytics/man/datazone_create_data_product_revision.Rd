% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_create_data_product_revision}
\alias{datazone_create_data_product_revision}
\title{Creates a data product revision}
\usage{
datazone_create_data_product_revision(
  clientToken = NULL,
  description = NULL,
  domainIdentifier,
  formsInput = NULL,
  glossaryTerms = NULL,
  identifier,
  items = NULL,
  name
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.}

\item{description}{The description of the data product revision.}

\item{domainIdentifier}{[required] The ID of the domain where the data product revision is created.}

\item{formsInput}{The metadata forms of the data product revision.}

\item{glossaryTerms}{The glossary terms of the data product revision.}

\item{identifier}{[required] The ID of the data product revision.}

\item{items}{The data assets of the data product revision.}

\item{name}{[required] The name of the data product revision.}
}
\description{
Creates a data product revision.

See \url{https://www.paws-r-sdk.com/docs/datazone_create_data_product_revision/} for full documentation.
}
\keyword{internal}
