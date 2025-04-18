% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cleanroomsml_operations.R
\name{cleanroomsml_list_collaboration_trained_model_inference_jobs}
\alias{cleanroomsml_list_collaboration_trained_model_inference_jobs}
\title{Returns a list of trained model inference jobs in a specified
collaboration}
\usage{
cleanroomsml_list_collaboration_trained_model_inference_jobs(
  nextToken = NULL,
  maxResults = NULL,
  collaborationIdentifier,
  trainedModelArn = NULL
)
}
\arguments{
\item{nextToken}{The token value retrieved from a previous call to access the next page
of results.}

\item{maxResults}{The maximum size of the results that is returned per call.}

\item{collaborationIdentifier}{[required] The collaboration ID of the collaboration that contains the trained
model inference jobs that you are interested in.}

\item{trainedModelArn}{The Amazon Resource Name (ARN) of the trained model that was used to
create the trained model inference jobs that you are interested in.}
}
\description{
Returns a list of trained model inference jobs in a specified collaboration.

See \url{https://www.paws-r-sdk.com/docs/cleanroomsml_list_collaboration_trained_model_inference_jobs/} for full documentation.
}
\keyword{internal}
