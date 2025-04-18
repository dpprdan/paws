% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_describe_resource_server}
\alias{cognitoidentityprovider_describe_resource_server}
\title{Describes a resource server}
\usage{
cognitoidentityprovider_describe_resource_server(UserPoolId, Identifier)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool that hosts the resource server.}

\item{Identifier}{[required] A unique resource server identifier for the resource server. The
identifier can be an API friendly name like \code{solar-system-data}. You can
also set an API URL like \verb{https://solar-system-data-api.example.com} as
your identifier.

Amazon Cognito represents scopes in the access token in the format
\verb{$resource-server-identifier/$scope}. Longer scope-identifier strings
increase the size of your access tokens.}
}
\description{
Describes a resource server. For more information about resource servers, see \href{https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html}{Access control with resource servers}.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_describe_resource_server/} for full documentation.
}
\keyword{internal}
