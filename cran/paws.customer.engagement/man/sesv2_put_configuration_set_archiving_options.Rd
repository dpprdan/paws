% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_put_configuration_set_archiving_options}
\alias{sesv2_put_configuration_set_archiving_options}
\title{Associate the configuration set with a MailManager archive}
\usage{
sesv2_put_configuration_set_archiving_options(
  ConfigurationSetName,
  ArchiveArn = NULL
)
}
\arguments{
\item{ConfigurationSetName}{[required] The name of the configuration set to associate with a MailManager
archive.}

\item{ArchiveArn}{The Amazon Resource Name (ARN) of the MailManager archive that the
Amazon SES API v2 sends email to.}
}
\description{
Associate the configuration set with a MailManager archive. When you send email using the \code{\link[=sesv2_send_email]{send_email}} or \code{\link[=sesv2_send_bulk_email]{send_bulk_email}} operations the message as it will be given to the receiving SMTP server will be archived, along with the recipient information.

See \url{https://www.paws-r-sdk.com/docs/sesv2_put_configuration_set_archiving_options/} for full documentation.
}
\keyword{internal}
