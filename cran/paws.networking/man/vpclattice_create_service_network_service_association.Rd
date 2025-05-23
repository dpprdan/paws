% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpclattice_operations.R
\name{vpclattice_create_service_network_service_association}
\alias{vpclattice_create_service_network_service_association}
\title{Associates the specified service with the specified service network}
\usage{
vpclattice_create_service_network_service_association(
  clientToken = NULL,
  serviceIdentifier,
  serviceNetworkIdentifier,
  tags = NULL
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.}

\item{serviceIdentifier}{[required] The ID or ARN of the service.}

\item{serviceNetworkIdentifier}{[required] The ID or ARN of the service network. You must use an ARN if the
resources are in different accounts.}

\item{tags}{The tags for the association.}
}
\description{
Associates the specified service with the specified service network. For more information, see \href{https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-service-associations}{Manage service associations} in the \emph{Amazon VPC Lattice User Guide}.

See \url{https://www.paws-r-sdk.com/docs/vpclattice_create_service_network_service_association/} for full documentation.
}
\keyword{internal}
