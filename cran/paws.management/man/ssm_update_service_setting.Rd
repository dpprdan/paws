% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_update_service_setting}
\alias{ssm_update_service_setting}
\title{ServiceSetting is an account-level setting for an Amazon Web Services
service}
\usage{
ssm_update_service_setting(SettingId, SettingValue)
}
\arguments{
\item{SettingId}{[required] The Amazon Resource Name (ARN) of the service setting to update. For
example,
\code{arn:aws:ssm:us-east-1:111122223333:servicesetting/ssm/parameter-store/high-throughput-enabled}.
The setting ID can be one of the following.
\itemize{
\item \verb{/ssm/appmanager/appmanager-enabled}
\item \verb{/ssm/automation/customer-script-log-destination}
\item \verb{/ssm/automation/customer-script-log-group-name}
\item /ssm/automation/enable-adaptive-concurrency
\item \verb{/ssm/documents/console/public-sharing-permission}
\item \verb{/ssm/managed-instance/activation-tier}
\item \verb{/ssm/managed-instance/default-ec2-instance-management-role}
\item \verb{/ssm/opsinsights/opscenter}
\item \verb{/ssm/parameter-store/default-parameter-tier}
\item \verb{/ssm/parameter-store/high-throughput-enabled}
}

Permissions to update the
\verb{/ssm/managed-instance/default-ec2-instance-management-role} setting
should only be provided to administrators. Implement least privilege
access when allowing individuals to configure or modify the Default Host
Management Configuration.}

\item{SettingValue}{[required] The new value to specify for the service setting. The following list
specifies the available values for each setting.
\itemize{
\item For \verb{/ssm/appmanager/appmanager-enabled}, enter \code{True} or \code{False}.
\item For \verb{/ssm/automation/customer-script-log-destination}, enter
\code{CloudWatch}.
\item For \verb{/ssm/automation/customer-script-log-group-name}, enter the name
of an Amazon CloudWatch Logs log group.
\item For \verb{/ssm/documents/console/public-sharing-permission}, enter
\code{Enable} or \code{Disable}.
\item For \verb{/ssm/managed-instance/activation-tier}, enter \code{standard} or
\code{advanced}.
\item For \verb{/ssm/managed-instance/default-ec2-instance-management-role},
enter the name of an IAM role.
\item For \verb{/ssm/opsinsights/opscenter}, enter \code{Enabled} or \code{Disabled}.
\item For \verb{/ssm/parameter-store/default-parameter-tier}, enter \code{Standard},
\code{Advanced}, or \code{Intelligent-Tiering}
\item For \verb{/ssm/parameter-store/high-throughput-enabled}, enter \code{true} or
\code{false}.
}}
}
\description{
\code{ServiceSetting} is an account-level setting for an Amazon Web Services service. This setting defines how a user interacts with or uses a service or a feature of a service. For example, if an Amazon Web Services service charges money to the account based on feature or service usage, then the Amazon Web Services service team might create a default setting of "false". This means the user can't use this feature unless they change the setting to "true" and intentionally opt in for a paid feature.

See \url{https://www.paws-r-sdk.com/docs/ssm_update_service_setting/} for full documentation.
}
\keyword{internal}
