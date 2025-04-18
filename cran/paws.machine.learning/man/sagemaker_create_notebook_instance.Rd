% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_notebook_instance}
\alias{sagemaker_create_notebook_instance}
\title{Creates an SageMaker AI notebook instance}
\usage{
sagemaker_create_notebook_instance(
  NotebookInstanceName,
  InstanceType,
  SubnetId = NULL,
  SecurityGroupIds = NULL,
  RoleArn,
  KmsKeyId = NULL,
  Tags = NULL,
  LifecycleConfigName = NULL,
  DirectInternetAccess = NULL,
  VolumeSizeInGB = NULL,
  AcceleratorTypes = NULL,
  DefaultCodeRepository = NULL,
  AdditionalCodeRepositories = NULL,
  RootAccess = NULL,
  PlatformIdentifier = NULL,
  InstanceMetadataServiceConfiguration = NULL
)
}
\arguments{
\item{NotebookInstanceName}{[required] The name of the new notebook instance.}

\item{InstanceType}{[required] The type of ML compute instance to launch for the notebook instance.}

\item{SubnetId}{The ID of the subnet in a VPC to which you would like to have a
connectivity from your ML compute instance.}

\item{SecurityGroupIds}{The VPC security group IDs, in the form sg-xxxxxxxx. The security groups
must be for the same VPC as specified in the subnet.}

\item{RoleArn}{[required] When you send any requests to Amazon Web Services resources from the
notebook instance, SageMaker AI assumes this role to perform tasks on
your behalf. You must grant this role necessary permissions so SageMaker
AI can perform these tasks. The policy must allow the SageMaker AI
service principal (sagemaker.amazonaws.com) permissions to assume this
role. For more information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html}{SageMaker AI Roles}.

To be able to pass this role to SageMaker AI, the caller of this API
must have the \code{iam:PassRole} permission.}

\item{KmsKeyId}{The Amazon Resource Name (ARN) of a Amazon Web Services Key Management
Service key that SageMaker AI uses to encrypt data on the storage volume
attached to your notebook instance. The KMS key you provide must be
enabled. For information, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html}{Enabling and Disabling Keys}
in the \emph{Amazon Web Services Key Management Service Developer Guide}.}

\item{Tags}{An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see \href{https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html}{Tagging Amazon Web Services Resources}.}

\item{LifecycleConfigName}{The name of a lifecycle configuration to associate with the notebook
instance. For information about lifestyle configurations, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html}{Step 2.1: (Optional) Customize a Notebook Instance}.}

\item{DirectInternetAccess}{Sets whether SageMaker AI provides internet access to the notebook
instance. If you set this to \code{Disabled} this notebook instance is able
to access resources only in your VPC, and is not be able to connect to
SageMaker AI training and endpoint services unless you configure a NAT
Gateway in your VPC.

For more information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-interface-endpoint.html#appendix-notebook-and-internet-access}{Notebook Instances Are Internet-Enabled by Default}.
You can set the value of this parameter to \code{Disabled} only if you set a
value for the \code{SubnetId} parameter.}

\item{VolumeSizeInGB}{The size, in GB, of the ML storage volume to attach to the notebook
instance. The default value is 5 GB.}

\item{AcceleratorTypes}{This parameter is no longer supported. Elastic Inference (EI) is no
longer available.

This parameter was used to specify a list of EI instance types to
associate with this notebook instance.}

\item{DefaultCodeRepository}{A Git repository to associate with the notebook instance as its default
code repository. This can be either the name of a Git repository stored
as a resource in your account, or the URL of a Git repository in \href{https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html}{Amazon Web Services CodeCommit}
or in any other Git repository. When you open a notebook instance, it
opens in the directory that contains this repository. For more
information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html}{Associating Git Repositories with SageMaker AI Notebook Instances}.}

\item{AdditionalCodeRepositories}{An array of up to three Git repositories to associate with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in \href{https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html}{Amazon Web Services CodeCommit}
or in any other Git repository. These repositories are cloned at the
same level as the default repository of your notebook instance. For more
information, see \href{https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html}{Associating Git Repositories with SageMaker AI Notebook Instances}.}

\item{RootAccess}{Whether root access is enabled or disabled for users of the notebook
instance. The default value is \code{Enabled}.

Lifecycle configurations need root access to be able to set up a
notebook instance. Because of this, lifecycle configurations associated
with a notebook instance always run with root access even if you disable
root access for users.}

\item{PlatformIdentifier}{The platform identifier of the notebook instance runtime environment.}

\item{InstanceMetadataServiceConfiguration}{Information on the IMDS configuration of the notebook instance}
}
\description{
Creates an SageMaker AI notebook instance. A notebook instance is a machine learning (ML) compute instance running on a Jupyter notebook.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_create_notebook_instance/} for full documentation.
}
\keyword{internal}
