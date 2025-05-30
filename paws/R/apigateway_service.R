# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config merge_config
NULL

#' Amazon API Gateway
#'
#' @description
#' Amazon API Gateway helps developers deliver robust, secure, and scalable
#' mobile and web application back ends. API Gateway allows developers to
#' securely connect mobile and web applications to APIs that run on Lambda,
#' Amazon EC2, or other publicly addressable web services that are hosted
#' outside of AWS.
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
#' svc <- apigateway(
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
#' svc <- apigateway()
#' svc$create_api_key(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=apigateway_create_api_key]{create_api_key} \tab Create an ApiKey resource\cr
#'  \link[=apigateway_create_authorizer]{create_authorizer} \tab Adds a new Authorizer resource to an existing RestApi resource\cr
#'  \link[=apigateway_create_base_path_mapping]{create_base_path_mapping} \tab Creates a new BasePathMapping resource\cr
#'  \link[=apigateway_create_deployment]{create_deployment} \tab Creates a Deployment resource, which makes a specified RestApi callable over the internet\cr
#'  \link[=apigateway_create_documentation_part]{create_documentation_part} \tab Creates a documentation part\cr
#'  \link[=apigateway_create_documentation_version]{create_documentation_version} \tab Creates a documentation version\cr
#'  \link[=apigateway_create_domain_name]{create_domain_name} \tab Creates a new domain name\cr
#'  \link[=apigateway_create_domain_name_access_association]{create_domain_name_access_association} \tab Creates a domain name access association resource between an access association source and a private custom domain name\cr
#'  \link[=apigateway_create_model]{create_model} \tab Adds a new Model resource to an existing RestApi resource\cr
#'  \link[=apigateway_create_request_validator]{create_request_validator} \tab Creates a RequestValidator of a given RestApi\cr
#'  \link[=apigateway_create_resource]{create_resource} \tab Creates a Resource resource\cr
#'  \link[=apigateway_create_rest_api]{create_rest_api} \tab Creates a new RestApi resource\cr
#'  \link[=apigateway_create_stage]{create_stage} \tab Creates a new Stage resource that references a pre-existing Deployment for the API\cr
#'  \link[=apigateway_create_usage_plan]{create_usage_plan} \tab Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload\cr
#'  \link[=apigateway_create_usage_plan_key]{create_usage_plan_key} \tab Creates a usage plan key for adding an existing API key to a usage plan\cr
#'  \link[=apigateway_create_vpc_link]{create_vpc_link} \tab Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational\cr
#'  \link[=apigateway_delete_api_key]{delete_api_key} \tab Deletes the ApiKey resource\cr
#'  \link[=apigateway_delete_authorizer]{delete_authorizer} \tab Deletes an existing Authorizer resource\cr
#'  \link[=apigateway_delete_base_path_mapping]{delete_base_path_mapping} \tab Deletes the BasePathMapping resource\cr
#'  \link[=apigateway_delete_client_certificate]{delete_client_certificate} \tab Deletes the ClientCertificate resource\cr
#'  \link[=apigateway_delete_deployment]{delete_deployment} \tab Deletes a Deployment resource\cr
#'  \link[=apigateway_delete_documentation_part]{delete_documentation_part} \tab Deletes a documentation part\cr
#'  \link[=apigateway_delete_documentation_version]{delete_documentation_version} \tab Deletes a documentation version\cr
#'  \link[=apigateway_delete_domain_name]{delete_domain_name} \tab Deletes the DomainName resource\cr
#'  \link[=apigateway_delete_domain_name_access_association]{delete_domain_name_access_association} \tab Deletes the DomainNameAccessAssociation resource\cr
#'  \link[=apigateway_delete_gateway_response]{delete_gateway_response} \tab Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings\cr
#'  \link[=apigateway_delete_integration]{delete_integration} \tab Represents a delete integration\cr
#'  \link[=apigateway_delete_integration_response]{delete_integration_response} \tab Represents a delete integration response\cr
#'  \link[=apigateway_delete_method]{delete_method} \tab Deletes an existing Method resource\cr
#'  \link[=apigateway_delete_method_response]{delete_method_response} \tab Deletes an existing MethodResponse resource\cr
#'  \link[=apigateway_delete_model]{delete_model} \tab Deletes a model\cr
#'  \link[=apigateway_delete_request_validator]{delete_request_validator} \tab Deletes a RequestValidator of a given RestApi\cr
#'  \link[=apigateway_delete_resource]{delete_resource} \tab Deletes a Resource resource\cr
#'  \link[=apigateway_delete_rest_api]{delete_rest_api} \tab Deletes the specified API\cr
#'  \link[=apigateway_delete_stage]{delete_stage} \tab Deletes a Stage resource\cr
#'  \link[=apigateway_delete_usage_plan]{delete_usage_plan} \tab Deletes a usage plan of a given plan Id\cr
#'  \link[=apigateway_delete_usage_plan_key]{delete_usage_plan_key} \tab Deletes a usage plan key and remove the underlying API key from the associated usage plan\cr
#'  \link[=apigateway_delete_vpc_link]{delete_vpc_link} \tab Deletes an existing VpcLink of a specified identifier\cr
#'  \link[=apigateway_flush_stage_authorizers_cache]{flush_stage_authorizers_cache} \tab Flushes all authorizer cache entries on a stage\cr
#'  \link[=apigateway_flush_stage_cache]{flush_stage_cache} \tab Flushes a stage's cache\cr
#'  \link[=apigateway_generate_client_certificate]{generate_client_certificate} \tab Generates a ClientCertificate resource\cr
#'  \link[=apigateway_get_account]{get_account} \tab Gets information about the current Account resource\cr
#'  \link[=apigateway_get_api_key]{get_api_key} \tab Gets information about the current ApiKey resource\cr
#'  \link[=apigateway_get_api_keys]{get_api_keys} \tab Gets information about the current ApiKeys resource\cr
#'  \link[=apigateway_get_authorizer]{get_authorizer} \tab Describe an existing Authorizer resource\cr
#'  \link[=apigateway_get_authorizers]{get_authorizers} \tab Describe an existing Authorizers resource\cr
#'  \link[=apigateway_get_base_path_mapping]{get_base_path_mapping} \tab Describe a BasePathMapping resource\cr
#'  \link[=apigateway_get_base_path_mappings]{get_base_path_mappings} \tab Represents a collection of BasePathMapping resources\cr
#'  \link[=apigateway_get_client_certificate]{get_client_certificate} \tab Gets information about the current ClientCertificate resource\cr
#'  \link[=apigateway_get_client_certificates]{get_client_certificates} \tab Gets a collection of ClientCertificate resources\cr
#'  \link[=apigateway_get_deployment]{get_deployment} \tab Gets information about a Deployment resource\cr
#'  \link[=apigateway_get_deployments]{get_deployments} \tab Gets information about a Deployments collection\cr
#'  \link[=apigateway_get_documentation_part]{get_documentation_part} \tab Gets a documentation part\cr
#'  \link[=apigateway_get_documentation_parts]{get_documentation_parts} \tab Gets documentation parts\cr
#'  \link[=apigateway_get_documentation_version]{get_documentation_version} \tab Gets a documentation version\cr
#'  \link[=apigateway_get_documentation_versions]{get_documentation_versions} \tab Gets documentation versions\cr
#'  \link[=apigateway_get_domain_name]{get_domain_name} \tab Represents a domain name that is contained in a simpler, more intuitive URL that can be called\cr
#'  \link[=apigateway_get_domain_name_access_associations]{get_domain_name_access_associations} \tab Represents a collection on DomainNameAccessAssociations resources\cr
#'  \link[=apigateway_get_domain_names]{get_domain_names} \tab Represents a collection of DomainName resources\cr
#'  \link[=apigateway_get_export]{get_export} \tab Exports a deployed version of a RestApi in a specified format\cr
#'  \link[=apigateway_get_gateway_response]{get_gateway_response} \tab Gets a GatewayResponse of a specified response type on the given RestApi\cr
#'  \link[=apigateway_get_gateway_responses]{get_gateway_responses} \tab Gets the GatewayResponses collection on the given RestApi\cr
#'  \link[=apigateway_get_integration]{get_integration} \tab Get the integration settings\cr
#'  \link[=apigateway_get_integration_response]{get_integration_response} \tab Represents a get integration response\cr
#'  \link[=apigateway_get_method]{get_method} \tab Describe an existing Method resource\cr
#'  \link[=apigateway_get_method_response]{get_method_response} \tab Describes a MethodResponse resource\cr
#'  \link[=apigateway_get_model]{get_model} \tab Describes an existing model defined for a RestApi resource\cr
#'  \link[=apigateway_get_models]{get_models} \tab Describes existing Models defined for a RestApi resource\cr
#'  \link[=apigateway_get_model_template]{get_model_template} \tab Generates a sample mapping template that can be used to transform a payload into the structure of a model\cr
#'  \link[=apigateway_get_request_validator]{get_request_validator} \tab Gets a RequestValidator of a given RestApi\cr
#'  \link[=apigateway_get_request_validators]{get_request_validators} \tab Gets the RequestValidators collection of a given RestApi\cr
#'  \link[=apigateway_get_resource]{get_resource} \tab Lists information about a resource\cr
#'  \link[=apigateway_get_resources]{get_resources} \tab Lists information about a collection of Resource resources\cr
#'  \link[=apigateway_get_rest_api]{get_rest_api} \tab Lists the RestApi resource in the collection\cr
#'  \link[=apigateway_get_rest_apis]{get_rest_apis} \tab Lists the RestApis resources for your collection\cr
#'  \link[=apigateway_get_sdk]{get_sdk} \tab Generates a client SDK for a RestApi and Stage\cr
#'  \link[=apigateway_get_sdk_type]{get_sdk_type} \tab Gets an SDK type\cr
#'  \link[=apigateway_get_sdk_types]{get_sdk_types} \tab Gets SDK types\cr
#'  \link[=apigateway_get_stage]{get_stage} \tab Gets information about a Stage resource\cr
#'  \link[=apigateway_get_stages]{get_stages} \tab Gets information about one or more Stage resources\cr
#'  \link[=apigateway_get_tags]{get_tags} \tab Gets the Tags collection for a given resource\cr
#'  \link[=apigateway_get_usage]{get_usage} \tab Gets the usage data of a usage plan in a specified time interval\cr
#'  \link[=apigateway_get_usage_plan]{get_usage_plan} \tab Gets a usage plan of a given plan identifier\cr
#'  \link[=apigateway_get_usage_plan_key]{get_usage_plan_key} \tab Gets a usage plan key of a given key identifier\cr
#'  \link[=apigateway_get_usage_plan_keys]{get_usage_plan_keys} \tab Gets all the usage plan keys representing the API keys added to a specified usage plan\cr
#'  \link[=apigateway_get_usage_plans]{get_usage_plans} \tab Gets all the usage plans of the caller's account\cr
#'  \link[=apigateway_get_vpc_link]{get_vpc_link} \tab Gets a specified VPC link under the caller's account in a region\cr
#'  \link[=apigateway_get_vpc_links]{get_vpc_links} \tab Gets the VpcLinks collection under the caller's account in a selected region\cr
#'  \link[=apigateway_import_api_keys]{import_api_keys} \tab Import API keys from an external source, such as a CSV-formatted file\cr
#'  \link[=apigateway_import_documentation_parts]{import_documentation_parts} \tab Imports documentation parts\cr
#'  \link[=apigateway_import_rest_api]{import_rest_api} \tab A feature of the API Gateway control service for creating a new API from an external API definition file\cr
#'  \link[=apigateway_put_gateway_response]{put_gateway_response} \tab Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi\cr
#'  \link[=apigateway_put_integration]{put_integration} \tab Sets up a method's integration\cr
#'  \link[=apigateway_put_integration_response]{put_integration_response} \tab Represents a put integration\cr
#'  \link[=apigateway_put_method]{put_method} \tab Add a method to an existing Resource resource\cr
#'  \link[=apigateway_put_method_response]{put_method_response} \tab Adds a MethodResponse to an existing Method resource\cr
#'  \link[=apigateway_put_rest_api]{put_rest_api} \tab A feature of the API Gateway control service for updating an existing API with an input of external API definitions\cr
#'  \link[=apigateway_reject_domain_name_access_association]{reject_domain_name_access_association} \tab Rejects a domain name access association with a private custom domain name\cr
#'  \link[=apigateway_tag_resource]{tag_resource} \tab Adds or updates a tag on a given resource\cr
#'  \link[=apigateway_test_invoke_authorizer]{test_invoke_authorizer} \tab Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body\cr
#'  \link[=apigateway_test_invoke_method]{test_invoke_method} \tab Simulate the invocation of a Method in your RestApi with headers, parameters, and an incoming request body\cr
#'  \link[=apigateway_untag_resource]{untag_resource} \tab Removes a tag from a given resource\cr
#'  \link[=apigateway_update_account]{update_account} \tab Changes information about the current Account resource\cr
#'  \link[=apigateway_update_api_key]{update_api_key} \tab Changes information about an ApiKey resource\cr
#'  \link[=apigateway_update_authorizer]{update_authorizer} \tab Updates an existing Authorizer resource\cr
#'  \link[=apigateway_update_base_path_mapping]{update_base_path_mapping} \tab Changes information about the BasePathMapping resource\cr
#'  \link[=apigateway_update_client_certificate]{update_client_certificate} \tab Changes information about an ClientCertificate resource\cr
#'  \link[=apigateway_update_deployment]{update_deployment} \tab Changes information about a Deployment resource\cr
#'  \link[=apigateway_update_documentation_part]{update_documentation_part} \tab Updates a documentation part\cr
#'  \link[=apigateway_update_documentation_version]{update_documentation_version} \tab Updates a documentation version\cr
#'  \link[=apigateway_update_domain_name]{update_domain_name} \tab Changes information about the DomainName resource\cr
#'  \link[=apigateway_update_gateway_response]{update_gateway_response} \tab Updates a GatewayResponse of a specified response type on the given RestApi\cr
#'  \link[=apigateway_update_integration]{update_integration} \tab Represents an update integration\cr
#'  \link[=apigateway_update_integration_response]{update_integration_response} \tab Represents an update integration response\cr
#'  \link[=apigateway_update_method]{update_method} \tab Updates an existing Method resource\cr
#'  \link[=apigateway_update_method_response]{update_method_response} \tab Updates an existing MethodResponse resource\cr
#'  \link[=apigateway_update_model]{update_model} \tab Changes information about a model\cr
#'  \link[=apigateway_update_request_validator]{update_request_validator} \tab Updates a RequestValidator of a given RestApi\cr
#'  \link[=apigateway_update_resource]{update_resource} \tab Changes information about a Resource resource\cr
#'  \link[=apigateway_update_rest_api]{update_rest_api} \tab Changes information about the specified API\cr
#'  \link[=apigateway_update_stage]{update_stage} \tab Changes information about a Stage resource\cr
#'  \link[=apigateway_update_usage]{update_usage} \tab Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key\cr
#'  \link[=apigateway_update_usage_plan]{update_usage_plan} \tab Updates a usage plan of a given plan Id\cr
#'  \link[=apigateway_update_vpc_link]{update_vpc_link} \tab Updates an existing VpcLink of a specified identifier
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname apigateway
#' @export
apigateway <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
  config <- merge_config(
    config,
    list(
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  )
  svc <- .apigateway$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.apigateway <- list()

.apigateway$operations <- list()

.apigateway$metadata <- list(
  service_name = "apigateway",
  endpoints = list("^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.amazonaws.com", global = FALSE), "^cn\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.amazonaws.com.cn", global = FALSE), "^us\\-gov\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.amazonaws.com", global = FALSE), "^us\\-iso\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.c2s.ic.gov", global = FALSE), "^us\\-isob\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.sc2s.sgov.gov", global = FALSE), "^eu\\-isoe\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.cloud.adc-e.uk", global = FALSE), "^us\\-isof\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.csp.hci.ic.gov", global = FALSE), "^eusc\\-(de)\\-\\w+\\-\\d+$" = list(endpoint = "apigateway.{region}.amazonaws.eu", global = FALSE)),
  service_id = "API Gateway",
  api_version = "2015-07-09",
  signing_name = "apigateway",
  json_version = "",
  target_prefix = ""
)

.apigateway$service <- function(config = list(), op = NULL) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.apigateway$metadata, handlers, config, op)
}
