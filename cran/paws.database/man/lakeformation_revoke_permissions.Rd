% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeformation_operations.R
\name{lakeformation_revoke_permissions}
\alias{lakeformation_revoke_permissions}
\title{Revokes permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon S3}
\usage{
lakeformation_revoke_permissions(
  CatalogId = NULL,
  Principal,
  Resource,
  Permissions,
  Condition = NULL,
  PermissionsWithGrantOption = NULL
)
}
\arguments{
\item{CatalogId}{The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.}

\item{Principal}{[required] The principal to be revoked permissions on the resource.}

\item{Resource}{[required] The resource to which permissions are to be revoked.}

\item{Permissions}{[required] The permissions revoked to the principal on the resource. For
information about permissions, see \href{https://docs.aws.amazon.com/lake-formation/latest/dg/}{Security and Access Control to Metadata and Data}.}

\item{Condition}{}

\item{PermissionsWithGrantOption}{Indicates a list of permissions for which to revoke the grant option
allowing the principal to pass permissions to other principals.}
}
\description{
Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.

See \url{https://www.paws-r-sdk.com/docs/lakeformation_revoke_permissions/} for full documentation.
}
\keyword{internal}
