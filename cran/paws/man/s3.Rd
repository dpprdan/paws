% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{s3}
\alias{s3}
\title{Amazon Simple Storage Service}
\usage{
s3(config = list(), credentials = list(), endpoint = NULL, region = NULL)
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
Amazon Simple Storage Service
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- s3(
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
\link[paws.storage:s3_abort_multipart_upload]{abort_multipart_upload} \tab This operation aborts a multipart upload\cr
\link[paws.storage:s3_complete_multipart_upload]{complete_multipart_upload} \tab Completes a multipart upload by assembling previously uploaded parts\cr
\link[paws.storage:s3_copy_object]{copy_object} \tab Creates a copy of an object that is already stored in Amazon S3\cr
\link[paws.storage:s3_create_bucket]{create_bucket} \tab This action creates an Amazon S3 bucket\cr
\link[paws.storage:s3_create_bucket_metadata_table_configuration]{create_bucket_metadata_table_configuration} \tab Creates a metadata table configuration for a general purpose bucket\cr
\link[paws.storage:s3_create_multipart_upload]{create_multipart_upload} \tab This action initiates a multipart upload and returns an upload ID\cr
\link[paws.storage:s3_create_session]{create_session} \tab Creates a session that establishes temporary security credentials to support fast authentication and authorization for the Zonal endpoint API operations on directory buckets\cr
\link[paws.storage:s3_delete_bucket]{delete_bucket} \tab Deletes the S3 bucket\cr
\link[paws.storage:s3_delete_bucket_analytics_configuration]{delete_bucket_analytics_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_cors]{delete_bucket_cors} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_encryption]{delete_bucket_encryption} \tab This implementation of the DELETE action resets the default encryption for the bucket as server-side encryption with Amazon S3 managed keys (SSE-S3)\cr
\link[paws.storage:s3_delete_bucket_intelligent_tiering_configuration]{delete_bucket_intelligent_tiering_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_inventory_configuration]{delete_bucket_inventory_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_lifecycle]{delete_bucket_lifecycle} \tab Deletes the lifecycle configuration from the specified bucket\cr
\link[paws.storage:s3_delete_bucket_metadata_table_configuration]{delete_bucket_metadata_table_configuration} \tab Deletes a metadata table configuration from a general purpose bucket\cr
\link[paws.storage:s3_delete_bucket_metrics_configuration]{delete_bucket_metrics_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_ownership_controls]{delete_bucket_ownership_controls} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_policy]{delete_bucket_policy} \tab Deletes the policy of a specified bucket\cr
\link[paws.storage:s3_delete_bucket_replication]{delete_bucket_replication} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_tagging]{delete_bucket_tagging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_bucket_website]{delete_bucket_website} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_object]{delete_object} \tab Removes an object from a bucket\cr
\link[paws.storage:s3_delete_objects]{delete_objects} \tab This operation enables you to delete multiple objects from a bucket using a single HTTP request\cr
\link[paws.storage:s3_delete_object_tagging]{delete_object_tagging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_delete_public_access_block]{delete_public_access_block} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_download_file]{download_file} \tab Download a file from S3 and store it at a specified file location\cr
\link[paws.storage:s3_generate_presigned_url]{generate_presigned_url} \tab @title Generate a presigned url given a client, its method, and arguments\cr
\link[paws.storage:s3_get_bucket_accelerate_configuration]{get_bucket_accelerate_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_acl]{get_bucket_acl} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_analytics_configuration]{get_bucket_analytics_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_cors]{get_bucket_cors} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_encryption]{get_bucket_encryption} \tab Returns the default encryption configuration for an Amazon S3 bucket\cr
\link[paws.storage:s3_get_bucket_intelligent_tiering_configuration]{get_bucket_intelligent_tiering_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_inventory_configuration]{get_bucket_inventory_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_lifecycle]{get_bucket_lifecycle} \tab For an updated version of this API, see GetBucketLifecycleConfiguration\cr
\link[paws.storage:s3_get_bucket_lifecycle_configuration]{get_bucket_lifecycle_configuration} \tab Returns the lifecycle configuration information set on the bucket\cr
\link[paws.storage:s3_get_bucket_location]{get_bucket_location} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_logging]{get_bucket_logging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_metadata_table_configuration]{get_bucket_metadata_table_configuration} \tab Retrieves the metadata table configuration for a general purpose bucket\cr
\link[paws.storage:s3_get_bucket_metrics_configuration]{get_bucket_metrics_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_notification]{get_bucket_notification} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_notification_configuration]{get_bucket_notification_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_ownership_controls]{get_bucket_ownership_controls} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_policy]{get_bucket_policy} \tab Returns the policy of a specified bucket\cr
\link[paws.storage:s3_get_bucket_policy_status]{get_bucket_policy_status} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_replication]{get_bucket_replication} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_request_payment]{get_bucket_request_payment} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_tagging]{get_bucket_tagging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_versioning]{get_bucket_versioning} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_bucket_website]{get_bucket_website} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_object]{get_object} \tab Retrieves an object from Amazon S3\cr
\link[paws.storage:s3_get_object_acl]{get_object_acl} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_object_attributes]{get_object_attributes} \tab Retrieves all the metadata from an object without returning the object itself\cr
\link[paws.storage:s3_get_object_legal_hold]{get_object_legal_hold} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_object_lock_configuration]{get_object_lock_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_object_retention]{get_object_retention} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_object_tagging]{get_object_tagging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_object_torrent]{get_object_torrent} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_get_public_access_block]{get_public_access_block} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_head_bucket]{head_bucket} \tab You can use this operation to determine if a bucket exists and if you have permission to access it\cr
\link[paws.storage:s3_head_object]{head_object} \tab The HEAD operation retrieves metadata from an object without returning the object itself\cr
\link[paws.storage:s3_list_bucket_analytics_configurations]{list_bucket_analytics_configurations} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_bucket_intelligent_tiering_configurations]{list_bucket_intelligent_tiering_configurations} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_bucket_inventory_configurations]{list_bucket_inventory_configurations} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_bucket_metrics_configurations]{list_bucket_metrics_configurations} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_buckets]{list_buckets} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_directory_buckets]{list_directory_buckets} \tab Returns a list of all Amazon S3 directory buckets owned by the authenticated sender of the request\cr
\link[paws.storage:s3_list_multipart_uploads]{list_multipart_uploads} \tab This operation lists in-progress multipart uploads in a bucket\cr
\link[paws.storage:s3_list_objects]{list_objects} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_objects_v2]{list_objects_v2} \tab Returns some or all (up to 1,000) of the objects in a bucket with each request\cr
\link[paws.storage:s3_list_object_versions]{list_object_versions} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_list_parts]{list_parts} \tab Lists the parts that have been uploaded for a specific multipart upload\cr
\link[paws.storage:s3_put_bucket_accelerate_configuration]{put_bucket_accelerate_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_acl]{put_bucket_acl} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_analytics_configuration]{put_bucket_analytics_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_cors]{put_bucket_cors} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_encryption]{put_bucket_encryption} \tab This operation configures default encryption and Amazon S3 Bucket Keys for an existing bucket\cr
\link[paws.storage:s3_put_bucket_intelligent_tiering_configuration]{put_bucket_intelligent_tiering_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_inventory_configuration]{put_bucket_inventory_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_lifecycle]{put_bucket_lifecycle} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_lifecycle_configuration]{put_bucket_lifecycle_configuration} \tab Creates a new lifecycle configuration for the bucket or replaces an existing lifecycle configuration\cr
\link[paws.storage:s3_put_bucket_logging]{put_bucket_logging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_metrics_configuration]{put_bucket_metrics_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_notification]{put_bucket_notification} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_notification_configuration]{put_bucket_notification_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_ownership_controls]{put_bucket_ownership_controls} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_policy]{put_bucket_policy} \tab Applies an Amazon S3 bucket policy to an Amazon S3 bucket\cr
\link[paws.storage:s3_put_bucket_replication]{put_bucket_replication} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_request_payment]{put_bucket_request_payment} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_tagging]{put_bucket_tagging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_versioning]{put_bucket_versioning} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_bucket_website]{put_bucket_website} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_object]{put_object} \tab Adds an object to a bucket\cr
\link[paws.storage:s3_put_object_acl]{put_object_acl} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_object_legal_hold]{put_object_legal_hold} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_object_lock_configuration]{put_object_lock_configuration} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_object_retention]{put_object_retention} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_object_tagging]{put_object_tagging} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_put_public_access_block]{put_public_access_block} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_restore_object]{restore_object} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_select_object_content]{select_object_content} \tab This operation is not supported for directory buckets\cr
\link[paws.storage:s3_upload_part]{upload_part} \tab Uploads a part in a multipart upload\cr
\link[paws.storage:s3_upload_part_copy]{upload_part_copy} \tab Uploads a part by copying data from an existing object as data source\cr
\link[paws.storage:s3_write_get_object_response]{write_get_object_response} \tab This operation is not supported for directory buckets
}
}

\examples{
\dontrun{
svc <- s3()
# The following example aborts a multipart upload.
svc$abort_multipart_upload(
  Bucket = "examplebucket",
  Key = "bigobject",
  UploadId = "xadcOB_7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LA..."
)
}

}
