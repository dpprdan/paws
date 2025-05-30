% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_restore_analysis}
\alias{quicksight_restore_analysis}
\title{Restores an analysis}
\usage{
quicksight_restore_analysis(AwsAccountId, AnalysisId, RestoreToFolders = NULL)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that contains the analysis.}

\item{AnalysisId}{[required] The ID of the analysis that you're restoring.}

\item{RestoreToFolders}{A boolean value that determines if the analysis will be restored to
folders that it previously resided in. A \code{True} value restores analysis
back to all folders that it previously resided in. A \code{False} value
restores the analysis but does not restore the analysis back to all
previously resided folders. Restoring a restricted analysis requires
this parameter to be set to \code{True}.}
}
\description{
Restores an analysis.

See \url{https://www.paws-r-sdk.com/docs/quicksight_restore_analysis/} for full documentation.
}
\keyword{internal}
