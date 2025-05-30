# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon CodeGuru Security
#'
#' @description
#' Amazon CodeGuru Security is in preview release and is subject to change.
#' 
#' This section provides documentation for the Amazon CodeGuru Security API
#' operations. CodeGuru Security is a service that uses program analysis
#' and machine learning to detect security policy violations and
#' vulnerabilities, and recommends ways to address these security risks.
#' 
#' By proactively detecting and providing recommendations for addressing
#' security risks, CodeGuru Security improves the overall security of your
#' application code. For more information about CodeGuru Security, see the
#' [Amazon CodeGuru Security User
#' Guide](https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html).
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
#' svc <- codegurusecurity(
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
#' svc <- codegurusecurity()
#' svc$batch_get_findings(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=codegurusecurity_batch_get_findings]{batch_get_findings} \tab Returns a list of requested findings from standard scans\cr
#'  \link[=codegurusecurity_create_scan]{create_scan} \tab Use to create a scan using code uploaded to an Amazon S3 bucket\cr
#'  \link[=codegurusecurity_create_upload_url]{create_upload_url} \tab Generates a pre-signed URL, request headers used to upload a code resource, and code artifact identifier for the uploaded resource\cr
#'  \link[=codegurusecurity_get_account_configuration]{get_account_configuration} \tab Use to get the encryption configuration for an account\cr
#'  \link[=codegurusecurity_get_findings]{get_findings} \tab Returns a list of all findings generated by a particular scan\cr
#'  \link[=codegurusecurity_get_metrics_summary]{get_metrics_summary} \tab Returns a summary of metrics for an account from a specified date, including number of open findings, the categories with most findings, the scans with most open findings, and scans with most open critical findings\cr
#'  \link[=codegurusecurity_get_scan]{get_scan} \tab Returns details about a scan, including whether or not a scan has completed\cr
#'  \link[=codegurusecurity_list_findings_metrics]{list_findings_metrics} \tab Returns metrics about all findings in an account within a specified time range\cr
#'  \link[=codegurusecurity_list_scans]{list_scans} \tab Returns a list of all scans in an account\cr
#'  \link[=codegurusecurity_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of all tags associated with a scan\cr
#'  \link[=codegurusecurity_tag_resource]{tag_resource} \tab Use to add one or more tags to an existing scan\cr
#'  \link[=codegurusecurity_untag_resource]{untag_resource} \tab Use to remove one or more tags from an existing scan\cr
#'  \link[=codegurusecurity_update_account_configuration]{update_account_configuration} \tab Use to update the encryption configuration for an account
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname codegurusecurity
#' @export
codegurusecurity <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .codegurusecurity$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.codegurusecurity <- list()

.codegurusecurity$operations <- list()

.codegurusecurity$metadata <- list(
  service_name = "codegurusecurity",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "codeguru-security.{region}.amazonaws.eu", global = FALSE)),
  service_id = "CodeGuru Security",
  api_version = "2018-05-10",
  signing_name = "codeguru-security",
  json_version = "1.1",
  target_prefix = ""
)

.codegurusecurity$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.codegurusecurity$metadata, handlers, config, op)
}
