% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_create_access_entry}
\alias{eks_create_access_entry}
\title{Creates an access entry}
\usage{
eks_create_access_entry(
  clusterName,
  principalArn,
  kubernetesGroups = NULL,
  tags = NULL,
  clientRequestToken = NULL,
  username = NULL,
  type = NULL
)
}
\arguments{
\item{clusterName}{[required] The name of your cluster.}

\item{principalArn}{[required] The ARN of the IAM principal for the \code{AccessEntry}. You can specify one
ARN for each access entry. You can't specify the same ARN in more than
one access entry. This value can't be changed after access entry
creation.

The valid principals differ depending on the type of the access entry in
the \code{type} field. For \code{STANDARD} access entries, you can use every IAM
principal type. For nodes (\code{EC2} (for EKS Auto Mode), \code{EC2_LINUX},
\code{EC2_WINDOWS}, \code{FARGATE_LINUX}, and \code{HYBRID_LINUX}), the only valid ARN
is IAM roles. You can't use the STS session principal type with access
entries because this is a temporary principal for each session and not a
permanent identity that can be assigned permissions.

\href{https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#bp-users-federation-idp}{IAM best practices}
recommend using IAM roles with temporary credentials, rather than IAM
users with long-term credentials.}

\item{kubernetesGroups}{The value for \code{name} that you've specified for \code{kind: Group} as a
\code{subject} in a Kubernetes \code{RoleBinding} or \code{ClusterRoleBinding} object.
Amazon EKS doesn't confirm that the value for \code{name} exists in any
bindings on your cluster. You can specify one or more names.

Kubernetes authorizes the \code{principalArn} of the access entry to access
any cluster objects that you've specified in a Kubernetes \code{Role} or
\code{ClusterRole} object that is also specified in a binding's \code{roleRef}.
For more information about creating Kubernetes \code{RoleBinding},
\code{ClusterRoleBinding}, \code{Role}, or \code{ClusterRole} objects, see \href{https://kubernetes.io/docs/reference/access-authn-authz/rbac/}{Using RBAC Authorization in the Kubernetes documentation}.

If you want Amazon EKS to authorize the \code{principalArn} (instead of, or
in addition to Kubernetes authorizing the \code{principalArn}), you can
associate one or more access policies to the access entry using
\code{\link[=eks_associate_access_policy]{associate_access_policy}}. If you
associate any access policies, the \code{principalARN} has all permissions
assigned in the associated access policies and all permissions in any
Kubernetes \code{Role} or \code{ClusterRole} objects that the group names are
bound to.}

\item{tags}{Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.}

\item{clientRequestToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}

\item{username}{The username to authenticate to Kubernetes with. We recommend not
specifying a username and letting Amazon EKS specify it for you. For
more information about the value Amazon EKS specifies for you, or
constraints before specifying your own username, see \href{https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html#creating-access-entries}{Creating access entries}
in the \emph{Amazon EKS User Guide}.}

\item{type}{The type of the new access entry. Valid values are \code{STANDARD},
\code{FARGATE_LINUX}, \code{EC2_LINUX}, \code{EC2_WINDOWS}, \code{EC2} (for EKS Auto Mode),
\code{HYBRID_LINUX}, and \code{HYPERPOD_LINUX}.

If the \code{principalArn} is for an IAM role that's used for self-managed
Amazon EC2 nodes, specify \code{EC2_LINUX} or \code{EC2_WINDOWS}. Amazon EKS
grants the necessary permissions to the node for you. If the
\code{principalArn} is for any other purpose, specify \code{STANDARD}. If you
don't specify a value, Amazon EKS sets the value to \code{STANDARD}. If you
have the access mode of the cluster set to \code{API_AND_CONFIG_MAP}, it's
unnecessary to create access entries for IAM roles used with Fargate
profiles or managed Amazon EC2 nodes, because Amazon EKS creates entries
in the \code{aws-auth} \code{ConfigMap} for the roles. You can't change this value
once you've created the access entry.

If you set the value to \code{EC2_LINUX} or \code{EC2_WINDOWS}, you can't specify
values for \code{kubernetesGroups}, or associate an \code{AccessPolicy} to the
access entry.}
}
\description{
Creates an access entry.

See \url{https://www.paws-r-sdk.com/docs/eks_create_access_entry/} for full documentation.
}
\keyword{internal}
