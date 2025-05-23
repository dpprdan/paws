% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53resolver_operations.R
\name{route53resolver_list_firewall_rules}
\alias{route53resolver_list_firewall_rules}
\title{Retrieves the firewall rules that you have defined for the specified
firewall rule group}
\usage{
route53resolver_list_firewall_rules(
  FirewallRuleGroupId,
  Priority = NULL,
  Action = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{FirewallRuleGroupId}{[required] The unique identifier of the firewall rule group that you want to
retrieve the rules for.}

\item{Priority}{Optional additional filter for the rules to retrieve.

The setting that determines the processing order of the rules in a rule
group. DNS Firewall processes the rules in a rule group by order of
priority, starting from the lowest setting.}

\item{Action}{Optional additional filter for the rules to retrieve.

The action that DNS Firewall should take on a DNS query when it matches
one of the domains in the rule's domain list, or a threat in a DNS
Firewall Advanced rule:
\itemize{
\item \code{ALLOW} - Permit the request to go through. Not availabe for DNS
Firewall Advanced rules.
\item \code{ALERT} - Permit the request to go through but send an alert to the
logs.
\item \code{BLOCK} - Disallow the request. If this is specified, additional
handling details are provided in the rule's \code{BlockResponse} setting.
}}

\item{MaxResults}{The maximum number of objects that you want Resolver to return for this
request. If more objects are available, in the response, Resolver
provides a \code{NextToken} value that you can use in a subsequent call to
get the next batch of objects.

If you don't specify a value for \code{MaxResults}, Resolver returns up to
100 objects.}

\item{NextToken}{For the first call to this list request, omit this value.

When you request a list of objects, Resolver returns at most the number
of objects specified in \code{MaxResults}. If more objects are available for
retrieval, Resolver returns a \code{NextToken} value in the response. To
retrieve the next batch of objects, use the token that was returned for
the prior request in your next request.}
}
\description{
Retrieves the firewall rules that you have defined for the specified firewall rule group. DNS Firewall uses the rules in a rule group to filter DNS network traffic for a VPC.

See \url{https://www.paws-r-sdk.com/docs/route53resolver_list_firewall_rules/} for full documentation.
}
\keyword{internal}
