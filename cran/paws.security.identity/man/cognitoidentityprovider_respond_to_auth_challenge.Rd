% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_respond_to_auth_challenge}
\alias{cognitoidentityprovider_respond_to_auth_challenge}
\title{Some API operations in a user pool generate a challenge, like a prompt
for an MFA code, for device authentication that bypasses MFA, or for a
custom authentication challenge}
\usage{
cognitoidentityprovider_respond_to_auth_challenge(
  ClientId,
  ChallengeName,
  Session = NULL,
  ChallengeResponses = NULL,
  AnalyticsMetadata = NULL,
  UserContextData = NULL,
  ClientMetadata = NULL
)
}
\arguments{
\item{ClientId}{[required] The app client ID.}

\item{ChallengeName}{[required] The challenge name. For more information, see
\code{\link[=cognitoidentityprovider_initiate_auth]{initiate_auth}}.

\code{ADMIN_NO_SRP_AUTH} isn't a valid value.}

\item{Session}{The session that should be passed both ways in challenge-response calls
to the service. If
\code{\link[=cognitoidentityprovider_initiate_auth]{initiate_auth}} or
\code{\link[=cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge}}
API call determines that the caller must pass another challenge, they
return a session with other challenge parameters. This session should be
passed as it is to the next
\code{\link[=cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge}}
API call.}

\item{ChallengeResponses}{The responses to the challenge that you received in the previous
request. Each challenge has its own required response parameters. The
following examples are partial JSON request bodies that highlight
challenge-response parameters.

You must provide a SECRET_HASH parameter in all challenge responses to
an app client that has a client secret.

\strong{SMS_MFA}

\verb{"ChallengeName": "SMS_MFA", "ChallengeResponses": \{"SMS_MFA_CODE": "[SMS_code]", "USERNAME": "[username]"\}}

\strong{PASSWORD_VERIFIER}

\verb{"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses": \{"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME": "[username]"\}}

Add \code{"DEVICE_KEY"} when you sign in with a remembered device.

\strong{CUSTOM_CHALLENGE}

\verb{"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses": \{"USERNAME": "[username]", "ANSWER": "[challenge_answer]"\}}

Add \code{"DEVICE_KEY"} when you sign in with a remembered device.

\strong{NEW_PASSWORD_REQUIRED}

\verb{"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses": \{"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"\}}

To set any required attributes that
\code{\link[=cognitoidentityprovider_initiate_auth]{initiate_auth}} returned in an
\code{requiredAttributes} parameter, add
\code{"userAttributes.[attribute_name]": "[attribute_value]"}. This parameter
can also set values for writable attributes that aren't required by your
user pool.

In a \code{NEW_PASSWORD_REQUIRED} challenge response, you can't modify a
required attribute that already has a value. In
\code{\link[=cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge}},
set a value for any keys that Amazon Cognito returned in the
\code{requiredAttributes} parameter, then use the
\code{\link[=cognitoidentityprovider_update_user_attributes]{update_user_attributes}}
API operation to modify the value of any additional attributes.

\strong{SOFTWARE_TOKEN_MFA}

\verb{"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses": \{"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE": [authenticator_code]\}}

\strong{DEVICE_SRP_AUTH}

\verb{"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses": \{"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A": "[srp_a]"\}}

\strong{DEVICE_PASSWORD_VERIFIER}

\verb{"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses": \{"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE": "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP": [timestamp], "USERNAME": "[username]"\}}

\strong{MFA_SETUP}

\verb{"ChallengeName": "MFA_SETUP", "ChallengeResponses": \{"USERNAME": "[username]"\}, "SESSION": "[Session ID from VerifySoftwareToken]"}

\strong{SELECT_MFA_TYPE}

\verb{"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses": \{"USERNAME": "[username]", "ANSWER": "[SMS_MFA or SOFTWARE_TOKEN_MFA]"\}}

For more information about \code{SECRET_HASH}, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash}{Computing secret hash values}.
For information about \code{DEVICE_KEY}, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html}{Working with user devices in your user pool}.}

\item{AnalyticsMetadata}{The Amazon Pinpoint analytics metadata that contributes to your metrics
for
\code{\link[=cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge}}
calls.}

\item{UserContextData}{Contextual data about your user session, such as the device fingerprint,
IP address, or location. Amazon Cognito advanced security evaluates the
risk of an authentication event based on the context that your app
generates and passes to Amazon Cognito when it makes API requests.}

\item{ClientMetadata}{A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the RespondToAuthChallenge API action, Amazon
Cognito invokes any functions that are assigned to the following
triggers: \emph{post authentication}, \emph{pre token generation}, \emph{define auth
challenge}, \emph{create auth challenge}, and \emph{verify auth challenge}. When
Amazon Cognito invokes any of these functions, it passes a JSON payload,
which the function receives as input. This payload contains a
\code{clientMetadata} attribute, which provides the data that you assigned to
the ClientMetadata parameter in your RespondToAuthChallenge request. In
your function code in Lambda, you can process the \code{clientMetadata} value
to enhance your workflow for your specific needs.

For more information, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html}{Customizing user pool Workflows with Lambda Triggers}
in the \emph{Amazon Cognito Developer Guide}.

When you use the ClientMetadata parameter, remember that Amazon Cognito
won't do the following:
\itemize{
\item Store the ClientMetadata value. This data is available only to
Lambda triggers that are assigned to a user pool to support custom
workflows. If your user pool configuration doesn't include triggers,
the ClientMetadata parameter serves no purpose.
\item Validate the ClientMetadata value.
\item Encrypt the ClientMetadata value. Don't use Amazon Cognito to
provide sensitive information.
}}
}
\description{
Some API operations in a user pool generate a challenge, like a prompt for an MFA code, for device authentication that bypasses MFA, or for a custom authentication challenge. A \code{\link[=cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge}} API request provides the answer to that challenge, like a code or a secure remote password (SRP). The parameters of a response to an authentication challenge vary with the type of challenge.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_respond_to_auth_challenge/} for full documentation.
}
\keyword{internal}
