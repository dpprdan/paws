% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_key_pair}
\alias{ec2_create_key_pair}
\title{Creates an ED25519 or 2048-bit RSA key pair with the specified name and
in the specified format}
\usage{
ec2_create_key_pair(
  KeyName,
  KeyType = NULL,
  TagSpecifications = NULL,
  KeyFormat = NULL,
  DryRun = NULL
)
}
\arguments{
\item{KeyName}{[required] A unique name for the key pair.

Constraints: Up to 255 ASCII characters}

\item{KeyType}{The type of key pair. Note that ED25519 keys are not supported for
Windows instances.

Default: \code{rsa}}

\item{TagSpecifications}{The tags to apply to the new key pair.}

\item{KeyFormat}{The format of the key pair.

Default: \code{pem}}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the specified format. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key or an unencrypted PPK formatted private key for use with PuTTY. If a key with the specified name already exists, Amazon EC2 returns an error.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_key_pair/} for full documentation.
}
\keyword{internal}
