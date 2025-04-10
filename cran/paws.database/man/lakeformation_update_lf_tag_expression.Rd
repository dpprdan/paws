% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeformation_operations.R
\name{lakeformation_update_lf_tag_expression}
\alias{lakeformation_update_lf_tag_expression}
\title{Updates the name of the LF-Tag expression to the new description and
expression body provided}
\usage{
lakeformation_update_lf_tag_expression(
  Name,
  Description = NULL,
  CatalogId = NULL,
  Expression
)
}
\arguments{
\item{Name}{[required] The name for the LF-Tag expression.}

\item{Description}{The description with information about the saved LF-Tag expression.}

\item{CatalogId}{The identifier for the Data Catalog. By default, the account ID.}

\item{Expression}{[required] The LF-Tag expression body composed of one more LF-Tag key-value pairs.}
}
\description{
Updates the name of the LF-Tag expression to the new description and expression body provided. Updating a LF-Tag expression immediately changes the permission boundaries of all existing \code{LFTagPolicy} permission grants that reference the given LF-Tag expression.

See \url{https://www.paws-r-sdk.com/docs/lakeformation_update_lf_tag_expression/} for full documentation.
}
\keyword{internal}
