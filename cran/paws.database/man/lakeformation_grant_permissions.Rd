% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeformation_operations.R
\name{lakeformation_grant_permissions}
\alias{lakeformation_grant_permissions}
\title{Grants permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon S3}
\usage{
lakeformation_grant_permissions(
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

\item{Principal}{[required] The principal to be granted the permissions on the resource. Supported
principals are IAM users or IAM roles, and they are defined by their
principal type and their ARN.

Note that if you define a resource with a particular ARN, then later
delete, and recreate a resource with that same ARN, the resource
maintains the permissions already granted.}

\item{Resource}{[required] The resource to which permissions are to be granted. Resources in Lake
Formation are the Data Catalog, databases, and tables.}

\item{Permissions}{[required] The permissions granted to the principal on the resource. Lake Formation
defines privileges to grant and revoke access to metadata in the Data
Catalog and data organized in underlying data storage such as Amazon S3.
Lake Formation requires that each principal be authorized to perform a
specific task on Lake Formation resources.}

\item{Condition}{}

\item{PermissionsWithGrantOption}{Indicates a list of the granted permissions that the principal may pass
to other users. These permissions may only be a subset of the
permissions granted in the \code{Privileges}.}
}
\description{
Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3.

See \url{https://www.paws-r-sdk.com/docs/lakeformation_grant_permissions/} for full documentation.
}
\keyword{internal}
