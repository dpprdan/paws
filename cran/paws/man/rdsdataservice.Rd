% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{rdsdataservice}
\alias{rdsdataservice}
\title{AWS RDS DataService}
\usage{
rdsdataservice(
  config = list(),
  credentials = list(),
  endpoint = NULL,
  region = NULL
)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}: \itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}
\item{\strong{endpoint}: The complete URL to use for the constructed client.}
\item{\strong{region}: The AWS Region used in instantiating the client.}
\item{\strong{close_connection}: Immediately close all HTTP connections.}
\item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}: Set this to \code{true} to force the request to use path-style addressing, i.e. \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
\item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
}}

\item{credentials}{Optional credentials shorthand for the config parameter
\itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
\item{\strong{session_token}: AWS temporary session token}
}}
\item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}: Set anonymous credentials.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}

\item{region}{Optional shorthand for AWS Region used in instantiating the client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
RDS Data API

Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
Aurora DB cluster. To run these statements, you use the RDS Data API
(Data API).

Data API is available with the following types of Aurora databases:
\itemize{
\item Aurora PostgreSQL - Serverless v2, provisioned, and Serverless v1
\item Aurora MySQL - Serverless v2, provisioned, and Serverless v1
}

For more information about the Data API, see \href{https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html}{Using RDS Data API}
in the \emph{Amazon Aurora User Guide}.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- rdsdataservice(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical",
    sts_regional_endpoint = "string"
  ),
  credentials = list(
    creds = list(
      access_key_id = "string",
      secret_access_key = "string",
      session_token = "string"
    ),
    profile = "string",
    anonymous = "logical"
  ),
  endpoint = "string",
  region = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[paws.database:rdsdataservice_batch_execute_statement]{batch_execute_statement} \tab Runs a batch SQL statement over an array of data\cr
\link[paws.database:rdsdataservice_begin_transaction]{begin_transaction} \tab Starts a SQL transaction\cr
\link[paws.database:rdsdataservice_commit_transaction]{commit_transaction} \tab Ends a SQL transaction started with the BeginTransaction operation and commits the changes\cr
\link[paws.database:rdsdataservice_execute_sql]{execute_sql} \tab Runs one or more SQL statements\cr
\link[paws.database:rdsdataservice_execute_statement]{execute_statement} \tab Runs a SQL statement against a database\cr
\link[paws.database:rdsdataservice_rollback_transaction]{rollback_transaction} \tab Performs a rollback of a transaction
}
}

\examples{
\dontrun{
svc <- rdsdataservice()
svc$batch_execute_statement(
  Foo = 123
)
}

}
