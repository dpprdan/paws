% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{s3control}
\alias{s3control}
\title{AWS S3 Control}
\usage{
s3control(
  config = list(),
  credentials = list(),
  endpoint = NULL,
  region = NULL
)
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
Amazon Web Services S3 Control provides access to Amazon S3 control
plane actions.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- s3control(
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
\link[paws.storage:s3control_associate_access_grants_identity_center]{associate_access_grants_identity_center} \tab Associate your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance\cr
\link[paws.storage:s3control_create_access_grant]{create_access_grant} \tab Creates an access grant that gives a grantee access to your S3 data\cr
\link[paws.storage:s3control_create_access_grants_instance]{create_access_grants_instance} \tab Creates an S3 Access Grants instance, which serves as a logical grouping for access grants\cr
\link[paws.storage:s3control_create_access_grants_location]{create_access_grants_location} \tab The S3 data location that you would like to register in your S3 Access Grants instance\cr
\link[paws.storage:s3control_create_access_point]{create_access_point} \tab Creates an access point and associates it to a specified bucket\cr
\link[paws.storage:s3control_create_access_point_for_object_lambda]{create_access_point_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_create_bucket]{create_bucket} \tab This action creates an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_create_job]{create_job} \tab This operation creates an S3 Batch Operations job\cr
\link[paws.storage:s3control_create_multi_region_access_point]{create_multi_region_access_point} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_create_storage_lens_group]{create_storage_lens_group} \tab Creates a new S3 Storage Lens group and associates it with the specified Amazon Web Services account ID\cr
\link[paws.storage:s3control_delete_access_grant]{delete_access_grant} \tab Deletes the access grant from the S3 Access Grants instance\cr
\link[paws.storage:s3control_delete_access_grants_instance]{delete_access_grants_instance} \tab Deletes your S3 Access Grants instance\cr
\link[paws.storage:s3control_delete_access_grants_instance_resource_policy]{delete_access_grants_instance_resource_policy} \tab Deletes the resource policy of the S3 Access Grants instance\cr
\link[paws.storage:s3control_delete_access_grants_location]{delete_access_grants_location} \tab Deregisters a location from your S3 Access Grants instance\cr
\link[paws.storage:s3control_delete_access_point]{delete_access_point} \tab Deletes the specified access point\cr
\link[paws.storage:s3control_delete_access_point_for_object_lambda]{delete_access_point_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_delete_access_point_policy]{delete_access_point_policy} \tab Deletes the access point policy for the specified access point\cr
\link[paws.storage:s3control_delete_access_point_policy_for_object_lambda]{delete_access_point_policy_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_delete_access_point_scope]{delete_access_point_scope} \tab Deletes an existing access point scope for a directory bucket\cr
\link[paws.storage:s3control_delete_bucket]{delete_bucket} \tab This action deletes an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_delete_bucket_lifecycle_configuration]{delete_bucket_lifecycle_configuration} \tab This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration\cr
\link[paws.storage:s3control_delete_bucket_policy]{delete_bucket_policy} \tab This action deletes an Amazon S3 on Outposts bucket policy\cr
\link[paws.storage:s3control_delete_bucket_replication]{delete_bucket_replication} \tab This operation deletes an Amazon S3 on Outposts bucket's replication configuration\cr
\link[paws.storage:s3control_delete_bucket_tagging]{delete_bucket_tagging} \tab This action deletes an Amazon S3 on Outposts bucket's tags\cr
\link[paws.storage:s3control_delete_job_tagging]{delete_job_tagging} \tab Removes the entire tag set from the specified S3 Batch Operations job\cr
\link[paws.storage:s3control_delete_multi_region_access_point]{delete_multi_region_access_point} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_delete_public_access_block]{delete_public_access_block} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_delete_storage_lens_configuration]{delete_storage_lens_configuration} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_delete_storage_lens_configuration_tagging]{delete_storage_lens_configuration_tagging} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_delete_storage_lens_group]{delete_storage_lens_group} \tab Deletes an existing S3 Storage Lens group\cr
\link[paws.storage:s3control_describe_job]{describe_job} \tab Retrieves the configuration parameters and status for a Batch Operations job\cr
\link[paws.storage:s3control_describe_multi_region_access_point_operation]{describe_multi_region_access_point_operation} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_dissociate_access_grants_identity_center]{dissociate_access_grants_identity_center} \tab Dissociates the Amazon Web Services IAM Identity Center instance from the S3 Access Grants instance\cr
\link[paws.storage:s3control_get_access_grant]{get_access_grant} \tab Get the details of an access grant from your S3 Access Grants instance\cr
\link[paws.storage:s3control_get_access_grants_instance]{get_access_grants_instance} \tab Retrieves the S3 Access Grants instance for a Region in your account\cr
\link[paws.storage:s3control_get_access_grants_instance_for_prefix]{get_access_grants_instance_for_prefix} \tab Retrieve the S3 Access Grants instance that contains a particular prefix\cr
\link[paws.storage:s3control_get_access_grants_instance_resource_policy]{get_access_grants_instance_resource_policy} \tab Returns the resource policy of the S3 Access Grants instance\cr
\link[paws.storage:s3control_get_access_grants_location]{get_access_grants_location} \tab Retrieves the details of a particular location registered in your S3 Access Grants instance\cr
\link[paws.storage:s3control_get_access_point]{get_access_point} \tab Returns configuration information about the specified access point\cr
\link[paws.storage:s3control_get_access_point_configuration_for_object_lambda]{get_access_point_configuration_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_access_point_for_object_lambda]{get_access_point_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_access_point_policy]{get_access_point_policy} \tab Returns the access point policy associated with the specified access point\cr
\link[paws.storage:s3control_get_access_point_policy_for_object_lambda]{get_access_point_policy_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_access_point_policy_status]{get_access_point_policy_status} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_access_point_policy_status_for_object_lambda]{get_access_point_policy_status_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_access_point_scope]{get_access_point_scope} \tab Returns the access point scope for a directory bucket\cr
\link[paws.storage:s3control_get_bucket]{get_bucket} \tab Gets an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_get_bucket_lifecycle_configuration]{get_bucket_lifecycle_configuration} \tab This action gets an Amazon S3 on Outposts bucket's lifecycle configuration\cr
\link[paws.storage:s3control_get_bucket_policy]{get_bucket_policy} \tab This action gets a bucket policy for an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_get_bucket_replication]{get_bucket_replication} \tab This operation gets an Amazon S3 on Outposts bucket's replication configuration\cr
\link[paws.storage:s3control_get_bucket_tagging]{get_bucket_tagging} \tab This action gets an Amazon S3 on Outposts bucket's tags\cr
\link[paws.storage:s3control_get_bucket_versioning]{get_bucket_versioning} \tab This operation returns the versioning state for S3 on Outposts buckets only\cr
\link[paws.storage:s3control_get_data_access]{get_data_access} \tab Returns a temporary access credential from S3 Access Grants to the grantee or client application\cr
\link[paws.storage:s3control_get_job_tagging]{get_job_tagging} \tab Returns the tags on an S3 Batch Operations job\cr
\link[paws.storage:s3control_get_multi_region_access_point]{get_multi_region_access_point} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_multi_region_access_point_policy]{get_multi_region_access_point_policy} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_multi_region_access_point_policy_status]{get_multi_region_access_point_policy_status} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_multi_region_access_point_routes]{get_multi_region_access_point_routes} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_public_access_block]{get_public_access_block} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_storage_lens_configuration]{get_storage_lens_configuration} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_storage_lens_configuration_tagging]{get_storage_lens_configuration_tagging} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_get_storage_lens_group]{get_storage_lens_group} \tab Retrieves the Storage Lens group configuration details\cr
\link[paws.storage:s3control_list_access_grants]{list_access_grants} \tab Returns the list of access grants in your S3 Access Grants instance\cr
\link[paws.storage:s3control_list_access_grants_instances]{list_access_grants_instances} \tab Returns a list of S3 Access Grants instances\cr
\link[paws.storage:s3control_list_access_grants_locations]{list_access_grants_locations} \tab Returns a list of the locations registered in your S3 Access Grants instance\cr
\link[paws.storage:s3control_list_access_points]{list_access_points} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_list_access_points_for_directory_buckets]{list_access_points_for_directory_buckets} \tab Returns a list of the access points that are owned by the Amazon Web Services account and that are associated with the specified directory bucket\cr
\link[paws.storage:s3control_list_access_points_for_object_lambda]{list_access_points_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_list_caller_access_grants]{list_caller_access_grants} \tab Use this API to list the access grants that grant the caller access to Amazon S3 data through S3 Access Grants\cr
\link[paws.storage:s3control_list_jobs]{list_jobs} \tab Lists current S3 Batch Operations jobs as well as the jobs that have ended within the last 90 days for the Amazon Web Services account making the request\cr
\link[paws.storage:s3control_list_multi_region_access_points]{list_multi_region_access_points} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_list_regional_buckets]{list_regional_buckets} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_list_storage_lens_configurations]{list_storage_lens_configurations} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_list_storage_lens_groups]{list_storage_lens_groups} \tab Lists all the Storage Lens groups in the specified home Region\cr
\link[paws.storage:s3control_list_tags_for_resource]{list_tags_for_resource} \tab This operation allows you to list all the Amazon Web Services resource tags for a specified resource\cr
\link[paws.storage:s3control_put_access_grants_instance_resource_policy]{put_access_grants_instance_resource_policy} \tab Updates the resource policy of the S3 Access Grants instance\cr
\link[paws.storage:s3control_put_access_point_configuration_for_object_lambda]{put_access_point_configuration_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_put_access_point_policy]{put_access_point_policy} \tab Associates an access policy with the specified access point\cr
\link[paws.storage:s3control_put_access_point_policy_for_object_lambda]{put_access_point_policy_for_object_lambda} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_put_access_point_scope]{put_access_point_scope} \tab Creates or replaces the access point scope for a directory bucket\cr
\link[paws.storage:s3control_put_bucket_lifecycle_configuration]{put_bucket_lifecycle_configuration} \tab This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_put_bucket_policy]{put_bucket_policy} \tab This action puts a bucket policy to an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_put_bucket_replication]{put_bucket_replication} \tab This action creates an Amazon S3 on Outposts bucket's replication configuration\cr
\link[paws.storage:s3control_put_bucket_tagging]{put_bucket_tagging} \tab This action puts tags on an Amazon S3 on Outposts bucket\cr
\link[paws.storage:s3control_put_bucket_versioning]{put_bucket_versioning} \tab This operation sets the versioning state for S3 on Outposts buckets only\cr
\link[paws.storage:s3control_put_job_tagging]{put_job_tagging} \tab Sets the supplied tag-set on an S3 Batch Operations job\cr
\link[paws.storage:s3control_put_multi_region_access_point_policy]{put_multi_region_access_point_policy} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_put_public_access_block]{put_public_access_block} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_put_storage_lens_configuration]{put_storage_lens_configuration} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_put_storage_lens_configuration_tagging]{put_storage_lens_configuration_tagging} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_submit_multi_region_access_point_routes]{submit_multi_region_access_point_routes} \tab This operation is not supported by directory buckets\cr
\link[paws.storage:s3control_tag_resource]{tag_resource} \tab Creates a new Amazon Web Services resource tag or updates an existing resource tag\cr
\link[paws.storage:s3control_untag_resource]{untag_resource} \tab This operation removes the specified Amazon Web Services resource tags from an S3 resource\cr
\link[paws.storage:s3control_update_access_grants_location]{update_access_grants_location} \tab Updates the IAM role of a registered location in your S3 Access Grants instance\cr
\link[paws.storage:s3control_update_job_priority]{update_job_priority} \tab Updates an existing S3 Batch Operations job's priority\cr
\link[paws.storage:s3control_update_job_status]{update_job_status} \tab Updates the status for the specified job\cr
\link[paws.storage:s3control_update_storage_lens_group]{update_storage_lens_group} \tab Updates the existing Storage Lens group
}
}

\examples{
\dontrun{
svc <- s3control()
svc$associate_access_grants_identity_center(
  Foo = 123
)
}

}
