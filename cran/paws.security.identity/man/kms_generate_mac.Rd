% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kms_operations.R
\name{kms_generate_mac}
\alias{kms_generate_mac}
\title{Generates a hash-based message authentication code (HMAC) for a message
using an HMAC KMS key and a MAC algorithm that the key supports}
\usage{
kms_generate_mac(
  Message,
  KeyId,
  MacAlgorithm,
  GrantTokens = NULL,
  DryRun = NULL
)
}
\arguments{
\item{Message}{[required] The message to be hashed. Specify a message of up to 4,096 bytes.

\code{\link[=kms_generate_mac]{generate_mac}} and \code{\link[=kms_verify_mac]{verify_mac}} do
not provide special handling for message digests. If you generate an
HMAC for a hash digest of a message, you must verify the HMAC of the
same hash digest.}

\item{KeyId}{[required] The HMAC KMS key to use in the operation. The MAC algorithm computes the
HMAC for the message and the key as described in \href{https://datatracker.ietf.org/doc/html/rfc2104}{RFC 2104}.

To identify an HMAC KMS key, use the \code{\link[=kms_describe_key]{describe_key}}
operation and see the \code{KeySpec} field in the response.}

\item{MacAlgorithm}{[required] The MAC algorithm used in the operation.

The algorithm must be compatible with the HMAC KMS key that you specify.
To find the MAC algorithms that your HMAC KMS key supports, use the
\code{\link[=kms_describe_key]{describe_key}} operation and see the \code{MacAlgorithms}
field in the \code{\link[=kms_describe_key]{describe_key}} response.}

\item{GrantTokens}{A list of grant tokens.

Use a grant token when your permission to call this operation comes from
a new grant that has not yet achieved \emph{eventual consistency}. For more
information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token}{Grant token}
and \href{https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#using-grant-token}{Using a grant token}
in the \emph{Key Management Service Developer Guide}.}

\item{DryRun}{Checks if your request will succeed. \code{DryRun} is an optional parameter.

To learn more about how to use this parameter, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/testing-permissions.html}{Testing your KMS API calls}
in the \emph{Key Management Service Developer Guide}.}
}
\description{
Generates a hash-based message authentication code (HMAC) for a message using an HMAC KMS key and a MAC algorithm that the key supports. HMAC KMS keys and the HMAC algorithms that KMS uses conform to industry standards defined in \href{https://datatracker.ietf.org/doc/html/rfc2104}{RFC 2104}.

See \url{https://www.paws-r-sdk.com/docs/kms_generate_mac/} for full documentation.
}
\keyword{internal}
