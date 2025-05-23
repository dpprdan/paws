# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include bedrockdataautomation_service.R
NULL

#' Creates an Amazon Bedrock Data Automation Blueprint
#'
#' @description
#' Creates an Amazon Bedrock Data Automation Blueprint
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_create_blueprint/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_create_blueprint/) for full documentation.
#'
#' @param blueprintName &#91;required&#93; 
#' @param type &#91;required&#93; 
#' @param blueprintStage 
#' @param schema &#91;required&#93; 
#' @param clientToken 
#' @param encryptionConfiguration 
#' @param tags 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_create_blueprint
bedrockdataautomation_create_blueprint <- function(blueprintName, type, blueprintStage = NULL, schema, clientToken = NULL, encryptionConfiguration = NULL, tags = NULL) {
  op <- new_operation(
    name = "CreateBlueprint",
    http_method = "PUT",
    http_path = "/blueprints/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$create_blueprint_input(blueprintName = blueprintName, type = type, blueprintStage = blueprintStage, schema = schema, clientToken = clientToken, encryptionConfiguration = encryptionConfiguration, tags = tags)
  output <- .bedrockdataautomation$create_blueprint_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$create_blueprint <- bedrockdataautomation_create_blueprint

#' Creates a new version of an existing Amazon Bedrock Data Automation
#' Blueprint
#'
#' @description
#' Creates a new version of an existing Amazon Bedrock Data Automation Blueprint
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_create_blueprint_version/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_create_blueprint_version/) for full documentation.
#'
#' @param blueprintArn &#91;required&#93; ARN generated at the server side when a Blueprint is created
#' @param clientToken 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_create_blueprint_version
bedrockdataautomation_create_blueprint_version <- function(blueprintArn, clientToken = NULL) {
  op <- new_operation(
    name = "CreateBlueprintVersion",
    http_method = "POST",
    http_path = "/blueprints/{blueprintArn}/versions/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$create_blueprint_version_input(blueprintArn = blueprintArn, clientToken = clientToken)
  output <- .bedrockdataautomation$create_blueprint_version_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$create_blueprint_version <- bedrockdataautomation_create_blueprint_version

#' Creates an Amazon Bedrock Data Automation Project
#'
#' @description
#' Creates an Amazon Bedrock Data Automation Project
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_create_data_automation_project/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_create_data_automation_project/) for full documentation.
#'
#' @param projectName &#91;required&#93; 
#' @param projectDescription 
#' @param projectStage 
#' @param standardOutputConfiguration &#91;required&#93; 
#' @param customOutputConfiguration 
#' @param overrideConfiguration 
#' @param clientToken 
#' @param encryptionConfiguration 
#' @param tags 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_create_data_automation_project
bedrockdataautomation_create_data_automation_project <- function(projectName, projectDescription = NULL, projectStage = NULL, standardOutputConfiguration, customOutputConfiguration = NULL, overrideConfiguration = NULL, clientToken = NULL, encryptionConfiguration = NULL, tags = NULL) {
  op <- new_operation(
    name = "CreateDataAutomationProject",
    http_method = "PUT",
    http_path = "/data-automation-projects/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$create_data_automation_project_input(projectName = projectName, projectDescription = projectDescription, projectStage = projectStage, standardOutputConfiguration = standardOutputConfiguration, customOutputConfiguration = customOutputConfiguration, overrideConfiguration = overrideConfiguration, clientToken = clientToken, encryptionConfiguration = encryptionConfiguration, tags = tags)
  output <- .bedrockdataautomation$create_data_automation_project_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$create_data_automation_project <- bedrockdataautomation_create_data_automation_project

#' Deletes an existing Amazon Bedrock Data Automation Blueprint
#'
#' @description
#' Deletes an existing Amazon Bedrock Data Automation Blueprint
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_delete_blueprint/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_delete_blueprint/) for full documentation.
#'
#' @param blueprintArn &#91;required&#93; ARN generated at the server side when a Blueprint is created
#' @param blueprintVersion Optional field to delete a specific Blueprint version
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_delete_blueprint
bedrockdataautomation_delete_blueprint <- function(blueprintArn, blueprintVersion = NULL) {
  op <- new_operation(
    name = "DeleteBlueprint",
    http_method = "DELETE",
    http_path = "/blueprints/{blueprintArn}/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$delete_blueprint_input(blueprintArn = blueprintArn, blueprintVersion = blueprintVersion)
  output <- .bedrockdataautomation$delete_blueprint_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$delete_blueprint <- bedrockdataautomation_delete_blueprint

#' Deletes an existing Amazon Bedrock Data Automation Project
#'
#' @description
#' Deletes an existing Amazon Bedrock Data Automation Project
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_delete_data_automation_project/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_delete_data_automation_project/) for full documentation.
#'
#' @param projectArn &#91;required&#93; ARN generated at the server side when a DataAutomationProject is created
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_delete_data_automation_project
bedrockdataautomation_delete_data_automation_project <- function(projectArn) {
  op <- new_operation(
    name = "DeleteDataAutomationProject",
    http_method = "DELETE",
    http_path = "/data-automation-projects/{projectArn}/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$delete_data_automation_project_input(projectArn = projectArn)
  output <- .bedrockdataautomation$delete_data_automation_project_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$delete_data_automation_project <- bedrockdataautomation_delete_data_automation_project

#' Gets an existing Amazon Bedrock Data Automation Blueprint
#'
#' @description
#' Gets an existing Amazon Bedrock Data Automation Blueprint
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_get_blueprint/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_get_blueprint/) for full documentation.
#'
#' @param blueprintArn &#91;required&#93; ARN generated at the server side when a Blueprint is created
#' @param blueprintVersion Optional field to get a specific Blueprint version
#' @param blueprintStage Optional field to get a specific Blueprint stage
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_get_blueprint
bedrockdataautomation_get_blueprint <- function(blueprintArn, blueprintVersion = NULL, blueprintStage = NULL) {
  op <- new_operation(
    name = "GetBlueprint",
    http_method = "POST",
    http_path = "/blueprints/{blueprintArn}/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$get_blueprint_input(blueprintArn = blueprintArn, blueprintVersion = blueprintVersion, blueprintStage = blueprintStage)
  output <- .bedrockdataautomation$get_blueprint_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$get_blueprint <- bedrockdataautomation_get_blueprint

#' Gets an existing Amazon Bedrock Data Automation Project
#'
#' @description
#' Gets an existing Amazon Bedrock Data Automation Project
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_get_data_automation_project/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_get_data_automation_project/) for full documentation.
#'
#' @param projectArn &#91;required&#93; ARN generated at the server side when a DataAutomationProject is created
#' @param projectStage Optional field to delete a specific DataAutomationProject stage
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_get_data_automation_project
bedrockdataautomation_get_data_automation_project <- function(projectArn, projectStage = NULL) {
  op <- new_operation(
    name = "GetDataAutomationProject",
    http_method = "POST",
    http_path = "/data-automation-projects/{projectArn}/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$get_data_automation_project_input(projectArn = projectArn, projectStage = projectStage)
  output <- .bedrockdataautomation$get_data_automation_project_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$get_data_automation_project <- bedrockdataautomation_get_data_automation_project

#' Lists all existing Amazon Bedrock Data Automation Blueprints
#'
#' @description
#' Lists all existing Amazon Bedrock Data Automation Blueprints
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_list_blueprints/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_list_blueprints/) for full documentation.
#'
#' @param blueprintArn 
#' @param resourceOwner 
#' @param blueprintStageFilter 
#' @param maxResults 
#' @param nextToken 
#' @param projectFilter 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_list_blueprints
bedrockdataautomation_list_blueprints <- function(blueprintArn = NULL, resourceOwner = NULL, blueprintStageFilter = NULL, maxResults = NULL, nextToken = NULL, projectFilter = NULL) {
  op <- new_operation(
    name = "ListBlueprints",
    http_method = "POST",
    http_path = "/blueprints/",
    host_prefix = "",
    paginator = list(input_token = "nextToken", output_token = "nextToken", limit_key = "maxResults", result_key = "blueprints"),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$list_blueprints_input(blueprintArn = blueprintArn, resourceOwner = resourceOwner, blueprintStageFilter = blueprintStageFilter, maxResults = maxResults, nextToken = nextToken, projectFilter = projectFilter)
  output <- .bedrockdataautomation$list_blueprints_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$list_blueprints <- bedrockdataautomation_list_blueprints

#' Lists all existing Amazon Bedrock Data Automation Projects
#'
#' @description
#' Lists all existing Amazon Bedrock Data Automation Projects
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_list_data_automation_projects/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_list_data_automation_projects/) for full documentation.
#'
#' @param maxResults 
#' @param nextToken 
#' @param projectStageFilter 
#' @param blueprintFilter 
#' @param resourceOwner 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_list_data_automation_projects
bedrockdataautomation_list_data_automation_projects <- function(maxResults = NULL, nextToken = NULL, projectStageFilter = NULL, blueprintFilter = NULL, resourceOwner = NULL) {
  op <- new_operation(
    name = "ListDataAutomationProjects",
    http_method = "POST",
    http_path = "/data-automation-projects/",
    host_prefix = "",
    paginator = list(input_token = "nextToken", output_token = "nextToken", limit_key = "maxResults", result_key = "projects"),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$list_data_automation_projects_input(maxResults = maxResults, nextToken = nextToken, projectStageFilter = projectStageFilter, blueprintFilter = blueprintFilter, resourceOwner = resourceOwner)
  output <- .bedrockdataautomation$list_data_automation_projects_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$list_data_automation_projects <- bedrockdataautomation_list_data_automation_projects

#' List tags for an Amazon Bedrock Data Automation resource
#'
#' @description
#' List tags for an Amazon Bedrock Data Automation resource
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_list_tags_for_resource/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_list_tags_for_resource/) for full documentation.
#'
#' @param resourceARN &#91;required&#93; 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_list_tags_for_resource
bedrockdataautomation_list_tags_for_resource <- function(resourceARN) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "POST",
    http_path = "/listTagsForResource",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$list_tags_for_resource_input(resourceARN = resourceARN)
  output <- .bedrockdataautomation$list_tags_for_resource_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$list_tags_for_resource <- bedrockdataautomation_list_tags_for_resource

#' Tag an Amazon Bedrock Data Automation resource
#'
#' @description
#' Tag an Amazon Bedrock Data Automation resource
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_tag_resource/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_tag_resource/) for full documentation.
#'
#' @param resourceARN &#91;required&#93; 
#' @param tags &#91;required&#93; 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_tag_resource
bedrockdataautomation_tag_resource <- function(resourceARN, tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tagResource",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$tag_resource_input(resourceARN = resourceARN, tags = tags)
  output <- .bedrockdataautomation$tag_resource_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$tag_resource <- bedrockdataautomation_tag_resource

#' Untag an Amazon Bedrock Data Automation resource
#'
#' @description
#' Untag an Amazon Bedrock Data Automation resource
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_untag_resource/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_untag_resource/) for full documentation.
#'
#' @param resourceARN &#91;required&#93; 
#' @param tagKeys &#91;required&#93; 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_untag_resource
bedrockdataautomation_untag_resource <- function(resourceARN, tagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "POST",
    http_path = "/untagResource",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$untag_resource_input(resourceARN = resourceARN, tagKeys = tagKeys)
  output <- .bedrockdataautomation$untag_resource_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$untag_resource <- bedrockdataautomation_untag_resource

#' Updates an existing Amazon Bedrock Data Automation Blueprint
#'
#' @description
#' Updates an existing Amazon Bedrock Data Automation Blueprint
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_update_blueprint/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_update_blueprint/) for full documentation.
#'
#' @param blueprintArn &#91;required&#93; ARN generated at the server side when a Blueprint is created
#' @param schema &#91;required&#93; 
#' @param blueprintStage 
#' @param encryptionConfiguration 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_update_blueprint
bedrockdataautomation_update_blueprint <- function(blueprintArn, schema, blueprintStage = NULL, encryptionConfiguration = NULL) {
  op <- new_operation(
    name = "UpdateBlueprint",
    http_method = "PUT",
    http_path = "/blueprints/{blueprintArn}/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$update_blueprint_input(blueprintArn = blueprintArn, schema = schema, blueprintStage = blueprintStage, encryptionConfiguration = encryptionConfiguration)
  output <- .bedrockdataautomation$update_blueprint_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$update_blueprint <- bedrockdataautomation_update_blueprint

#' Updates an existing Amazon Bedrock Data Automation Project
#'
#' @description
#' Updates an existing Amazon Bedrock Data Automation Project
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockdataautomation_update_data_automation_project/](https://www.paws-r-sdk.com/docs/bedrockdataautomation_update_data_automation_project/) for full documentation.
#'
#' @param projectArn &#91;required&#93; ARN generated at the server side when a DataAutomationProject is created
#' @param projectStage 
#' @param projectDescription 
#' @param standardOutputConfiguration &#91;required&#93; 
#' @param customOutputConfiguration 
#' @param overrideConfiguration 
#' @param encryptionConfiguration 
#'
#' @keywords internal
#'
#' @rdname bedrockdataautomation_update_data_automation_project
bedrockdataautomation_update_data_automation_project <- function(projectArn, projectStage = NULL, projectDescription = NULL, standardOutputConfiguration, customOutputConfiguration = NULL, overrideConfiguration = NULL, encryptionConfiguration = NULL) {
  op <- new_operation(
    name = "UpdateDataAutomationProject",
    http_method = "PUT",
    http_path = "/data-automation-projects/{projectArn}/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .bedrockdataautomation$update_data_automation_project_input(projectArn = projectArn, projectStage = projectStage, projectDescription = projectDescription, standardOutputConfiguration = standardOutputConfiguration, customOutputConfiguration = customOutputConfiguration, overrideConfiguration = overrideConfiguration, encryptionConfiguration = encryptionConfiguration)
  output <- .bedrockdataautomation$update_data_automation_project_output()
  config <- get_config()
  svc <- .bedrockdataautomation$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockdataautomation$operations$update_data_automation_project <- bedrockdataautomation_update_data_automation_project
