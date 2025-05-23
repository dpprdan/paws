% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_compilation_job}
\alias{sagemaker_create_compilation_job}
\title{Starts a model compilation job}
\usage{
sagemaker_create_compilation_job(
  CompilationJobName,
  RoleArn,
  ModelPackageVersionArn = NULL,
  InputConfig = NULL,
  OutputConfig,
  VpcConfig = NULL,
  StoppingCondition,
  Tags = NULL
)
}
\arguments{
\item{CompilationJobName}{[required] A name for the model compilation job. The name must be unique within the
Amazon Web Services Region and within your Amazon Web Services account.}

\item{RoleArn}{[required] The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker AI to perform tasks on your behalf.

During model compilation, Amazon SageMaker AI needs your permission to:
\itemize{
\item Read input data from an S3 bucket
\item Write model artifacts to an S3 bucket
\item Write logs to Amazon CloudWatch Logs
\item Publish metrics to Amazon CloudWatch
}

You grant permissions for all of these tasks to an IAM role. To pass
this role to Amazon SageMaker AI, the caller of this API must have the
\code{iam:PassRole} permission. For more information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html}{Amazon SageMaker AI Roles.}}

\item{ModelPackageVersionArn}{The Amazon Resource Name (ARN) of a versioned model package. Provide
either a \code{ModelPackageVersionArn} or an \code{InputConfig} object in the
request syntax. The presence of both objects in the
\code{\link[=sagemaker_create_compilation_job]{create_compilation_job}} request
will return an exception.}

\item{InputConfig}{Provides information about the location of input model artifacts, the
name and shape of the expected data inputs, and the framework in which
the model was trained.}

\item{OutputConfig}{[required] Provides information about the output location for the compiled model
and the target device the model runs on.}

\item{VpcConfig}{A
\href{https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html}{VpcConfig}
object that specifies the VPC that you want your compilation job to
connect to. Control access to your models by configuring the VPC. For
more information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/neo-vpc.html}{Protect Compilation Jobs by Using an Amazon Virtual Private Cloud}.}

\item{StoppingCondition}{[required] Specifies a limit to how long a model compilation job can run. When the
job reaches the time limit, Amazon SageMaker AI ends the compilation
job. Use this API to cap model training costs.}

\item{Tags}{An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see \href{https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html}{Tagging Amazon Web Services Resources}.}
}
\description{
Starts a model compilation job. After the model has been compiled, Amazon SageMaker AI saves the resulting model artifacts to an Amazon Simple Storage Service (Amazon S3) bucket that you specify.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_create_compilation_job/} for full documentation.
}
\keyword{internal}
