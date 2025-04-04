% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_get_ui_customization}
\alias{cognitoidentityprovider_get_ui_customization}
\title{Gets the user interface (UI) Customization information for a particular
app client's app UI, if any such information exists for the client}
\usage{
cognitoidentityprovider_get_ui_customization(UserPoolId, ClientId = NULL)
}
\arguments{
\item{UserPoolId}{[required] The ID of the user pool.}

\item{ClientId}{The client ID for the client app.}
}
\description{
Gets the user interface (UI) Customization information for a particular app client's app UI, if any such information exists for the client. If nothing is set for the particular client, but there is an existing pool level customization (the app \code{clientId} is \code{ALL}), then that information is returned. If nothing is present, then an empty shape is returned.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_get_ui_customization/} for full documentation.
}
\keyword{internal}
