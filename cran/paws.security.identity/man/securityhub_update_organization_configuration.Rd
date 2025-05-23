% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_update_organization_configuration}
\alias{securityhub_update_organization_configuration}
\title{Updates the configuration of your organization in Security Hub}
\usage{
securityhub_update_organization_configuration(
  AutoEnable,
  AutoEnableStandards = NULL,
  OrganizationConfiguration = NULL
)
}
\arguments{
\item{AutoEnable}{[required] Whether to automatically enable Security Hub in new member accounts when
they join the organization.

If set to \code{true}, then Security Hub is automatically enabled in new
accounts. If set to \code{false}, then Security Hub isn't enabled in new
accounts automatically. The default value is \code{false}.

If the \code{ConfigurationType} of your organization is set to \code{CENTRAL},
then this field is set to \code{false} and can't be changed in the home
Region and linked Regions. However, in that case, the delegated
administrator can create a configuration policy in which Security Hub is
enabled and associate the policy with new organization accounts.}

\item{AutoEnableStandards}{Whether to automatically enable Security Hub \href{https://docs.aws.amazon.com/securityhub/latest/userguide/}{default standards} in
new member accounts when they join the organization.

The default value of this parameter is equal to \code{DEFAULT}.

If equal to \code{DEFAULT}, then Security Hub default standards are
automatically enabled for new member accounts. If equal to \code{NONE}, then
default standards are not automatically enabled for new member accounts.

If the \code{ConfigurationType} of your organization is set to \code{CENTRAL},
then this field is set to \code{NONE} and can't be changed in the home Region
and linked Regions. However, in that case, the delegated administrator
can create a configuration policy in which specific security standards
are enabled and associate the policy with new organization accounts.}

\item{OrganizationConfiguration}{}
}
\description{
Updates the configuration of your organization in Security Hub. Only the Security Hub administrator account can invoke this operation.

See \url{https://www.paws-r-sdk.com/docs/securityhub_update_organization_configuration/} for full documentation.
}
\keyword{internal}
