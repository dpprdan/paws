% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_start_dashboard_snapshot_job_schedule}
\alias{quicksight_start_dashboard_snapshot_job_schedule}
\title{Starts an asynchronous job that runs an existing dashboard schedule and
sends the dashboard snapshot through email}
\usage{
quicksight_start_dashboard_snapshot_job_schedule(
  AwsAccountId,
  DashboardId,
  ScheduleId
)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that the dashboard snapshot
job is executed in.}

\item{DashboardId}{[required] The ID of the dashboard that you want to start a snapshot job schedule
for.}

\item{ScheduleId}{[required] The ID of the schedule that you want to start a snapshot job schedule
for. The schedule ID can be found in the Amazon QuickSight console in
the \strong{Schedules} pane of the dashboard that the schedule is configured
for.}
}
\description{
Starts an asynchronous job that runs an existing dashboard schedule and sends the dashboard snapshot through email.

See \url{https://www.paws-r-sdk.com/docs/quicksight_start_dashboard_snapshot_job_schedule/} for full documentation.
}
\keyword{internal}
