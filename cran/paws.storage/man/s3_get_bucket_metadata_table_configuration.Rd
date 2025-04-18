% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_metadata_table_configuration}
\alias{s3_get_bucket_metadata_table_configuration}
\title{Retrieves the metadata table configuration for a general purpose bucket}
\usage{
s3_get_bucket_metadata_table_configuration(Bucket, ExpectedBucketOwner = NULL)
}
\arguments{
\item{Bucket}{[required] The general purpose bucket that contains the metadata table
configuration that you want to retrieve.}

\item{ExpectedBucketOwner}{The expected owner of the general purpose bucket that you want to
retrieve the metadata table configuration from.}
}
\description{
Retrieves the metadata table configuration for a general purpose bucket. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/metadata-tables-overview.html}{Accelerating data discovery with S3 Metadata} in the \emph{Amazon S3 User Guide}.

See \url{https://www.paws-r-sdk.com/docs/s3_get_bucket_metadata_table_configuration/} for full documentation.
}
\keyword{internal}
