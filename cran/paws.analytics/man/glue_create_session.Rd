% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_session}
\alias{glue_create_session}
\title{Creates a new session}
\usage{
glue_create_session(
  Id,
  Description = NULL,
  Role,
  Command,
  Timeout = NULL,
  IdleTimeout = NULL,
  DefaultArguments = NULL,
  Connections = NULL,
  MaxCapacity = NULL,
  NumberOfWorkers = NULL,
  WorkerType = NULL,
  SecurityConfiguration = NULL,
  GlueVersion = NULL,
  Tags = NULL,
  RequestOrigin = NULL
)
}
\arguments{
\item{Id}{[required] The ID of the session request.}

\item{Description}{The description of the session.}

\item{Role}{[required] The IAM Role ARN}

\item{Command}{[required] The \code{SessionCommand} that runs the job.}

\item{Timeout}{The number of minutes before session times out. Default for Spark ETL
jobs is 48 hours (2880 minutes). Consult the documentation for other job
types.}

\item{IdleTimeout}{The number of minutes when idle before session times out. Default for
Spark ETL jobs is value of Timeout. Consult the documentation for other
job types.}

\item{DefaultArguments}{A map array of key-value pairs. Max is 75 pairs.}

\item{Connections}{The number of connections to use for the session.}

\item{MaxCapacity}{The number of Glue data processing units (DPUs) that can be allocated
when the job runs. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB memory.}

\item{NumberOfWorkers}{The number of workers of a defined \code{WorkerType} to use for the session.}

\item{WorkerType}{The type of predefined worker that is allocated when a job runs. Accepts
a value of G.1X, G.2X, G.4X, or G.8X for Spark jobs. Accepts the value
Z.2X for Ray notebooks.
\itemize{
\item For the \code{G.1X} worker type, each worker maps to 1 DPU (4 vCPUs, 16
GB of memory) with 94GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to
run most jobs.
\item For the \code{G.2X} worker type, each worker maps to 2 DPU (8 vCPUs, 32
GB of memory) with 138GB disk, and provides 1 executor per worker.
We recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to
run most jobs.
\item For the \code{G.4X} worker type, each worker maps to 4 DPU (16 vCPUs, 64
GB of memory) with 256GB disk, and provides 1 executor per worker.
We recommend this worker type for jobs whose workloads contain your
most demanding transforms, aggregations, joins, and queries. This
worker type is available only for Glue version 3.0 or later Spark
ETL jobs in the following Amazon Web Services Regions: US East
(Ohio), US East (N. Virginia), US West (Oregon), Asia Pacific
(Singapore), Asia Pacific (Sydney), Asia Pacific (Tokyo), Canada
(Central), Europe (Frankfurt), Europe (Ireland), and Europe
(Stockholm).
\item For the \code{G.8X} worker type, each worker maps to 8 DPU (32 vCPUs, 128
GB of memory) with 512GB disk, and provides 1 executor per worker.
We recommend this worker type for jobs whose workloads contain your
most demanding transforms, aggregations, joins, and queries. This
worker type is available only for Glue version 3.0 or later Spark
ETL jobs, in the same Amazon Web Services Regions as supported for
the \code{G.4X} worker type.
\item For the \code{Z.2X} worker type, each worker maps to 2 M-DPU (8vCPUs, 64
GB of memory) with 128 GB disk, and provides up to 8 Ray workers
based on the autoscaler.
}}

\item{SecurityConfiguration}{The name of the SecurityConfiguration structure to be used with the
session}

\item{GlueVersion}{The Glue version determines the versions of Apache Spark and Python that
Glue supports. The GlueVersion must be greater than 2.0.}

\item{Tags}{The map of key value pairs (tags) belonging to the session.}

\item{RequestOrigin}{The origin of the request.}
}
\description{
Creates a new session.

See \url{https://www.paws-r-sdk.com/docs/glue_create_session/} for full documentation.
}
\keyword{internal}
