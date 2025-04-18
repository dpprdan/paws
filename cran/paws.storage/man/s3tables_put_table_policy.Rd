% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3tables_operations.R
\name{s3tables_put_table_policy}
\alias{s3tables_put_table_policy}
\title{Creates a new maintenance configuration or replaces an existing table
policy for a table}
\usage{
s3tables_put_table_policy(tableBucketARN, namespace, name, resourcePolicy)
}
\arguments{
\item{tableBucketARN}{[required] The Amazon Resource Name (ARN) of the table bucket that contains the
table.}

\item{namespace}{[required] The namespace associated with the table.}

\item{name}{[required] The name of the table.}

\item{resourcePolicy}{[required] The \code{JSON} that defines the policy.}
}
\description{
Creates a new maintenance configuration or replaces an existing table policy for a table. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add}{Adding a table policy} in the \emph{Amazon Simple Storage Service User Guide}.

See \url{https://www.paws-r-sdk.com/docs/s3tables_put_table_policy/} for full documentation.
}
\keyword{internal}
