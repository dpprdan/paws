# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' AWS CodeStar connections
#'
#' @description
#' AWS CodeStar Connections
#' 
#' This Amazon Web Services CodeStar Connections API Reference provides
#' descriptions and usage examples of the operations and data types for the
#' Amazon Web Services CodeStar Connections API. You can use the
#' connections API to work with connections and installations.
#' 
#' *Connections* are configurations that you use to connect Amazon Web
#' Services resources to external code repositories. Each connection is a
#' resource that can be given to services such as CodePipeline to connect
#' to a third-party repository such as Bitbucket. For example, you can add
#' the connection in CodePipeline so that it triggers your pipeline when a
#' code change is made to your third-party code repository. Each connection
#' is named and associated with a unique ARN that is used to reference the
#' connection.
#' 
#' When you create a connection, the console initiates a third-party
#' connection handshake. *Installations* are the apps that are used to
#' conduct this handshake. For example, the installation for the Bitbucket
#' provider type is the Bitbucket app. When you create a connection, you
#' can choose an existing installation or create one.
#' 
#' When you want to create a connection to an installed provider type such
#' as GitHub Enterprise Server, you create a *host* for your connections.
#' 
#' You can work with connections by calling:
#' 
#' -   [`create_connection`][codestarconnections_create_connection], which
#'     creates a uniquely named connection that can be referenced by
#'     services such as CodePipeline.
#' 
#' -   [`delete_connection`][codestarconnections_delete_connection], which
#'     deletes the specified connection.
#' 
#' -   [`get_connection`][codestarconnections_get_connection], which
#'     returns information about the connection, including the connection
#'     status.
#' 
#' -   [`list_connections`][codestarconnections_list_connections], which
#'     lists the connections associated with your account.
#' 
#' You can work with hosts by calling:
#' 
#' -   [`create_host`][codestarconnections_create_host], which creates a
#'     host that represents the infrastructure where your provider is
#'     installed.
#' 
#' -   [`delete_host`][codestarconnections_delete_host], which deletes the
#'     specified host.
#' 
#' -   [`get_host`][codestarconnections_get_host], which returns
#'     information about the host, including the setup status.
#' 
#' -   [`list_hosts`][codestarconnections_list_hosts], which lists the
#'     hosts associated with your account.
#' 
#' You can work with tags in Amazon Web Services CodeStar Connections by
#' calling the following:
#' 
#' -   [`list_tags_for_resource`][codestarconnections_list_tags_for_resource],
#'     which gets information about Amazon Web Services tags for a
#'     specified Amazon Resource Name (ARN) in Amazon Web Services CodeStar
#'     Connections.
#' 
#' -   [`tag_resource`][codestarconnections_tag_resource], which adds or
#'     updates tags for a resource in Amazon Web Services CodeStar
#'     Connections.
#' 
#' -   [`untag_resource`][codestarconnections_untag_resource], which
#'     removes tags for a resource in Amazon Web Services CodeStar
#'     Connections.
#' 
#' For information about how to use Amazon Web Services CodeStar
#' Connections, see the [Developer Tools User
#' Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).
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
#' svc <- codestarconnections(
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
#' svc <- codestarconnections()
#' svc$create_connection(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=codestarconnections_create_connection]{create_connection} \tab Creates a connection that can then be given to other Amazon Web Services services like CodePipeline so that it can access third-party code repositories\cr
#'  \link[=codestarconnections_create_host]{create_host} \tab Creates a resource that represents the infrastructure where a third-party provider is installed\cr
#'  \link[=codestarconnections_create_repository_link]{create_repository_link} \tab Creates a link to a specified external Git repository\cr
#'  \link[=codestarconnections_create_sync_configuration]{create_sync_configuration} \tab Creates a sync configuration which allows Amazon Web Services to sync content from a Git repository to update a specified Amazon Web Services resource\cr
#'  \link[=codestarconnections_delete_connection]{delete_connection} \tab The connection to be deleted\cr
#'  \link[=codestarconnections_delete_host]{delete_host} \tab The host to be deleted\cr
#'  \link[=codestarconnections_delete_repository_link]{delete_repository_link} \tab Deletes the association between your connection and a specified external Git repository\cr
#'  \link[=codestarconnections_delete_sync_configuration]{delete_sync_configuration} \tab Deletes the sync configuration for a specified repository and connection\cr
#'  \link[=codestarconnections_get_connection]{get_connection} \tab Returns the connection ARN and details such as status, owner, and provider type\cr
#'  \link[=codestarconnections_get_host]{get_host} \tab Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration\cr
#'  \link[=codestarconnections_get_repository_link]{get_repository_link} \tab Returns details about a repository link\cr
#'  \link[=codestarconnections_get_repository_sync_status]{get_repository_sync_status} \tab Returns details about the sync status for a repository\cr
#'  \link[=codestarconnections_get_resource_sync_status]{get_resource_sync_status} \tab Returns the status of the sync with the Git repository for a specific Amazon Web Services resource\cr
#'  \link[=codestarconnections_get_sync_blocker_summary]{get_sync_blocker_summary} \tab Returns a list of the most recent sync blockers\cr
#'  \link[=codestarconnections_get_sync_configuration]{get_sync_configuration} \tab Returns details about a sync configuration, including the sync type and resource name\cr
#'  \link[=codestarconnections_list_connections]{list_connections} \tab Lists the connections associated with your account\cr
#'  \link[=codestarconnections_list_hosts]{list_hosts} \tab Lists the hosts associated with your account\cr
#'  \link[=codestarconnections_list_repository_links]{list_repository_links} \tab Lists the repository links created for connections in your account\cr
#'  \link[=codestarconnections_list_repository_sync_definitions]{list_repository_sync_definitions} \tab Lists the repository sync definitions for repository links in your account\cr
#'  \link[=codestarconnections_list_sync_configurations]{list_sync_configurations} \tab Returns a list of sync configurations for a specified repository\cr
#'  \link[=codestarconnections_list_tags_for_resource]{list_tags_for_resource} \tab Gets the set of key-value pairs (metadata) that are used to manage the resource\cr
#'  \link[=codestarconnections_tag_resource]{tag_resource} \tab Adds to or modifies the tags of the given resource\cr
#'  \link[=codestarconnections_untag_resource]{untag_resource} \tab Removes tags from an Amazon Web Services resource\cr
#'  \link[=codestarconnections_update_host]{update_host} \tab Updates a specified host with the provided configurations\cr
#'  \link[=codestarconnections_update_repository_link]{update_repository_link} \tab Updates the association between your connection and a specified external Git repository\cr
#'  \link[=codestarconnections_update_sync_blocker]{update_sync_blocker} \tab Allows you to update the status of a sync blocker, resolving the blocker and allowing syncing to continue\cr
#'  \link[=codestarconnections_update_sync_configuration]{update_sync_configuration} \tab Updates the sync configuration for your connection and a specified external Git repository
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname codestarconnections
#' @export
codestarconnections <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .codestarconnections$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.codestarconnections <- list()

.codestarconnections$operations <- list()

.codestarconnections$metadata <- list(
  service_name = "codestarconnections",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "codestar-connections.{region}.amazonaws.eu", global = FALSE)),
  service_id = "CodeStar connections",
  api_version = "2019-12-01",
  signing_name = "codestar-connections",
  json_version = "1.0",
  target_prefix = "com.amazonaws.codestar.connections.CodeStar_connections_20191201"
)

.codestarconnections$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.codestarconnections$metadata, handlers, config, op)
}
