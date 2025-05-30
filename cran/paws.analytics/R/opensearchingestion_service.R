# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon OpenSearch Ingestion
#'
#' @description
#' Use the Amazon OpenSearch Ingestion API to create and manage ingestion
#' pipelines. OpenSearch Ingestion is a fully managed data collector that
#' delivers real-time log and trace data to OpenSearch Service domains. For
#' more information, see [Getting data into your cluster using OpenSearch
#' Ingestion](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{credentials}: \itemize{
#' \item{\strong{creds}: \itemize{
#' \item{\strong{access_key_id}: AWS access key ID}
#' \item{\strong{secret_access_key}: AWS secret access key}
#' \item{\strong{session_token}: AWS temporary session token}
#' }}
#' \item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}: Set anonymous credentials.}
#' }}
#' \item{\strong{endpoint}: The complete URL to use for the constructed client.}
#' \item{\strong{region}: The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}: Immediately close all HTTP connections.}
#' \item{\strong{timeout}: The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}: Set this to `true` to force the request to use path-style addressing, i.e. `http://s3.amazonaws.com/BUCKET/KEY`.}
#' \item{\strong{sts_regional_endpoint}: Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
#' }
#' @param
#' credentials
#' Optional credentials shorthand for the config parameter
#' \itemize{
#' \item{\strong{creds}: \itemize{
#' \item{\strong{access_key_id}: AWS access key ID}
#' \item{\strong{secret_access_key}: AWS secret access key}
#' \item{\strong{session_token}: AWS temporary session token}
#' }}
#' \item{\strong{profile}: The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}: Set anonymous credentials.}
#' }
#' @param
#' endpoint
#' Optional shorthand for complete URL to use for the constructed client.
#' @param
#' region
#' Optional shorthand for AWS Region used in instantiating the client.
#'
#' @section Service syntax:
#' ```
#' svc <- opensearchingestion(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical",
#'     sts_regional_endpoint = "string"
#'   ),
#'   credentials = list(
#'     creds = list(
#'       access_key_id = "string",
#'       secret_access_key = "string",
#'       session_token = "string"
#'     ),
#'     profile = "string",
#'     anonymous = "logical"
#'   ),
#'   endpoint = "string",
#'   region = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- opensearchingestion()
#' svc$create_pipeline(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=opensearchingestion_create_pipeline]{create_pipeline} \tab Creates an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_delete_pipeline]{delete_pipeline} \tab Deletes an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_get_pipeline]{get_pipeline} \tab Retrieves information about an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_get_pipeline_blueprint]{get_pipeline_blueprint} \tab Retrieves information about a specific blueprint for OpenSearch Ingestion\cr
#'  \link[=opensearchingestion_get_pipeline_change_progress]{get_pipeline_change_progress} \tab Returns progress information for the current change happening on an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_list_pipeline_blueprints]{list_pipeline_blueprints} \tab Retrieves a list of all available blueprints for Data Prepper\cr
#'  \link[=opensearchingestion_list_pipelines]{list_pipelines} \tab Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region\cr
#'  \link[=opensearchingestion_list_tags_for_resource]{list_tags_for_resource} \tab Lists all resource tags associated with an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_start_pipeline]{start_pipeline} \tab Starts an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_stop_pipeline]{stop_pipeline} \tab Stops an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_tag_resource]{tag_resource} \tab Tags an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_untag_resource]{untag_resource} \tab Removes one or more tags from an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_update_pipeline]{update_pipeline} \tab Updates an OpenSearch Ingestion pipeline\cr
#'  \link[=opensearchingestion_validate_pipeline]{validate_pipeline} \tab Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to creation
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname opensearchingestion
#' @export
opensearchingestion <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .opensearchingestion$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.opensearchingestion <- list()

.opensearchingestion$operations <- list()

.opensearchingestion$metadata <- list(
  service_name = "opensearchingestion",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "osis.{region}.amazonaws.eu", global = FALSE)),
  service_id = "OSIS",
  api_version = "2022-01-01",
  signing_name = "osis",
  json_version = "",
  target_prefix = ""
)

.opensearchingestion$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.opensearchingestion$metadata, handlers, config, op)
}
