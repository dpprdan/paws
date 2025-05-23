% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_object}
\alias{s3_get_object}
\title{Retrieves an object from Amazon S3}
\usage{
s3_get_object(
  Bucket,
  IfMatch = NULL,
  IfModifiedSince = NULL,
  IfNoneMatch = NULL,
  IfUnmodifiedSince = NULL,
  Key,
  Range = NULL,
  ResponseCacheControl = NULL,
  ResponseContentDisposition = NULL,
  ResponseContentEncoding = NULL,
  ResponseContentLanguage = NULL,
  ResponseContentType = NULL,
  ResponseExpires = NULL,
  VersionId = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL,
  RequestPayer = NULL,
  PartNumber = NULL,
  ExpectedBucketOwner = NULL,
  ChecksumMode = NULL
)
}
\arguments{
\item{Bucket}{[required] The bucket name containing the object.

\strong{Directory buckets} - When you use this operation with a directory
bucket, you must use virtual-hosted-style requests in the format
\code{ Bucket-name.s3express-zone-id.region-code.amazonaws.com}. Path-style
requests are not supported. Directory bucket names must be unique in the
chosen Zone (Availability Zone or Local Zone). Bucket names must follow
the format \code{ bucket-base-name--zone-id--x-s3} (for example,
\code{ amzn-s3-demo-bucket--usw2-az1--x-s3}). For information about bucket
naming restrictions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html}{Directory bucket naming rules}
in the \emph{Amazon S3 User Guide}.

\strong{Access points} - When you use this action with an access point for
general purpose buckets, you must provide the alias of the access point
in place of the bucket name or specify the access point ARN. When you
use this action with an access point for directory buckets, you must
provide the access point name in place of the bucket name. When using
the access point ARN, you must direct requests to the access point
hostname. The access point hostname takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-accesspoint.\emph{Region}.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html}{Using access points}
in the \emph{Amazon S3 User Guide}.

\strong{Object Lambda access points} - When you use this action with an
Object Lambda access point, you must direct requests to the Object
Lambda access point hostname. The Object Lambda access point hostname
takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-object-lambda.\emph{Region}.amazonaws.com.

Object Lambda access points are not supported by directory buckets.

\strong{S3 on Outposts} - When you use this action with S3 on Outposts, you
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form
\code{ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com}.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see \href{https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html}{What is S3 on Outposts?}
in the \emph{Amazon S3 User Guide}.}

