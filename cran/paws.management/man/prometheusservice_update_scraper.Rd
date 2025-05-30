% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prometheusservice_operations.R
\name{prometheusservice_update_scraper}
\alias{prometheusservice_update_scraper}
\title{Updates an existing scraper}
\usage{
prometheusservice_update_scraper(
  alias = NULL,
  clientToken = NULL,
  destination = NULL,
  roleConfiguration = NULL,
  scrapeConfiguration = NULL,
  scraperId
)
}
\arguments{
\item{alias}{The new alias of the scraper.}

\item{clientToken}{A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.}

\item{destination}{The new Amazon Managed Service for Prometheus workspace to send metrics
to.}

\item{roleConfiguration}{Use this structure to enable cross-account access, so that you can use a
target account to access Prometheus metrics from source accounts.}

\item{scrapeConfiguration}{Contains the base-64 encoded YAML configuration for the scraper.

For more information about configuring a scraper, see \href{https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html}{Using an Amazon Web Services managed collector}
in the \emph{Amazon Managed Service for Prometheus User Guide}.}

\item{scraperId}{[required] The ID of the scraper to update.}
}
\description{
Updates an existing scraper.

See \url{https://www.paws-r-sdk.com/docs/prometheusservice_update_scraper/} for full documentation.
}
\keyword{internal}
