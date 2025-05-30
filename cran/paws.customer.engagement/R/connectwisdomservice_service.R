# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Connect Wisdom Service
#'
#' @description
#' Amazon Connect Wisdom delivers agents the information they need to solve
#' customer issues as they're actively speaking with customers. Agents can
#' search across connected repositories from within their agent desktop to
#' find answers quickly. Use Amazon Connect Wisdom to create an assistant
#' and a knowledge base, for example, or manage content by uploading custom
#' files.
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
#' svc <- connectwisdomservice(
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
#' svc <- connectwisdomservice()
#' svc$create_assistant(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=connectwisdomservice_create_assistant]{create_assistant} \tab Creates an Amazon Connect Wisdom assistant\cr
#'  \link[=connectwisdomservice_create_assistant_association]{create_assistant_association} \tab Creates an association between an Amazon Connect Wisdom assistant and another resource\cr
#'  \link[=connectwisdomservice_create_content]{create_content} \tab Creates Wisdom content\cr
#'  \link[=connectwisdomservice_create_knowledge_base]{create_knowledge_base} \tab Creates a knowledge base\cr
#'  \link[=connectwisdomservice_create_quick_response]{create_quick_response} \tab Creates a Wisdom quick response\cr
#'  \link[=connectwisdomservice_create_session]{create_session} \tab Creates a session\cr
#'  \link[=connectwisdomservice_delete_assistant]{delete_assistant} \tab Deletes an assistant\cr
#'  \link[=connectwisdomservice_delete_assistant_association]{delete_assistant_association} \tab Deletes an assistant association\cr
#'  \link[=connectwisdomservice_delete_content]{delete_content} \tab Deletes the content\cr
#'  \link[=connectwisdomservice_delete_import_job]{delete_import_job} \tab Deletes the quick response import job\cr
#'  \link[=connectwisdomservice_delete_knowledge_base]{delete_knowledge_base} \tab Deletes the knowledge base\cr
#'  \link[=connectwisdomservice_delete_quick_response]{delete_quick_response} \tab Deletes a quick response\cr
#'  \link[=connectwisdomservice_get_assistant]{get_assistant} \tab Retrieves information about an assistant\cr
#'  \link[=connectwisdomservice_get_assistant_association]{get_assistant_association} \tab Retrieves information about an assistant association\cr
#'  \link[=connectwisdomservice_get_content]{get_content} \tab Retrieves content, including a pre-signed URL to download the content\cr
#'  \link[=connectwisdomservice_get_content_summary]{get_content_summary} \tab Retrieves summary information about the content\cr
#'  \link[=connectwisdomservice_get_import_job]{get_import_job} \tab Retrieves the started import job\cr
#'  \link[=connectwisdomservice_get_knowledge_base]{get_knowledge_base} \tab Retrieves information about the knowledge base\cr
#'  \link[=connectwisdomservice_get_quick_response]{get_quick_response} \tab Retrieves the quick response\cr
#'  \link[=connectwisdomservice_get_recommendations]{get_recommendations} \tab Retrieves recommendations for the specified session\cr
#'  \link[=connectwisdomservice_get_session]{get_session} \tab Retrieves information for a specified session\cr
#'  \link[=connectwisdomservice_list_assistant_associations]{list_assistant_associations} \tab Lists information about assistant associations\cr
#'  \link[=connectwisdomservice_list_assistants]{list_assistants} \tab Lists information about assistants\cr
#'  \link[=connectwisdomservice_list_contents]{list_contents} \tab Lists the content\cr
#'  \link[=connectwisdomservice_list_import_jobs]{list_import_jobs} \tab Lists information about import jobs\cr
#'  \link[=connectwisdomservice_list_knowledge_bases]{list_knowledge_bases} \tab Lists the knowledge bases\cr
#'  \link[=connectwisdomservice_list_quick_responses]{list_quick_responses} \tab Lists information about quick response\cr
#'  \link[=connectwisdomservice_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags for the specified resource\cr
#'  \link[=connectwisdomservice_notify_recommendations_received]{notify_recommendations_received} \tab Removes the specified recommendations from the specified assistant's queue of newly available recommendations\cr
#'  \link[=connectwisdomservice_query_assistant]{query_assistant} \tab Performs a manual search against the specified assistant\cr
#'  \link[=connectwisdomservice_remove_knowledge_base_template_uri]{remove_knowledge_base_template_uri} \tab Removes a URI template from a knowledge base\cr
#'  \link[=connectwisdomservice_search_content]{search_content} \tab Searches for content in a specified knowledge base\cr
#'  \link[=connectwisdomservice_search_quick_responses]{search_quick_responses} \tab Searches existing Wisdom quick responses in a Wisdom knowledge base\cr
#'  \link[=connectwisdomservice_search_sessions]{search_sessions} \tab Searches for sessions\cr
#'  \link[=connectwisdomservice_start_content_upload]{start_content_upload} \tab Get a URL to upload content to a knowledge base\cr
#'  \link[=connectwisdomservice_start_import_job]{start_import_job} \tab Start an asynchronous job to import Wisdom resources from an uploaded source file\cr
#'  \link[=connectwisdomservice_tag_resource]{tag_resource} \tab Adds the specified tags to the specified resource\cr
#'  \link[=connectwisdomservice_untag_resource]{untag_resource} \tab Removes the specified tags from the specified resource\cr
#'  \link[=connectwisdomservice_update_content]{update_content} \tab Updates information about the content\cr
#'  \link[=connectwisdomservice_update_knowledge_base_template_uri]{update_knowledge_base_template_uri} \tab Updates the template URI of a knowledge base\cr
#'  \link[=connectwisdomservice_update_quick_response]{update_quick_response} \tab Updates an existing Wisdom quick response
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname connectwisdomservice
#' @export
connectwisdomservice <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .connectwisdomservice$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.connectwisdomservice <- list()

.connectwisdomservice$operations <- list()

.connectwisdomservice$metadata <- list(
  service_name = "connectwisdomservice",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "wisdom.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Wisdom",
  api_version = "2020-10-19",
  signing_name = "wisdom",
  json_version = "1.1",
  target_prefix = ""
)

.connectwisdomservice$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.connectwisdomservice$metadata, handlers, config, op)
}