\item{IfMatch}{Return the object only if its entity tag (ETag) is the same as the one
specified in this header; otherwise, return a \verb{412 Precondition Failed}
error.

If both of the \code{If-Match} and \code{If-Unmodified-Since} headers are present
in the request as follows: \code{If-Match} condition evaluates to \code{true},
and; \code{If-Unmodified-Since} condition evaluates to \code{false}; then, S3
returns \verb{200 OK} and the data requested.

For more information about conditional requests, see \href{https://datatracker.ietf.org/doc/html/rfc7232}{RFC 7232}.}

\item{IfModifiedSince}{Return the object only if it has been modified since the specified time;
otherwise, return a \verb{304 Not Modified} error.

If both of the \code{If-None-Match} and \code{If-Modified-Since} headers are
present in the request as follows:\code{ If-None-Match} condition evaluates
to \code{false}, and; \code{If-Modified-Since} condition evaluates to \code{true};
then, S3 returns \verb{304 Not Modified} status code.

For more information about conditional requests, see \href{https://datatracker.ietf.org/doc/html/rfc7232}{RFC 7232}.}

\item{IfNoneMatch}{Return the object only if its entity tag (ETag) is different from the
one specified in this header; otherwise, return a \verb{304 Not Modified}
error.

If both of the \code{If-None-Match} and \code{If-Modified-Since} headers are
present in the request as follows:\code{ If-None-Match} condition evaluates
to \code{false}, and; \code{If-Modified-Since} condition evaluates to \code{true};
then, S3 returns \verb{304 Not Modified} HTTP status code.

For more information about conditional requests, see \href{https://datatracker.ietf.org/doc/html/rfc7232}{RFC 7232}.}

\item{IfUnmodifiedSince}{Return the object only if it has not been modified since the specified
time; otherwise, return a \verb{412 Precondition Failed} error.

If both of the \code{If-Match} and \code{If-Unmodified-Since} headers are present
in the request as follows: \code{If-Match} condition evaluates to \code{true},
and; \code{If-Unmodified-Since} condition evaluates to \code{false}; then, S3
returns \verb{200 OK} and the data requested.

For more information about conditional requests, see \href{https://datatracker.ietf.org/doc/html/rfc7232}{RFC 7232}.}

\item{Key}{[required] Key of the object to get.}

\item{Range}{Downloads the specified byte range of an object. For more information
about the HTTP Range header, see
\url{https://www.rfc-editor.org/rfc/rfc9110.html#name-range}.

Amazon S3 doesn't support retrieving multiple ranges of data per \code{GET}
request.}

\item{ResponseCacheControl}{Sets the \code{Cache-Control} header of the response.}

\item{ResponseContentDisposition}{Sets the \code{Content-Disposition} header of the response.}

\item{ResponseContentEncoding}{Sets the \code{Content-Encoding} header of the response.}

\item{ResponseContentLanguage}{Sets the \code{Content-Language} header of the response.}

\item{ResponseContentType}{Sets the \code{Content-Type} header of the response.}

\item{ResponseExpires}{Sets the \code{Expires} header of the response.}

\item{VersionId}{Version ID used to reference a specific version of the object.

By default, the \code{\link[=s3_get_object]{get_object}} operation returns the
current version of an object. To return a different version, use the
\code{versionId} subresource.
\itemize{
\item If you include a \code{versionId} in your request header, you must have
the \code{s3:GetObjectVersion} permission to access a specific version of
an object. The \code{s3:GetObject} permission is not required in this
scenario.
\item If you request the current version of an object without a specific
\code{versionId} in the request header, only the \code{s3:GetObject}
permission is required. The \code{s3:GetObjectVersion} permission is not
required in this scenario.
\item \strong{Directory buckets} - S3 Versioning isn't enabled and supported
for directory buckets. For this API operation, only the \code{null} value
of the version ID is supported by directory buckets. You can only
specify \code{null} to the \code{versionId} query parameter in the request.
}

For more information about versioning, see
\code{\link[=s3_put_bucket_versioning]{put_bucket_versioning}}.}

\item{SSECustomerAlgorithm}{Specifies the algorithm to use when decrypting the object (for example,
\code{AES256}).

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:
\itemize{
\item \code{x-amz-server-side-encryption-customer-algorithm}
\item \code{x-amz-server-side-encryption-customer-key}
\item \code{x-amz-server-side-encryption-customer-key-MD5}
}

For more information about SSE-C, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html}{Server-Side Encryption (Using Customer-Provided Encryption Keys)}
in the \emph{Amazon S3 User Guide}.

This functionality is not supported for directory buckets.}

\item{SSECustomerKey}{Specifies the customer-provided encryption key that you originally
provided for Amazon S3 to encrypt the data before storing it. This value
is used to decrypt the object when recovering it and must match the one
used when storing the data. The key must be appropriate for use with the
algorithm specified in the
\code{x-amz-server-side-encryption-customer-algorithm} header.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:
\itemize{
\item \code{x-amz-server-side-encryption-customer-algorithm}
\item \code{x-amz-server-side-encryption-customer-key}
\item \code{x-amz-server-side-encryption-customer-key-MD5}
}

For more information about SSE-C, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html}{Server-Side Encryption (Using Customer-Provided Encryption Keys)}
in the \emph{Amazon S3 User Guide}.

This functionality is not supported for directory buckets.}

\item{SSECustomerKeyMD5}{Specifies the 128-bit MD5 digest of the customer-provided encryption key
according to RFC 1321. Amazon S3 uses this header for a message
integrity check to ensure that the encryption key was transmitted
without error.

If you encrypt an object by using server-side encryption with
customer-provided encryption keys (SSE-C) when you store the object in
Amazon S3, then when you GET the object, you must use the following
headers:
\itemize{
\item \code{x-amz-server-side-encryption-customer-algorithm}
\item \code{x-amz-server-side-encryption-customer-key}
\item \code{x-amz-server-side-encryption-customer-key-MD5}
}

For more information about SSE-C, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html}{Server-Side Encryption (Using Customer-Provided Encryption Keys)}
in the \emph{Amazon S3 User Guide}.

This functionality is not supported for directory buckets.}

\item{RequestPayer}{}

\item{PartNumber}{Part number of the object being read. This is a positive integer between
1 and 10,000. Effectively performs a 'ranged' GET request for the part
specified. Useful for downloading just a part of an object.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request fails
with the HTTP status code \verb{403 Forbidden} (access denied).}

\item{ChecksumMode}{To retrieve the checksum, this mode must be enabled.}
}
\description{
Retrieves an object from Amazon S3.

See \url{https://www.paws-r-sdk.com/docs/s3_get_object/} for full documentation.
}
\keyword{internal}
