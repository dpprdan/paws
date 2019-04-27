% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_resolve_alias}
\alias{gamelift_resolve_alias}
\title{Retrieves the fleet ID that a specified alias is currently pointing to}
\usage{
gamelift_resolve_alias(AliasId)
}
\arguments{
\item{AliasId}{[required] Unique identifier for the alias you want to resolve.}
}
\description{
Retrieves the fleet ID that a specified alias is currently pointing to.
}
\details{
\itemize{
\item CreateAlias
\item ListAliases
\item DescribeAlias
\item UpdateAlias
\item DeleteAlias
\item ResolveAlias
}
}
\section{Request syntax}{
\preformatted{svc$resolve_alias(
  AliasId = "string"
)
}
}

\keyword{internal}