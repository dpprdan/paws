% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_add_permission}
\alias{lambda_add_permission}
\title{Grants a principal permission to use a function}
\usage{
lambda_add_permission(
  FunctionName,
  StatementId,
  Action,
  Principal,
  SourceArn = NULL,
  SourceAccount = NULL,
  EventSourceToken = NULL,
  Qualifier = NULL,
  RevisionId = NULL,
  PrincipalOrgID = NULL,
  FunctionUrlAuthType = NULL
)
}
\arguments{
\item{FunctionName}{[required] The name or ARN of the Lambda function, version, or alias.

\strong{Name formats}
\itemize{
\item \strong{Function name} – \verb{my-function} (name-only), \verb{my-function:v1}
(with alias).
\item \strong{Function ARN} –
\verb{arn:aws:lambda:us-west-2:123456789012:function:my-function}.
\item \strong{Partial ARN} – \verb{123456789012:function:my-function}.
}

You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.}

\item{StatementId}{[required] A statement identifier that differentiates the statement from others in
the same policy.}

\item{Action}{[required] The action that the principal can use on the function. For example,
\code{lambda:InvokeFunction} or \code{lambda:GetFunction}.}

\item{Principal}{[required] The Amazon Web Services service, Amazon Web Services account, IAM user,
or IAM role that invokes the function. If you specify a service, use
\code{SourceArn} or \code{SourceAccount} to limit who can invoke the function
through that service.}

\item{SourceArn}{For Amazon Web Services services, the ARN of the Amazon Web Services
resource that invokes the function. For example, an Amazon S3 bucket or
Amazon SNS topic.

Note that Lambda configures the comparison using the \code{StringLike}
operator.}

\item{SourceAccount}{For Amazon Web Services service, the ID of the Amazon Web Services
account that owns the resource. Use this together with \code{SourceArn} to
ensure that the specified account owns the resource. It is possible for
an Amazon S3 bucket to be deleted by its owner and recreated by another
account.}

\item{EventSourceToken}{For Alexa Smart Home functions, a token that the invoker must supply.}

\item{Qualifier}{Specify a version or alias to add permissions to a published version of
the function.}

\item{RevisionId}{Update the policy only if the revision ID matches the ID that's
specified. Use this option to avoid modifying a policy that has changed
since you last read it.}

\item{PrincipalOrgID}{The identifier for your organization in Organizations. Use this to grant
permissions to all the Amazon Web Services accounts under this
organization.}

\item{FunctionUrlAuthType}{The type of authentication that your function URL uses. Set to \code{AWS_IAM}
if you want to restrict access to authenticated users only. Set to
\code{NONE} if you want to bypass IAM authentication to create a public
endpoint. For more information, see \href{https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html}{Security and auth model for Lambda function URLs}.}
}
\description{
Grants a \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying}{principal} permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function. Note: Lambda does not support adding policies to version $LATEST.

See \url{https://www.paws-r-sdk.com/docs/lambda_add_permission/} for full documentation.
}
\keyword{internal}
