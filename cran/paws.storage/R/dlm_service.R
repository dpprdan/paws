# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Data Lifecycle Manager
#'
#' @description
#' With Amazon Data Lifecycle Manager, you can manage the lifecycle of your
#' Amazon Web Services resources. You create lifecycle policies, which are
#' used to automate operations on the specified resources.
#' 
#' Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots.
#' For information about using Amazon Data Lifecycle Manager with Amazon
#' EBS, see [Amazon Data Lifecycle
#' Manager](https://docs.aws.amazon.com/ebs/latest/userguide/snapshot-lifecycle.html)
#' in the *Amazon EC2 User Guide*.
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
#' svc <- dlm(
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
#' svc <- dlm()
#' svc$create_lifecycle_policy(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=dlm_create_lifecycle_policy]{create_lifecycle_policy} \tab Creates an Amazon Data Lifecycle Manager lifecycle policy\cr
#'  \link[=dlm_delete_lifecycle_policy]{delete_lifecycle_policy} \tab Deletes the specified lifecycle policy and halts the automated operations that the policy specified\cr
#'  \link[=dlm_get_lifecycle_policies]{get_lifecycle_policies} \tab Gets summary information about all or the specified data lifecycle policies\cr
#'  \link[=dlm_get_lifecycle_policy]{get_lifecycle_policy} \tab Gets detailed information about the specified lifecycle policy\cr
#'  \link[=dlm_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags for the specified resource\cr
#'  \link[=dlm_tag_resource]{tag_resource} \tab Adds the specified tags to the specified resource\cr
#'  \link[=dlm_untag_resource]{untag_resource} \tab Removes the specified tags from the specified resource\cr
#'  \link[=dlm_update_lifecycle_policy]{update_lifecycle_policy} \tab Updates the specified lifecycle policy
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname dlm
#' @export
dlm <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .dlm$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.dlm <- list()

.dlm$operations <- list()

.dlm$metadata <- list(
  service_name = "dlm",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "dlm.{region}.amazonaws.eu", global = FALSE)),
  service_id = "DLM",
  api_version = "2018-01-12",
  signing_name = "dlm",
  json_version = "1.1",
  target_prefix = ""
)

.dlm$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.dlm$metadata, handlers, config, op)
}
