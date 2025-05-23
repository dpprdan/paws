% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_create_configured_audience_model}
\alias{cleanroomsml_create_configured_audience_model}
\title{Defines the information necessary to create a configured audience model}
\usage{
cleanroomsml_create_configured_audience_model(
  name,
  audienceModelArn,
  outputConfig,
  description = NULL,
  sharedAudienceMetrics,
  minMatchingSeedSize = NULL,
  audienceSizeConfig = NULL,
  tags = NULL,
  childResourceTagOnCreatePolicy = NULL
)
}
\arguments{
\item{name}{[required] The name of the configured audience model.}

\item{audienceModelArn}{[required] The Amazon Resource Name (ARN) of the audience model to use for the
configured audience model.}

\item{outputConfig}{[required] Configure the Amazon S3 location and IAM Role for audiences created
using this configured audience model. Each audience will have a unique
location. The IAM Role must have \code{s3:PutObject} permission on the
destination Amazon S3 location. If the destination is protected with
Amazon S3 KMS-SSE, then the Role must also have the required KMS
permissions.}

\item{description}{The description of the configured audience model.}

\item{sharedAudienceMetrics}{[required] Whether audience metrics are shared.}

\item{minMatchingSeedSize}{The minimum number of users from the seed audience that must match with
users in the training data of the audience model. The default value is
500.}

\item{audienceSizeConfig}{Configure the list of output sizes of audiences that can be created
using this configured audience model. A request to
\code{\link[=cleanroomsml_start_audience_generation_job]{start_audience_generation_job}}
that uses this configured audience model must have an \code{audienceSize}
selected from this list. You can use the \code{ABSOLUTE} AudienceSize to
configure out audience sizes using the count of identifiers in the
output. You can use the \code{Percentage} AudienceSize to configure sizes in
the range 1-100 percent.}

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

\item{childResourceTagOnCreatePolicy}{Configure how the service tags audience generation jobs created using
this configured audience model. If you specify \code{NONE}, the tags from the
\code{\link[=cleanroomsml_start_audience_generation_job]{start_audience_generation_job}}
request determine the tags of the audience generation job. If you
specify \code{FROM_PARENT_RESOURCE}, the audience generation job inherits the
tags from the configured audience model, by default. Tags in the
\code{\link[=cleanroomsml_start_audience_generation_job]{start_audience_generation_job}}
will override the default.

When the client is in a different account than the configured audience
model, the tags from the client are never applied to a resource in the
caller's account.}
}
\description{
Defines the information necessary to create a configured audience model.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_create_configured_audience_model/} for full documentation.
}
\keyword{internal}
