% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_create_repository_creation_template}
\alias{ecr_create_repository_creation_template}
\title{Creates a repository creation template}
\usage{
ecr_create_repository_creation_template(
  prefix,
  description = NULL,
  encryptionConfiguration = NULL,
  resourceTags = NULL,
  imageTagMutability = NULL,
  repositoryPolicy = NULL,
  lifecyclePolicy = NULL,
  appliedFor,
  customRoleArn = NULL
)
}
\arguments{
\item{prefix}{[required] The repository namespace prefix to associate with the template. All
repositories created using this namespace prefix will have the settings
defined in this template applied. For example, a prefix of \code{prod} would
apply to all repositories beginning with \verb{prod/}. Similarly, a prefix of
\code{prod/team} would apply to all repositories beginning with \verb{prod/team/}.

To apply a template to all repositories in your registry that don't have
an associated creation template, you can use \code{ROOT} as the prefix.

There is always an assumed \code{/} applied to the end of the prefix. If you
specify \code{ecr-public} as the prefix, Amazon ECR treats that as
\verb{ecr-public/}. When using a pull through cache rule, the repository
prefix you specify during rule creation is what you should specify as
your repository creation template prefix as well.}

\item{description}{A description for the repository creation template.}

\item{encryptionConfiguration}{The encryption configuration to use for repositories created using the
template.}

\item{resourceTags}{The metadata to apply to the repository to help you categorize and
organize. Each tag consists of a key and an optional value, both of
which you define. Tag keys can have a maximum character length of 128
characters, and tag values can have a maximum length of 256 characters.}

\item{imageTagMutability}{The tag mutability setting for the repository. If this parameter is
omitted, the default setting of \code{MUTABLE} will be used which will allow
image tags to be overwritten. If \code{IMMUTABLE} is specified, all image
tags within the repository will be immutable which will prevent them
from being overwritten.}

\item{repositoryPolicy}{The repository policy to apply to repositories created using the
template. A repository policy is a permissions policy associated with a
repository to control access permissions.}

\item{lifecyclePolicy}{The lifecycle policy to use for repositories created using the template.}

\item{appliedFor}{[required] A list of enumerable strings representing the Amazon ECR repository
creation scenarios that this template will apply towards. The two
supported scenarios are \code{PULL_THROUGH_CACHE} and \code{REPLICATION}}

\item{customRoleArn}{The ARN of the role to be assumed by Amazon ECR. This role must be in
the same account as the registry that you are configuring. Amazon ECR
will assume your supplied role when the customRoleArn is specified. When
this field isn't specified, Amazon ECR will use the service-linked role
for the repository creation template.}
}
\description{
Creates a repository creation template. This template is used to define the settings for repositories created by Amazon ECR on your behalf. For example, repositories created through pull through cache actions. For more information, see \href{https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-creation-templates.html}{Private repository creation templates} in the \emph{Amazon Elastic Container Registry User Guide}.

See \url{https://www.paws-r-sdk.com/docs/ecr_create_repository_creation_template/} for full documentation.
}
\keyword{internal}
