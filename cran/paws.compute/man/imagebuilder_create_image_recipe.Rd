% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagebuilder_operations.R
\name{imagebuilder_create_image_recipe}
\alias{imagebuilder_create_image_recipe}
\title{Creates a new image recipe}
\usage{
imagebuilder_create_image_recipe(
  name,
  description = NULL,
  semanticVersion,
  components,
  parentImage,
  blockDeviceMappings = NULL,
  tags = NULL,
  workingDirectory = NULL,
  additionalInstanceConfiguration = NULL,
  clientToken
)
}
\arguments{
\item{name}{[required] The name of the image recipe.}

\item{description}{The description of the image recipe.}

\item{semanticVersion}{[required] The semantic version of the image recipe. This version follows the
semantic version syntax.

The semantic version has four nodes:
\<major\>.\<minor\>.\<patch\>/\<build\>. You can assign values for the
first three, and can filter on all of them.

\strong{Assignment:} For the first three nodes you can assign any positive
integer value, including zero, with an upper limit of 2^30-1, or
1073741823 for each node. Image Builder automatically assigns the build
number to the fourth node.

\strong{Patterns:} You can use any numeric pattern that adheres to the
assignment requirements for the nodes that you can assign. For example,
you might choose a software version pattern, such as 1.0.0, or a date,
such as 2021.01.01.}

\item{components}{[required] The components included in the image recipe.}

\item{parentImage}{[required] The base image for customizations specified in the image recipe. You can
specify the parent image using one of the following options:
\itemize{
\item AMI ID
\item Image Builder image Amazon Resource Name (ARN)
\item Amazon Web Services Systems Manager (SSM) Parameter Store Parameter,
prefixed by \verb{ssm:}, followed by the parameter name or ARN.
\item Amazon Web Services Marketplace product ID
}

If you enter an AMI ID or an SSM parameter that contains the AMI ID, you
must have access to the AMI, and the AMI must be in the source Region.}

\item{blockDeviceMappings}{The block device mappings of the image recipe.}

\item{tags}{The tags of the image recipe.}

\item{workingDirectory}{The working directory used during build and test workflows.}

\item{additionalInstanceConfiguration}{Specify additional settings and launch scripts for your build instances.}

\item{clientToken}{[required] Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}
in the \emph{Amazon EC2 API Reference}.}
}
\description{
Creates a new image recipe. Image recipes define how images are configured, tested, and assessed.

See \url{https://www.paws-r-sdk.com/docs/imagebuilder_create_image_recipe/} for full documentation.
}
\keyword{internal}
