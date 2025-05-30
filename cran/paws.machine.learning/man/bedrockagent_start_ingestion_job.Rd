% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bedrockagent_operations.R
\name{bedrockagent_start_ingestion_job}
\alias{bedrockagent_start_ingestion_job}
\title{Begins a data ingestion job}
\usage{
bedrockagent_start_ingestion_job(
  clientToken = NULL,
  dataSourceId,
  description = NULL,
  knowledgeBaseId
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see \href{https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html}{Ensuring idempotency}.}

\item{dataSourceId}{[required] The unique identifier of the data source you want to ingest into your
knowledge base.}

\item{description}{A description of the data ingestion job.}

\item{knowledgeBaseId}{[required] The unique identifier of the knowledge base for the data ingestion job.}
}
\description{
Begins a data ingestion job. Data sources are ingested into your knowledge base so that Large Language Models (LLMs) can use your data.

See \url{https://www.paws-r-sdk.com/docs/bedrockagent_start_ingestion_job/} for full documentation.
}
\keyword{internal}
