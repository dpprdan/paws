% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_create_ml_input_channel}
\alias{cleanroomsml_create_ml_input_channel}
\title{Provides the information to create an ML input channel}
\usage{
cleanroomsml_create_ml_input_channel(
  membershipIdentifier,
  configuredModelAlgorithmAssociations,
  inputChannel,
  name,
  retentionInDays,
  description = NULL,
  kmsKeyArn = NULL,
  tags = NULL
)
}
\arguments{
\item{membershipIdentifier}{[required] The membership ID of the member that is creating the ML input channel.}

\item{configuredModelAlgorithmAssociations}{[required] The associated configured model algorithms that are necessary to create
this ML input channel.}

\item{inputChannel}{[required] The input data that is used to create this ML input channel.}

\item{name}{[required] The name of the ML input channel.}

\item{retentionInDays}{[required] The number of days that the data in the ML input channel is retained.}

\item{description}{The description of the ML input channel.}

\item{kmsKeyArn}{The Amazon Resource Name (ARN) of the KMS key that is used to access the
input channel.}

\item{tags}{The optional metadata that you apply to the resource to help you
categorize and organize them. Each tag consists of a key and an optional
value, both of which you define.

The following basic restrictions apply to tags:
\itemize{
\item Maximum number of tags per resource - 50.
\item For each resource, each tag key must be unique, and each tag key can
have only one value.
\item Maximum key length - 128 Unicode characters in UTF-8.
\item Maximum value length - 256 Unicode characters in UTF-8.
\item If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on
allowed characters. Generally allowed characters are: letters,
numbers, and spaces representable in UTF-8, and the following
characters: + - = . _ : / @.
\item Tag keys and values are case sensitive.
\item Do not use aws:, AWS:, or any upper or lowercase combination of such
as a prefix for keys as it is reserved for AWS use. You cannot edit
or delete tag keys with this prefix. Values can have this prefix. If
a tag value has aws as its prefix but the key does not, then Clean
Rooms ML considers it to be a user tag and will count against the
limit of 50 tags. Tags with only the key prefix of aws do not count
against your tags per resource limit.
}}
}
\description{
Provides the information to create an ML input channel. An ML input channel is the result of a query that can be used for ML modeling.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_create_ml_input_channel/} for full documentation.
}
\keyword{internal}
