% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_link_provider_for_user}
\alias{cognitoidentityprovider_admin_link_provider_for_user}
\title{Links an existing user account in a user pool, or DestinationUser, to an
identity from an external IdP, or SourceUser, based on a specified
attribute name and value from the external IdP}
\usage{
cognitoidentityprovider_admin_link_provider_for_user(
  UserPoolId,
  DestinationUser,
  SourceUser
)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool where you want to link a federated identity.}

\item{DestinationUser}{[required] The existing user in the user pool that you want to assign to the
external IdP user account. This user can be a local (Username +
Password) Amazon Cognito user pools user or a federated user (for
example, a SAML or Facebook user). If the user doesn't exist, Amazon
Cognito generates an exception. Amazon Cognito returns this user when
the new user (with the linked IdP attribute) signs in.

For a native username + password user, the \code{ProviderAttributeValue} for
the \code{DestinationUser} should be the username in the user pool. For a
federated user, it should be the provider-specific \code{user_id}.

The \code{ProviderAttributeName} of the \code{DestinationUser} is ignored.

The \code{ProviderName} should be set to \code{Cognito} for users in Cognito user
pools.

All attributes in the DestinationUser profile must be mutable. If you
have assigned the user any immutable custom attributes, the operation
won't succeed.}

\item{SourceUser}{[required] An external IdP account for a user who doesn't exist yet in the user
pool. This user must be a federated user (for example, a SAML or
Facebook user), not another native user.

If the \code{SourceUser} is using a federated social IdP, such as Facebook,
Google, or Login with Amazon, you must set the \code{ProviderAttributeName}
to \code{Cognito_Subject}. For social IdPs, the \code{ProviderName} will be
\code{Facebook}, \code{Google}, or \code{LoginWithAmazon}, and Amazon Cognito will
automatically parse the Facebook, Google, and Login with Amazon tokens
for \code{id}, \code{sub}, and \code{user_id}, respectively. The
\code{ProviderAttributeValue} for the user must be the same value as the
\code{id}, \code{sub}, or \code{user_id} value found in the social IdP token.

For OIDC, the \code{ProviderAttributeName} can be any mapped value from a
claim in the ID token, or that your app retrieves from the \code{userInfo}
endpoint. For SAML, the \code{ProviderAttributeName} can be any mapped value
from a claim in the SAML assertion.

The following additional considerations apply to \code{SourceUser} for OIDC
and SAML providers.
\itemize{
\item You must map the claim to a user pool attribute in your IdP
configuration, and set the user pool attribute name as the value of
\code{ProviderAttributeName} in your
\code{\link[=cognitoidentityprovider_admin_link_provider_for_user]{admin_link_provider_for_user}}
request. For example, \code{email}.
\item When you set \code{ProviderAttributeName} to \code{Cognito_Subject}, Amazon
Cognito will automatically parse the default unique identifier found
in the subject from the IdP token.
}}
}
\description{
Links an existing user account in a user pool, or \code{DestinationUser}, to an identity from an external IdP, or \code{SourceUser}, based on a specified attribute name and value from the external IdP.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_admin_link_provider_for_user/} for full documentation.
}
\keyword{internal}
