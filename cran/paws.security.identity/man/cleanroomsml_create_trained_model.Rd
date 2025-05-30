% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_create_trained_model}
\alias{cleanroomsml_create_trained_model}
\title{Creates a trained model from an associated configured model algorithm
using data from any member of the collaboration}
\usage{
cleanroomsml_create_trained_model(
  membershipIdentifier,
  name,
  configuredModelAlgorithmAssociationArn,
  hyperparameters = NULL,
  environment = NULL,
  resourceConfig,
  stoppingCondition = NULL,
  dataChannels,
  description = NULL,
  kmsKeyArn = NULL,
  tags = NULL
)
}
\arguments{
\item{membershipIdentifier}{[required] The membership ID of the member that is creating the trained model.}

\item{name}{[required] The name of the trained model.}

\item{configuredModelAlgorithmAssociationArn}{[required] The associated configured model algorithm used to train this model.}

\item{hyperparameters}{Algorithm-specific parameters that influence the quality of the model.
You set hyperparameters before you start the learning process.}

\item{environment}{The environment variables to set in the Docker container.}

\item{resourceConfig}{[required] Information about the EC2 resources that are used to train this model.}

\item{stoppingCondition}{The criteria that is used to stop model training.}

\item{dataChannels}{[required] Defines the data channels that are used as input for the trained model
request.}

\item{description}{The description of the trained model.}

\item{kmsKeyArn}{The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the trained ML model and the
associated data.}

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
Creates a trained model from an associated configured model algorithm using data from any member of the collaboration.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_create_trained_model/} for full documentation.
}
\keyword{internal}
