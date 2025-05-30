% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_operations.R
\name{batch_create_job_queue}
\alias{batch_create_job_queue}
\title{Creates an Batch job queue}
\usage{
batch_create_job_queue(
  jobQueueName,
  state = NULL,
  schedulingPolicyArn = NULL,
  priority,
  computeEnvironmentOrder,
  tags = NULL,
  jobStateTimeLimitActions = NULL
)
}
\arguments{
\item{jobQueueName}{[required] The name of the job queue. It can be up to 128 letters long. It can
contain uppercase and lowercase letters, numbers, hyphens (-), and
underscores (_).}

\item{state}{The state of the job queue. If the job queue state is \code{ENABLED}, it is
able to accept jobs. If the job queue state is \code{DISABLED}, new jobs
can't be added to the queue, but jobs already in the queue can finish.}

\item{schedulingPolicyArn}{The Amazon Resource Name (ARN) of the fair-share scheduling policy. Job
queues that don't have a fair-share scheduling policy are scheduled in a
first-in, first-out (FIFO) model. After a job queue has a fair-share
scheduling policy, it can be replaced but can't be removed.

The format is
\code{aws:Partition:batch:Region:Account:scheduling-policy/Name }.

An example is
\code{aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy}.

A job queue without a fair-share scheduling policy is scheduled as a
FIFO job queue and can't have a fair-share scheduling policy added. Jobs
queues with a fair-share scheduling policy can have a maximum of 500
active share identifiers. When the limit has been reached, submissions
of any jobs that add a new share identifier fail.}

\item{priority}{[required] The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the \code{priority} parameter) are evaluated first
when associated with the same compute environment. Priority is
determined in descending order. For example, a job queue with a priority
value of \code{10} is given scheduling preference over a job queue with a
priority value of \code{1}. All of the compute environments must be either
EC2 (\code{EC2} or \code{SPOT}) or Fargate (\code{FARGATE} or \code{FARGATE_SPOT}); EC2 and
Fargate compute environments can't be mixed.}

\item{computeEnvironmentOrder}{[required] The set of compute environments mapped to a job queue and their order
relative to each other. The job scheduler uses this parameter to
determine which compute environment runs a specific job. Compute
environments must be in the \code{VALID} state before you can associate them
with a job queue. You can associate up to three compute environments
with a job queue. All of the compute environments must be either EC2
(\code{EC2} or \code{SPOT}) or Fargate (\code{FARGATE} or \code{FARGATE_SPOT}); EC2 and
Fargate compute environments can't be mixed.

All compute environments that are associated with a job queue must share
the same architecture. Batch doesn't support mixing compute environment
architecture types in a single job queue.}

\item{tags}{The tags that you apply to the job queue to help you categorize and
organize your resources. Each tag consists of a key and an optional
value. For more information, see \href{https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html}{Tagging your Batch resources}
in \emph{Batch User Guide}.}

\item{jobStateTimeLimitActions}{The set of actions that Batch performs on jobs that remain at the head
of the job queue in the specified state longer than specified times.
Batch will perform each action after \code{maxTimeSeconds} has passed.
(\strong{Note}: The minimum value for maxTimeSeconds is 600 (10 minutes) and
its maximum value is 86,400 (24 hours).)}
}
\description{
Creates an Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.

See \url{https://www.paws-r-sdk.com/docs/batch_create_job_queue/} for full documentation.
}
\keyword{internal}
