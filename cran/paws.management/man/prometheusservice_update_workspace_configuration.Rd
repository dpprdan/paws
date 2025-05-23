% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prometheusservice_operations.R
\name{prometheusservice_update_workspace_configuration}
\alias{prometheusservice_update_workspace_configuration}
\title{Use this operation to create or update the label sets, label set limits,
and retention period of a workspace}
\usage{
prometheusservice_update_workspace_configuration(
  clientToken = NULL,
  limitsPerLabelSet = NULL,
  retentionPeriodInDays = NULL,
  workspaceId
)
}
\arguments{
\item{clientToken}{You can include a token in your operation to make it an idempotent
opeartion.}

\item{limitsPerLabelSet}{This is an array of structures, where each structure defines a label set
for the workspace, and defines the ingestion limit for active time
series for each of those label sets. Each label name in a label set must
be unique.}

\item{retentionPeriodInDays}{Specifies how many days that metrics will be retained in the workspace.}

\item{workspaceId}{[required] The ID of the workspace that you want to update. To find the IDs of your
workspaces, use the
\code{\link[=prometheusservice_list_workspaces]{list_workspaces}} operation.}
}
\description{
Use this operation to create or update the label sets, label set limits, and retention period of a workspace.

See \url{https://www.paws-r-sdk.com/docs/prometheusservice_update_workspace_configuration/} for full documentation.
}
\keyword{internal}
