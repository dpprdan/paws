# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS Marketplace Catalog Service
#'
#' @description
#' Catalog API actions allow you to manage your entities through list,
#' describe, and update capabilities. An entity can be a product or an
#' offer on AWS Marketplace.
#' 
#' You can automate your entity update process by integrating the AWS
#' Marketplace Catalog API with your AWS Marketplace product build or
#' deployment pipelines. You can also create your own applications on top
#' of the Catalog API to manage your products on AWS Marketplace.
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
#' svc <- marketplacecatalog(
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
#' svc <- marketplacecatalog()
#' svc$batch_describe_entities(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=marketplacecatalog_batch_describe_entities]{batch_describe_entities} \tab Returns metadata and content for multiple entities\cr
#'  \link[=marketplacecatalog_cancel_change_set]{cancel_change_set} \tab Used to cancel an open change request\cr
#'  \link[=marketplacecatalog_delete_resource_policy]{delete_resource_policy} \tab Deletes a resource-based policy on an entity that is identified by its resource ARN\cr
#'  \link[=marketplacecatalog_describe_change_set]{describe_change_set} \tab Provides information about a given change set\cr
#'  \link[=marketplacecatalog_describe_entity]{describe_entity} \tab Returns the metadata and content of the entity\cr
#'  \link[=marketplacecatalog_get_resource_policy]{get_resource_policy} \tab Gets a resource-based policy of an entity that is identified by its resource ARN\cr
#'  \link[=marketplacecatalog_list_change_sets]{list_change_sets} \tab Returns the list of change sets owned by the account being used to make the call\cr
#'  \link[=marketplacecatalog_list_entities]{list_entities} \tab Provides the list of entities of a given type\cr
#'  \link[=marketplacecatalog_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags that have been added to a resource (either an entity or change set)\cr
#'  \link[=marketplacecatalog_put_resource_policy]{put_resource_policy} \tab Attaches a resource-based policy to an entity\cr
#'  \link[=marketplacecatalog_start_change_set]{start_change_set} \tab Allows you to request changes for your entities\cr
#'  \link[=marketplacecatalog_tag_resource]{tag_resource} \tab Tags a resource (either an entity or change set)\cr
#'  \link[=marketplacecatalog_untag_resource]{untag_resource} \tab Removes a tag or list of tags from a resource (either an entity or change set)
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname marketplacecatalog
#' @export
marketplacecatalog <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .marketplacecatalog$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.marketplacecatalog <- list()

.marketplacecatalog$operations <- list()

.marketplacecatalog$metadata <- list(
  service_name = "marketplacecatalog",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "catalog.marketplace.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Marketplace Catalog",
  api_version = "2018-09-17",
  signing_name = "aws-marketplace",
  json_version = "1.1",
  target_prefix = ""
)

.marketplacecatalog$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.marketplacecatalog$metadata, handlers, config, op)
}
