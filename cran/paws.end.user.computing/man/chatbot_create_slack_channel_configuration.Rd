% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chatbot_operations.R
\name{chatbot_create_slack_channel_configuration}
\alias{chatbot_create_slack_channel_configuration}
\title{Creates an AWS Chatbot confugration for Slack}
\usage{
chatbot_create_slack_channel_configuration(
  SlackTeamId,
  SlackChannelId,
  SlackChannelName = NULL,
  SnsTopicArns = NULL,
  IamRoleArn,
  ConfigurationName,
  LoggingLevel = NULL,
  GuardrailPolicyArns = NULL,
  UserAuthorizationRequired = NULL,
  Tags = NULL
)
}
\arguments{
\item{SlackTeamId}{[required] The ID of the Slack workspace authorized with AWS Chatbot.}

\item{SlackChannelId}{[required] The ID of the Slack channel.

To get this ID, open Slack, right click on the channel name in the left
pane, then choose Copy Link. The channel ID is the 9-character string at
the end of the URL. For example, ABCBBLZZZ.}

\item{SlackChannelName}{The name of the Slack channel.}

\item{SnsTopicArns}{The Amazon Resource Names (ARNs) of the SNS topics that deliver
notifications to AWS Chatbot.}

\item{IamRoleArn}{[required] A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see \href{https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html}{IAM policies for AWS Chatbot}
in the \emph{AWS Chatbot Administrator Guide}.}

\item{ConfigurationName}{[required] The name of the configuration.}

\item{LoggingLevel}{Logging levels include \code{ERROR}, \code{INFO}, or \code{NONE}.}

\item{GuardrailPolicyArns}{The list of IAM policy ARNs that are applied as channel guardrails. The
AWS managed \code{AdministratorAccess} policy is applied by default if this
is not set.}

\item{UserAuthorizationRequired}{Enables use of a user role requirement in your chat configuration.}

\item{Tags}{A map of tags assigned to a resource. A tag is a string-to-string map of
key-value pairs.}
}
\description{
Creates an AWS Chatbot confugration for Slack.

See \url{https://www.paws-r-sdk.com/docs/chatbot_create_slack_channel_configuration/} for full documentation.
}
\keyword{internal}
