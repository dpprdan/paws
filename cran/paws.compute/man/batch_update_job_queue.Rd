% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_operations.R
\name{batch_update_job_queue}
\alias{batch_update_job_queue}
\title{Updates a job queue}
\usage{
batch_update_job_queue(
  jobQueue,
  state = NULL,
  schedulingPolicyArn = NULL,
  priority = NULL,
  computeEnvironmentOrder = NULL,
  jobStateTimeLimitActions = NULL
)
}
\arguments{
\item{jobQueue}{[required] The name or the Amazon Resource Name (ARN) of the job queue.}

\item{state}{Describes the queue's ability to accept new jobs. If the job queue state
is \code{ENABLED}, it can accept jobs. If the job queue state is \code{DISABLED},
new jobs can't be added to the queue, but jobs already in the queue can
finish.}

\item{schedulingPolicyArn}{Amazon Resource Name (ARN) of the fair-share scheduling policy. Once a
job queue is created, the fair-share scheduling policy can be replaced
but not removed. The format is
\code{aws:Partition:batch:Region:Account:scheduling-policy/Name }. For
example,
\code{aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy}.}

\item{priority}{The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the \code{priority} parameter) are evaluated first
when associated with the same compute environment. Priority is
determined in descending order. For example, a job queue with a priority
value of \code{10} is given scheduling preference over a job queue with a
priority value of \code{1}. All of the compute environments must be either
EC2 (\code{EC2} or \code{SPOT}) or Fargate (\code{FARGATE} or \code{FARGATE_SPOT}). EC2 and
Fargate compute environments can't be mixed.}

\item{computeEnvironmentOrder}{Details the set of compute environments mapped to a job queue and their
order relative to each other. This is one of the parameters used by the
job scheduler to determine which compute environment runs a given job.
Compute environments must be in the \code{VALID} state before you can
associate them with a job queue. All of the compute environments must be
either EC2 (\code{EC2} or \code{SPOT}) or Fargate (\code{FARGATE} or \code{FARGATE_SPOT}).
EC2 and Fargate compute environments can't be mixed.

All compute environments that are associated with a job queue must share
the same architecture. Batch doesn't support mixing compute environment
architecture types in a single job queue.}

\item{jobStateTimeLimitActions}{The set of actions that Batch perform on jobs that remain at the head of
the job queue in the specified state longer than specified times. Batch
will perform each action after \code{maxTimeSeconds} has passed. (\strong{Note}:
The minimum value for maxTimeSeconds is 600 (10 minutes) and its maximum
value is 86,400 (24 hours).)}
}
\description{
Updates a job queue.

See \url{https://www.paws-r-sdk.com/docs/batch_update_job_queue/} for full documentation.
}
\keyword{internal}
