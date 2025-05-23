# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon Timestream Write
#'
#' @description
#' Amazon Timestream is a fast, scalable, fully managed time-series
#' database service that makes it easy to store and analyze trillions of
#' time-series data points per day. With Timestream, you can easily store
#' and analyze IoT sensor data to derive insights from your IoT
#' applications. You can analyze industrial telemetry to streamline
#' equipment management and maintenance. You can also store and analyze log
#' data and metrics to improve the performance and availability of your
#' applications.
#' 
#' Timestream is built from the ground up to effectively ingest, process,
#' and store time-series data. It organizes data to optimize query
#' processing. It automatically scales based on the volume of data ingested
#' and on the query volume to ensure you receive optimal performance while
#' inserting and querying data. As your data grows over time, Timestream’s
#' adaptive query processing engine spans across storage tiers to provide
#' fast analysis while reducing costs.
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
#' svc <- timestreamwrite(
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
#' svc <- timestreamwrite()
#' svc$create_batch_load_task(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=timestreamwrite_create_batch_load_task]{create_batch_load_task} \tab Creates a new Timestream batch load task\cr
#'  \link[=timestreamwrite_create_database]{create_database} \tab Creates a new Timestream database\cr
#'  \link[=timestreamwrite_create_table]{create_table} \tab Adds a new table to an existing database in your account\cr
#'  \link[=timestreamwrite_delete_database]{delete_database} \tab Deletes a given Timestream database\cr
#'  \link[=timestreamwrite_delete_table]{delete_table} \tab Deletes a given Timestream table\cr
#'  \link[=timestreamwrite_describe_batch_load_task]{describe_batch_load_task} \tab Returns information about the batch load task, including configurations, mappings, progress, and other details\cr
#'  \link[=timestreamwrite_describe_database]{describe_database} \tab Returns information about the database, including the database name, time that the database was created, and the total number of tables found within the database\cr
#'  \link[=timestreamwrite_describe_endpoints]{describe_endpoints} \tab Returns a list of available endpoints to make Timestream API calls against\cr
#'  \link[=timestreamwrite_describe_table]{describe_table} \tab Returns information about the table, including the table name, database name, retention duration of the memory store and the magnetic store\cr
#'  \link[=timestreamwrite_list_batch_load_tasks]{list_batch_load_tasks} \tab Provides a list of batch load tasks, along with the name, status, when the task is resumable until, and other details\cr
#'  \link[=timestreamwrite_list_databases]{list_databases} \tab Returns a list of your Timestream databases\cr
#'  \link[=timestreamwrite_list_tables]{list_tables} \tab Provides a list of tables, along with the name, status, and retention properties of each table\cr
#'  \link[=timestreamwrite_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on a Timestream resource\cr
#'  \link[=timestreamwrite_resume_batch_load_task]{resume_batch_load_task} \tab Resume batch load task\cr
#'  \link[=timestreamwrite_tag_resource]{tag_resource} \tab Associates a set of tags with a Timestream resource\cr
#'  \link[=timestreamwrite_untag_resource]{untag_resource} \tab Removes the association of tags from a Timestream resource\cr
#'  \link[=timestreamwrite_update_database]{update_database} \tab Modifies the KMS key for an existing database\cr
#'  \link[=timestreamwrite_update_table]{update_table} \tab Modifies the retention duration of the memory store and magnetic store for your Timestream table\cr
#'  \link[=timestreamwrite_write_records]{write_records} \tab Enables you to write your time-series data into Timestream
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname timestreamwrite
#' @export
timestreamwrite <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .timestreamwrite$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.timestreamwrite <- list()

.timestreamwrite$operations <- list()

.timestreamwrite$metadata <- list(
  service_name = "timestreamwrite",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "ingest.timestream.{region}.amazonaws.eu", global = FALSE)),
  service_id = "Timestream Write",
  api_version = "2018-11-01",
  signing_name = "timestream",
  json_version = "1.0",
  target_prefix = "Timestream_20181101"
)

.timestreamwrite$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("jsonrpc", "v4")
  new_service(.timestreamwrite$metadata, handlers, config, op)
}
