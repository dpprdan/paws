# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Interactive Video Service RealTime
#'
#' @description
#' The Amazon Interactive Video Service (IVS) real-time API is REST
#' compatible, using a standard HTTP API and an AWS EventBridge event
#' stream for responses. JSON is used for both requests and responses,
#' including errors.
#' 
#' **Key Concepts**
#' 
#' -   **Stage** — A virtual space where participants can exchange video in
#'     real time.
#' 
#' -   **Participant token** — A token that authenticates a participant
#'     when they join a stage.
#' 
#' -   **Participant object** — Represents participants (people) in the
#'     stage and contains information about them. When a token is created,
#'     it includes a participant ID; when a participant uses that token to
#'     join a stage, the participant is associated with that participant
#'     ID. There is a 1:1 mapping between participant tokens and
#'     participants.
#' 
#' For server-side composition:
#' 
#' -   **Composition process** — Composites participants of a stage into a
#'     single video and forwards it to a set of outputs (e.g., IVS
#'     channels). Composition operations support this process.
#' 
#' -   **Composition** — Controls the look of the outputs, including how
#'     participants are positioned in the video.
#' 
#' For more information about your IVS live stream, also see [Getting
#' Started with Amazon IVS Real-Time
#' Streaming](https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started.html).
#' 
#' **Tagging**
#' 
#' A *tag* is a metadata label that you assign to an AWS resource. A tag
#' comprises a *key* and a *value*, both set by you. For example, you might
#' set a tag as `topic:nature` to label a particular video category. See
#' [Best practices and
#' strategies](https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
#' in *Tagging AWS Resources and Tag Editor* for details, including
#' restrictions that apply to tags and "Tag naming limits and
#' requirements"; Amazon IVS stages has no service-specific constraints
#' beyond what is documented there.
#' 
#' Tags can help you identify and organize your AWS resources. For example,
#' you can use the same tag for different resources to indicate that they
#' are related. You can also use tags to manage access (see [Access
#' Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).
#' 
#' The Amazon IVS real-time API has these tag-related operations:
#' [`tag_resource`][ivsrealtime_tag_resource],
#' [`untag_resource`][ivsrealtime_untag_resource], and
#' [`list_tags_for_resource`][ivsrealtime_list_tags_for_resource]. The
#' following resource supports tagging: Stage.
#' 
#' At most 50 tags can be applied to a resource.
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
#' svc <- ivsrealtime(
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
#' svc <- ivsrealtime()
#' svc$create_encoder_configuration(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ivsrealtime_create_encoder_configuration]{create_encoder_configuration} \tab Creates an EncoderConfiguration object\cr
#'  \link[=ivsrealtime_create_ingest_configuration]{create_ingest_configuration} \tab Creates a new IngestConfiguration resource, used to specify the ingest protocol for a stage\cr
#'  \link[=ivsrealtime_create_participant_token]{create_participant_token} \tab Creates an additional token for a specified stage\cr
#'  \link[=ivsrealtime_create_stage]{create_stage} \tab Creates a new stage (and optionally participant tokens)\cr
#'  \link[=ivsrealtime_create_storage_configuration]{create_storage_configuration} \tab Creates a new storage configuration, used to enable recording to Amazon S3\cr
#'  \link[=ivsrealtime_delete_encoder_configuration]{delete_encoder_configuration} \tab Deletes an EncoderConfiguration resource\cr
#'  \link[=ivsrealtime_delete_ingest_configuration]{delete_ingest_configuration} \tab Deletes a specified IngestConfiguration, so it can no longer be used to broadcast\cr
#'  \link[=ivsrealtime_delete_public_key]{delete_public_key} \tab Deletes the specified public key used to sign stage participant tokens\cr
#'  \link[=ivsrealtime_delete_stage]{delete_stage} \tab Shuts down and deletes the specified stage (disconnecting all participants)\cr
#'  \link[=ivsrealtime_delete_storage_configuration]{delete_storage_configuration} \tab Deletes the storage configuration for the specified ARN\cr
#'  \link[=ivsrealtime_disconnect_participant]{disconnect_participant} \tab Disconnects a specified participant from a specified stage\cr
#'  \link[=ivsrealtime_get_composition]{get_composition} \tab Get information about the specified Composition resource\cr
#'  \link[=ivsrealtime_get_encoder_configuration]{get_encoder_configuration} \tab Gets information about the specified EncoderConfiguration resource\cr
#'  \link[=ivsrealtime_get_ingest_configuration]{get_ingest_configuration} \tab Gets information about the specified IngestConfiguration\cr
#'  \link[=ivsrealtime_get_participant]{get_participant} \tab Gets information about the specified participant token\cr
#'  \link[=ivsrealtime_get_public_key]{get_public_key} \tab Gets information for the specified public key\cr
#'  \link[=ivsrealtime_get_stage]{get_stage} \tab Gets information for the specified stage\cr
#'  \link[=ivsrealtime_get_stage_session]{get_stage_session} \tab Gets information for the specified stage session\cr
#'  \link[=ivsrealtime_get_storage_configuration]{get_storage_configuration} \tab Gets the storage configuration for the specified ARN\cr
#'  \link[=ivsrealtime_import_public_key]{import_public_key} \tab Import a public key to be used for signing stage participant tokens\cr
#'  \link[=ivsrealtime_list_compositions]{list_compositions} \tab Gets summary information about all Compositions in your account, in the AWS region where the API request is processed\cr
#'  \link[=ivsrealtime_list_encoder_configurations]{list_encoder_configurations} \tab Gets summary information about all EncoderConfigurations in your account, in the AWS region where the API request is processed\cr
#'  \link[=ivsrealtime_list_ingest_configurations]{list_ingest_configurations} \tab Lists all IngestConfigurations in your account, in the AWS region where the API request is processed\cr
#'  \link[=ivsrealtime_list_participant_events]{list_participant_events} \tab Lists events for a specified participant that occurred during a specified stage session\cr
#'  \link[=ivsrealtime_list_participants]{list_participants} \tab Lists all participants in a specified stage session\cr
#'  \link[=ivsrealtime_list_public_keys]{list_public_keys} \tab Gets summary information about all public keys in your account, in the AWS region where the API request is processed\cr
#'  \link[=ivsrealtime_list_stages]{list_stages} \tab Gets summary information about all stages in your account, in the AWS region where the API request is processed\cr
#'  \link[=ivsrealtime_list_stage_sessions]{list_stage_sessions} \tab Gets all sessions for a specified stage\cr
#'  \link[=ivsrealtime_list_storage_configurations]{list_storage_configurations} \tab Gets summary information about all storage configurations in your account, in the AWS region where the API request is processed\cr
#'  \link[=ivsrealtime_list_tags_for_resource]{list_tags_for_resource} \tab Gets information about AWS tags for the specified ARN\cr
#'  \link[=ivsrealtime_start_composition]{start_composition} \tab Starts a Composition from a stage based on the configuration provided in the request\cr
#'  \link[=ivsrealtime_stop_composition]{stop_composition} \tab Stops and deletes a Composition resource\cr
#'  \link[=ivsrealtime_tag_resource]{tag_resource} \tab Adds or updates tags for the AWS resource with the specified ARN\cr
#'  \link[=ivsrealtime_untag_resource]{untag_resource} \tab Removes tags from the resource with the specified ARN\cr
#'  \link[=ivsrealtime_update_ingest_configuration]{update_ingest_configuration} \tab Updates a specified IngestConfiguration\cr
#'  \link[=ivsrealtime_update_stage]{update_stage} \tab Updates a stage’s configuration
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ivsrealtime
#' @export
ivsrealtime <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .ivsrealtime$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.ivsrealtime <- list()

.ivsrealtime$operations <- list()

.ivsrealtime$metadata <- list(
  service_name = "ivsrealtime",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "ivsrealtime.{region}.amazonaws.eu", global = FALSE)),
  service_id = "IVS RealTime",
  api_version = "2020-07-14",
  signing_name = "ivs",
  json_version = "",
  target_prefix = ""
)

.ivsrealtime$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.ivsrealtime$metadata, handlers, config, op)
}
