% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iam_operations.R
\name{iam_create_role}
\alias{iam_create_role}
\title{Creates a new role for your Amazon Web Services account}
\usage{
iam_create_role(
  Path = NULL,
  RoleName,
  AssumeRolePolicyDocument,
  Description = NULL,
  MaxSessionDuration = NULL,
  PermissionsBoundary = NULL,
  Tags = NULL
)
}
\arguments{
\item{Path}{The path to the role. For more information about paths, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html}{IAM Identifiers}
in the \emph{IAM User Guide}.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of either a forward slash (/) by itself or a string that must
begin and end with forward slashes. In addition, it can contain any
ASCII character from the ! (\code{U+0021}) through the DEL character
(\verb{U+007F}), including most punctuation characters, digits, and upper and
lowercased letters.}

\item{RoleName}{[required] The name of the role to create.

IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".

This parameter allows (through its \href{https://en.wikipedia.org/wiki/Regex}{regex pattern}) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: _+=,.@-}

\item{AssumeRolePolicyDocument}{[required] The trust relationship policy document that grants an entity permission
to assume the role.

In IAM, you must provide a JSON policy that has been converted to a
string. However, for CloudFormation templates formatted in YAML, you can
provide the policy in JSON or YAML format. CloudFormation always
converts a YAML policy to JSON format before submitting it to IAM.

The \href{https://en.wikipedia.org/wiki/Regex}{regex pattern} used to
validate this parameter is a string of characters consisting of the
following:
\itemize{
\item Any printable ASCII character ranging from the space character
(\code{U+0020}) through the end of the ASCII character range
\item The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \verb{U+00FF})
\item The special characters tab (\code{U+0009}), line feed (\verb{U+000A}), and
carriage return (\verb{U+000D})
}

Upon success, the response includes the same trust policy in JSON
format.}

\item{Description}{A description of the role.}

\item{MaxSessionDuration}{The maximum session duration (in seconds) that you want to set for the
specified role. If you do not specify a value for this setting, the
default value of one hour is applied. This setting can have a value from
1 hour to 12 hours.

Anyone who assumes the role from the CLI or API can use the
\code{DurationSeconds} API parameter or the \code{duration-seconds} CLI parameter
to request a longer session. The \code{MaxSessionDuration} setting determines
the maximum duration that can be requested using the \code{DurationSeconds}
parameter. If users don't specify a value for the \code{DurationSeconds}
parameter, their security credentials are valid for one hour by default.
This applies when you use the \verb{AssumeRole*} API operations or the
\verb{assume-role*} CLI operations but does not apply when you use those
operations to create a console URL. For more information, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage-assume.html}{Using IAM roles}
in the \emph{IAM User Guide}.}

\item{PermissionsBoundary}{The ARN of the managed policy that is used to set the permissions
boundary for the role.

A permissions boundary policy defines the maximum permissions that
identity-based policies can grant to an entity, but does not grant
permissions. Permissions boundaries do not define the maximum
permissions that a resource-based policy can grant to an entity. To
learn more, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html}{Permissions boundaries for IAM entities}
in the \emph{IAM User Guide}.

For more information about policy types, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types}{Policy types}
in the \emph{IAM User Guide}.}

\item{Tags}{A list of tags that you want to attach to the new role. Each tag
consists of a key name and an associated value. For more information
about tagging, see \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html}{Tagging IAM resources}
in the \emph{IAM User Guide}.

If any one of the tags is invalid or if you exceed the allowed maximum
number of tags, then the entire request fails and the resource is not
created.}
}
\description{
Creates a new role for your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/iam_create_role/} for full documentation.
}
\keyword{internal}
