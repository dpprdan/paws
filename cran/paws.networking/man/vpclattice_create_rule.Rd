% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpclattice_operations.R
\name{vpclattice_create_rule}
\alias{vpclattice_create_rule}
\title{Creates a listener rule}
\usage{
vpclattice_create_rule(
  action,
  clientToken = NULL,
  listenerIdentifier,
  match,
  name,
  priority,
  serviceIdentifier,
  tags = NULL
)
}
\arguments{
\item{action}{[required] The action for the default rule.}

\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.}

\item{listenerIdentifier}{[required] The ID or ARN of the listener.}

\item{match}{[required] The rule match.}

\item{name}{[required] The name of the rule. The name must be unique within the listener. The
valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen
as the first or last character, or immediately after another hyphen.}

\item{priority}{[required] The priority assigned to the rule. Each rule for a specific listener
must have a unique priority. The lower the priority number the higher
the priority.}

\item{serviceIdentifier}{[required] The ID or ARN of the service.}

\item{tags}{The tags for the rule.}
}
\description{
Creates a listener rule. Each listener has a default rule for checking connection requests, but you can define additional rules. Each rule consists of a priority, one or more actions, and one or more conditions. For more information, see \href{https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules}{Listener rules} in the \emph{Amazon VPC Lattice User Guide}.

See \url{https://www.paws-r-sdk.com/docs/vpclattice_create_rule/} for full documentation.
}
\keyword{internal}
