% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspacesweb_operations.R
\name{workspacesweb_update_user_settings}
\alias{workspacesweb_update_user_settings}
\title{Updates the user settings}
\usage{
workspacesweb_update_user_settings(
  clientToken = NULL,
  cookieSynchronizationConfiguration = NULL,
  copyAllowed = NULL,
  deepLinkAllowed = NULL,
  disconnectTimeoutInMinutes = NULL,
  downloadAllowed = NULL,
  idleDisconnectTimeoutInMinutes = NULL,
  pasteAllowed = NULL,
  printAllowed = NULL,
  toolbarConfiguration = NULL,
  uploadAllowed = NULL,
  userSettingsArn
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
return the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.}

\item{cookieSynchronizationConfiguration}{The configuration that specifies which cookies should be synchronized
from the end user's local browser to the remote browser.

If the allowlist and blocklist are empty, the configuration becomes
null.}

\item{copyAllowed}{Specifies whether the user can copy text from the streaming session to
the local device.}

\item{deepLinkAllowed}{Specifies whether the user can use deep links that open automatically
when connecting to a session.}

\item{disconnectTimeoutInMinutes}{The amount of time that a streaming session remains active after users
disconnect.}

\item{downloadAllowed}{Specifies whether the user can download files from the streaming session
to the local device.}

\item{idleDisconnectTimeoutInMinutes}{The amount of time that users can be idle (inactive) before they are
disconnected from their streaming session and the disconnect timeout
interval begins.}

\item{pasteAllowed}{Specifies whether the user can paste text from the local device to the
streaming session.}

\item{printAllowed}{Specifies whether the user can print to the local device.}

\item{toolbarConfiguration}{The configuration of the toolbar. This allows administrators to select
the toolbar type and visual mode, set maximum display resolution for
sessions, and choose which items are visible to end users during their
sessions. If administrators do not modify these settings, end users
retain control over their toolbar preferences.}

\item{uploadAllowed}{Specifies whether the user can upload files from the local device to the
streaming session.}

\item{userSettingsArn}{[required] The ARN of the user settings.}
}
\description{
Updates the user settings.

See \url{https://www.paws-r-sdk.com/docs/workspacesweb_update_user_settings/} for full documentation.
}
\keyword{internal}
