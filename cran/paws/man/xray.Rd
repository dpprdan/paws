% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{xray}
\alias{xray}
\title{AWS X-Ray}
\usage{
xray(config = list(), credentials = list(), endpoint = NULL, region = NULL)
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
Amazon Web Services X-Ray provides APIs for managing debug traces and
retrieving service maps and other data created by processing those
traces.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- xray(
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
\link[paws.developer.tools:xray_batch_get_traces]{batch_get_traces} \tab You cannot find traces through this API if Transaction Search is enabled since trace is not indexed in X-Ray\cr
\link[paws.developer.tools:xray_cancel_trace_retrieval]{cancel_trace_retrieval} \tab Cancels an ongoing trace retrieval job initiated by StartTraceRetrieval using the provided RetrievalToken\cr
\link[paws.developer.tools:xray_create_group]{create_group} \tab Creates a group resource with a name and a filter expression\cr
\link[paws.developer.tools:xray_create_sampling_rule]{create_sampling_rule} \tab Creates a rule to control sampling behavior for instrumented applications\cr
\link[paws.developer.tools:xray_delete_group]{delete_group} \tab Deletes a group resource\cr
\link[paws.developer.tools:xray_delete_resource_policy]{delete_resource_policy} \tab Deletes a resource policy from the target Amazon Web Services account\cr
\link[paws.developer.tools:xray_delete_sampling_rule]{delete_sampling_rule} \tab Deletes a sampling rule\cr
\link[paws.developer.tools:xray_get_encryption_config]{get_encryption_config} \tab Retrieves the current encryption configuration for X-Ray data\cr
\link[paws.developer.tools:xray_get_group]{get_group} \tab Retrieves group resource details\cr
\link[paws.developer.tools:xray_get_groups]{get_groups} \tab Retrieves all active group details\cr
\link[paws.developer.tools:xray_get_indexing_rules]{get_indexing_rules} \tab Retrieves all indexing rules\cr
\link[paws.developer.tools:xray_get_insight]{get_insight} \tab Retrieves the summary information of an insight\cr
\link[paws.developer.tools:xray_get_insight_events]{get_insight_events} \tab X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event\cr
\link[paws.developer.tools:xray_get_insight_impact_graph]{get_insight_impact_graph} \tab Retrieves a service graph structure filtered by the specified insight\cr
\link[paws.developer.tools:xray_get_insight_summaries]{get_insight_summaries} \tab Retrieves the summaries of all insights in the specified group matching the provided filter values\cr
\link[paws.developer.tools:xray_get_retrieved_traces_graph]{get_retrieved_traces_graph} \tab Retrieves a service graph for traces based on the specified RetrievalToken from the CloudWatch log group generated by Transaction Search\cr
\link[paws.developer.tools:xray_get_sampling_rules]{get_sampling_rules} \tab Retrieves all sampling rules\cr
\link[paws.developer.tools:xray_get_sampling_statistic_summaries]{get_sampling_statistic_summaries} \tab Retrieves information about recent sampling results for all sampling rules\cr
\link[paws.developer.tools:xray_get_sampling_targets]{get_sampling_targets} \tab Requests a sampling quota for rules that the service is using to sample requests\cr
\link[paws.developer.tools:xray_get_service_graph]{get_service_graph} \tab Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result\cr
\link[paws.developer.tools:xray_get_time_series_service_statistics]{get_time_series_service_statistics} \tab Get an aggregation of service statistics defined by a specific time range\cr
\link[paws.developer.tools:xray_get_trace_graph]{get_trace_graph} \tab Retrieves a service graph for one or more specific trace IDs\cr
\link[paws.developer.tools:xray_get_trace_segment_destination]{get_trace_segment_destination} \tab Retrieves the current destination of data sent to PutTraceSegments and OpenTelemetry API\cr
\link[paws.developer.tools:xray_get_trace_summaries]{get_trace_summaries} \tab Retrieves IDs and annotations for traces available for a specified time frame using an optional filter\cr
\link[paws.developer.tools:xray_list_resource_policies]{list_resource_policies} \tab Returns the list of resource policies in the target Amazon Web Services account\cr
\link[paws.developer.tools:xray_list_retrieved_traces]{list_retrieved_traces} \tab Retrieves a list of traces for a given RetrievalToken from the CloudWatch log group generated by Transaction Search\cr
\link[paws.developer.tools:xray_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule\cr
\link[paws.developer.tools:xray_put_encryption_config]{put_encryption_config} \tab Updates the encryption configuration for X-Ray data\cr
\link[paws.developer.tools:xray_put_resource_policy]{put_resource_policy} \tab Sets the resource policy to grant one or more Amazon Web Services services and accounts permissions to access X-Ray\cr
\link[paws.developer.tools:xray_put_telemetry_records]{put_telemetry_records} \tab Used by the Amazon Web Services X-Ray daemon to upload telemetry\cr
\link[paws.developer.tools:xray_put_trace_segments]{put_trace_segments} \tab Uploads segment documents to Amazon Web Services X-Ray\cr
\link[paws.developer.tools:xray_start_trace_retrieval]{start_trace_retrieval} \tab Initiates a trace retrieval process using the specified time range and for the give trace IDs on Transaction Search generated by the CloudWatch log group\cr
\link[paws.developer.tools:xray_tag_resource]{tag_resource} \tab Applies tags to an existing Amazon Web Services X-Ray group or sampling rule\cr
\link[paws.developer.tools:xray_untag_resource]{untag_resource} \tab Removes tags from an Amazon Web Services X-Ray group or sampling rule\cr
\link[paws.developer.tools:xray_update_group]{update_group} \tab Updates a group resource\cr
\link[paws.developer.tools:xray_update_indexing_rule]{update_indexing_rule} \tab Modifies an indexing rule’s configuration\cr
\link[paws.developer.tools:xray_update_sampling_rule]{update_sampling_rule} \tab Modifies a sampling rule's configuration\cr
\link[paws.developer.tools:xray_update_trace_segment_destination]{update_trace_segment_destination} \tab Modifies the destination of data sent to PutTraceSegments
}
}

\examples{
\dontrun{
svc <- xray()
svc$batch_get_traces(
  Foo = 123
)
}

}
