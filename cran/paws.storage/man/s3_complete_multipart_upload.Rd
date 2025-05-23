% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_complete_multipart_upload}
\alias{s3_complete_multipart_upload}
\title{Completes a multipart upload by assembling previously uploaded parts}
\usage{
s3_complete_multipart_upload(
  Bucket,
  Key,
  MultipartUpload = NULL,
  UploadId,
  ChecksumCRC32 = NULL,
  ChecksumCRC32C = NULL,
  ChecksumCRC64NVME = NULL,
  ChecksumSHA1 = NULL,
  ChecksumSHA256 = NULL,
  ChecksumType = NULL,
  MpuObjectSize = NULL,
  RequestPayer = NULL,
  ExpectedBucketOwner = NULL,
  IfMatch = NULL,
  IfNoneMatch = NULL,
  SSECustomerAlgorithm = NULL,
  SSECustomerKey = NULL,
  SSECustomerKeyMD5 = NULL
)
}
\arguments{
\item{Bucket}{[required] Name of the bucket to which the multipart upload was initiated.

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

Object Lambda access points are not supported by directory buckets.

\strong{S3 on Outposts} - When you use this action with S3 on Outposts, you
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form
\code{ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com}.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see \href{https://docs.aws.amazon.com/AmazonS3/latest/s3-outposts/S3onOutposts.html}{What is S3 on Outposts?}
in the \emph{Amazon S3 User Guide}.}

\item{Key}{[required] Object key for which the multipart upload was initiated.}

\item{MultipartUpload}{The container for the multipart upload request information.}

\item{UploadId}{[required] ID for the initiated multipart upload.}

\item{ChecksumCRC32}{This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 32-bit \code{CRC32} checksum of the object. For
more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.}

\item{ChecksumCRC32C}{This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 32-bit \code{CRC32C} checksum of the object.
For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.}

\item{ChecksumCRC64NVME}{This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 64-bit \code{CRC64NVME} checksum of the object.
The \code{CRC64NVME} checksum is always a full object checksum. For more
information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity in the Amazon S3 User Guide}.}

\item{ChecksumSHA1}{This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 160-bit \code{SHA1} digest of the object. For
more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.}

\item{ChecksumSHA256}{This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 256-bit \code{SHA256} digest of the object. For
more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.}

\item{ChecksumType}{This header specifies the checksum type of the object, which determines
how part-level checksums are combined to create an object-level checksum
for multipart objects. You can use this header as a data integrity check
to verify that the checksum type that is received is the same checksum
that was specified. If the checksum type doesn’t match the checksum type
that was specified for the object during the
\code{\link[=s3_create_multipart_upload]{create_multipart_upload}} request, it’ll
result in a \code{BadDigest} error. For more information, see Checking object
integrity in the Amazon S3 User Guide.}

\item{MpuObjectSize}{The expected total object size of the multipart upload request. If
there’s a mismatch between the specified object size value and the
actual object size value, it results in an \verb{HTTP 400 InvalidRequest}
error.}

\item{RequestPayer}{}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request fails
with the HTTP status code \verb{403 Forbidden} (access denied).}

\item{IfMatch}{Uploads the object only if the ETag (entity tag) value provided during
the WRITE operation matches the ETag of the object in S3. If the ETag
values do not match, the operation returns a \verb{412 Precondition Failed}
error.

If a conflicting operation occurs during the upload S3 returns a
\verb{409 ConditionalRequestConflict} response. On a 409 failure you should
fetch the object's ETag, re-initiate the multipart upload with
\code{\link[=s3_create_multipart_upload]{create_multipart_upload}}, and re-upload
each part.

Expects the ETag value as a string.

For more information about conditional requests, see \href{https://datatracker.ietf.org/doc/html/rfc7232}{RFC 7232}, or \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html}{Conditional requests}
in the \emph{Amazon S3 User Guide}.}

\item{IfNoneMatch}{Uploads the object only if the object key name does not already exist in
the bucket specified. Otherwise, Amazon S3 returns a
\verb{412 Precondition Failed} error.

If a conflicting operation occurs during the upload S3 returns a
\verb{409 ConditionalRequestConflict} response. On a 409 failure you should
re-initiate the multipart upload with
\code{\link[=s3_create_multipart_upload]{create_multipart_upload}} and re-upload
each part.

Expects the '*' (asterisk) character.

For more information about conditional requests, see \href{https://datatracker.ietf.org/doc/html/rfc7232}{RFC 7232}, or \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html}{Conditional requests}
in the \emph{Amazon S3 User Guide}.}

\item{SSECustomerAlgorithm}{The server-side encryption (SSE) algorithm used to encrypt the object.
This parameter is required only when the object was created using a
checksum algorithm or if your bucket policy requires the use of SSE-C.
For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html#ssec-require-condition-key}{Protecting data using SSE-C keys}
in the \emph{Amazon S3 User Guide}.

This functionality is not supported for directory buckets.}

\item{SSECustomerKey}{The server-side encryption (SSE) customer managed key. This parameter is
needed only when the object was created using a checksum algorithm. For
more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html}{Protecting data using SSE-C keys}
in the \emph{Amazon S3 User Guide}.

This functionality is not supported for directory buckets.}

\item{SSECustomerKeyMD5}{The MD5 server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html}{Protecting data using SSE-C keys}
in the \emph{Amazon S3 User Guide}.

This functionality is not supported for directory buckets.}
}
\description{
Completes a multipart upload by assembling previously uploaded parts.

See \url{https://www.paws-r-sdk.com/docs/s3_complete_multipart_upload/} for full documentation.
}
\keyword{internal}
