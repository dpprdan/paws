% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_update_repository_encryption_key}
\alias{codecommit_update_repository_encryption_key}
\title{Updates the Key Management Service encryption key used to encrypt and
decrypt a CodeCommit repository}
\usage{
codecommit_update_repository_encryption_key(repositoryName, kmsKeyId)
}
\arguments{
\item{repositoryName}{[required] The name of the repository for which you want to update the KMS
encryption key used to encrypt and decrypt the repository.}

\item{kmsKeyId}{[required] The ID of the encryption key. You can view the ID of an encryption key
in the KMS console, or use the KMS APIs to programmatically retrieve a
key ID. For more information about acceptable values for keyID, see
\href{https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId}{KeyId}
in the Decrypt API description in the \emph{Key Management Service API
Reference}.}
}
\description{
Updates the Key Management Service encryption key used to encrypt and decrypt a CodeCommit repository.

See \url{https://www.paws-r-sdk.com/docs/codecommit_update_repository_encryption_key/} for full documentation.
}
\keyword{internal}
