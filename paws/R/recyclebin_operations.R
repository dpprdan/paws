# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include recyclebin_service.R
NULL

#' Creates a Recycle Bin retention rule
#'
#' @description
#' Creates a Recycle Bin retention rule. You can create two types of
#' retention rules:
#' 
#' -   **Tag-level retention rules** - These retention rules use resource
#'     tags to identify the resources to protect. For each retention rule,
#'     you specify one or more tag key and value pairs. Resources (of the
#'     specified type) that have at least one of these tag key and value
#'     pairs are automatically retained in the Recycle Bin upon deletion.
#'     Use this type of retention rule to protect specific resources in
#'     your account based on their tags.
#' 
#' -   **Region-level retention rules** - These retention rules, by
#'     default, apply to all of the resources (of the specified type) in
#'     the Region, even if the resources are not tagged. However, you can
#'     specify exclusion tags to exclude resources that have specific tags.
#'     Use this type of retention rule to protect all resources of a
#'     specific type in a Region.
#' 
#' For more information, see [Create Recycle Bin retention
#' rules](https://docs.aws.amazon.com/ebs/latest/userguide/recycle-bin.html)
#' in the *Amazon EBS User Guide*.
#'
#' @usage
#' recyclebin_create_rule(RetentionPeriod, Description, Tags, ResourceType,
#'   ResourceTags, LockConfiguration, ExcludeResourceTags)
#'
#' @param RetentionPeriod &#91;required&#93; Information about the retention period for which the retention rule is
#' to retain resources.
#' @param Description The retention rule description.
#' @param Tags Information about the tags to assign to the retention rule.
#' @param ResourceType &#91;required&#93; The resource type to be retained by the retention rule. Currently, only
#' Amazon EBS snapshots and EBS-backed AMIs are supported. To retain
#' snapshots, specify `EBS_SNAPSHOT`. To retain EBS-backed AMIs, specify
#' `EC2_IMAGE`.
#' @param ResourceTags \[Tag-level retention rules only\] Specifies the resource tags to use to
#' identify resources that are to be retained by a tag-level retention
#' rule. For tag-level retention rules, only deleted resources, of the
#' specified resource type, that have one or more of the specified tag key
#' and value pairs are retained. If a resource is deleted, but it does not
#' have any of the specified tag key and value pairs, it is immediately
#' deleted without being retained by the retention rule.
#' 
#' You can add the same tag key and value pair to a maximum or five
#' retention rules.
#' 
#' To create a Region-level retention rule, omit this parameter. A
#' Region-level retention rule does not have any resource tags specified.
#' It retains all deleted resources of the specified resource type in the
#' Region in which the rule is created, even if the resources are not
#' tagged.
#' @param LockConfiguration Information about the retention rule lock configuration.
#' @param ExcludeResourceTags \[Region-level retention rules only\] Specifies the exclusion tags to
#' use to identify resources that are to be excluded, or ignored, by a
#' Region-level retention rule. Resources that have any of these tags are
#' not retained by the retention rule upon deletion.
#' 
#' You can't specify exclusion tags for tag-level retention rules.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Identifier = "string",
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   Description = "string",
#'   Tags = list(
#'     list(
#'       Key = "string",
#'       Value = "string"
#'     )
#'   ),
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   Status = "pending"|"available",
#'   LockConfiguration = list(
#'     UnlockDelay = list(
#'       UnlockDelayValue = 123,
#'       UnlockDelayUnit = "DAYS"
#'     )
#'   ),
#'   LockState = "locked"|"pending_unlock"|"unlocked",
#'   RuleArn = "string",
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_rule(
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   Description = "string",
#'   Tags = list(
#'     list(
#'       Key = "string",
#'       Value = "string"
#'     )
#'   ),
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   LockConfiguration = list(
#'     UnlockDelay = list(
#'       UnlockDelayValue = 123,
#'       UnlockDelayUnit = "DAYS"
#'     )
#'   ),
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_create_rule
#'
#' @aliases recyclebin_create_rule
recyclebin_create_rule <- function(RetentionPeriod, Description = NULL, Tags = NULL, ResourceType, ResourceTags = NULL, LockConfiguration = NULL, ExcludeResourceTags = NULL) {
  op <- new_operation(
    name = "CreateRule",
    http_method = "POST",
    http_path = "/rules",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$create_rule_input(RetentionPeriod = RetentionPeriod, Description = Description, Tags = Tags, ResourceType = ResourceType, ResourceTags = ResourceTags, LockConfiguration = LockConfiguration, ExcludeResourceTags = ExcludeResourceTags)
  output <- .recyclebin$create_rule_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$create_rule <- recyclebin_create_rule

#' Deletes a Recycle Bin retention rule
#'
#' @description
#' Deletes a Recycle Bin retention rule. For more information, see [Delete
#' Recycle Bin retention
#' rules](https://docs.aws.amazon.com/ebs/latest/userguide/#recycle-bin-delete-rule)
#' in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @usage
#' recyclebin_delete_rule(Identifier)
#'
#' @param Identifier &#91;required&#93; The unique ID of the retention rule.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_rule(
#'   Identifier = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_delete_rule
#'
#' @aliases recyclebin_delete_rule
recyclebin_delete_rule <- function(Identifier) {
  op <- new_operation(
    name = "DeleteRule",
    http_method = "DELETE",
    http_path = "/rules/{identifier}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$delete_rule_input(Identifier = Identifier)
  output <- .recyclebin$delete_rule_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$delete_rule <- recyclebin_delete_rule

#' Gets information about a Recycle Bin retention rule
#'
#' @description
#' Gets information about a Recycle Bin retention rule.
#'
#' @usage
#' recyclebin_get_rule(Identifier)
#'
#' @param Identifier &#91;required&#93; The unique ID of the retention rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Identifier = "string",
#'   Description = "string",
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   Status = "pending"|"available",
#'   LockConfiguration = list(
#'     UnlockDelay = list(
#'       UnlockDelayValue = 123,
#'       UnlockDelayUnit = "DAYS"
#'     )
#'   ),
#'   LockState = "locked"|"pending_unlock"|"unlocked",
#'   LockEndTime = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   RuleArn = "string",
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_rule(
#'   Identifier = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_get_rule
#'
#' @aliases recyclebin_get_rule
recyclebin_get_rule <- function(Identifier) {
  op <- new_operation(
    name = "GetRule",
    http_method = "GET",
    http_path = "/rules/{identifier}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$get_rule_input(Identifier = Identifier)
  output <- .recyclebin$get_rule_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$get_rule <- recyclebin_get_rule

#' Lists the Recycle Bin retention rules in the Region
#'
#' @description
#' Lists the Recycle Bin retention rules in the Region.
#'
#' @usage
#' recyclebin_list_rules(MaxResults, NextToken, ResourceType, ResourceTags,
#'   LockState, ExcludeResourceTags)
#'
#' @param MaxResults The maximum number of results to return with a single call. To retrieve
#' the remaining results, make another call with the returned `NextToken`
#' value.
#' @param NextToken The token for the next page of results.
#' @param ResourceType &#91;required&#93; The resource type retained by the retention rule. Only retention rules
#' that retain the specified resource type are listed. Currently, only
#' Amazon EBS snapshots and EBS-backed AMIs are supported. To list
#' retention rules that retain snapshots, specify `EBS_SNAPSHOT`. To list
#' retention rules that retain EBS-backed AMIs, specify `EC2_IMAGE`.
#' @param ResourceTags \[Tag-level retention rules only\] Information about the resource tags
#' used to identify resources that are retained by the retention rule.
#' @param LockState The lock state of the retention rules to list. Only retention rules with
#' the specified lock state are returned.
#' @param ExcludeResourceTags \[Region-level retention rules only\] Information about the exclusion
#' tags used to identify resources that are to be excluded, or ignored, by
#' the retention rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Rules = list(
#'     list(
#'       Identifier = "string",
#'       Description = "string",
#'       RetentionPeriod = list(
#'         RetentionPeriodValue = 123,
#'         RetentionPeriodUnit = "DAYS"
#'       ),
#'       LockState = "locked"|"pending_unlock"|"unlocked",
#'       RuleArn = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_rules(
#'   MaxResults = 123,
#'   NextToken = "string",
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   LockState = "locked"|"pending_unlock"|"unlocked",
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_list_rules
#'
#' @aliases recyclebin_list_rules
recyclebin_list_rules <- function(MaxResults = NULL, NextToken = NULL, ResourceType, ResourceTags = NULL, LockState = NULL, ExcludeResourceTags = NULL) {
  op <- new_operation(
    name = "ListRules",
    http_method = "POST",
    http_path = "/list-rules",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "Rules"),
    stream_api = FALSE
  )
  input <- .recyclebin$list_rules_input(MaxResults = MaxResults, NextToken = NextToken, ResourceType = ResourceType, ResourceTags = ResourceTags, LockState = LockState, ExcludeResourceTags = ExcludeResourceTags)
  output <- .recyclebin$list_rules_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$list_rules <- recyclebin_list_rules

#' Lists the tags assigned to a retention rule
#'
#' @description
#' Lists the tags assigned to a retention rule.
#'
#' @usage
#' recyclebin_list_tags_for_resource(ResourceArn)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the retention rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Tags = list(
#'     list(
#'       Key = "string",
#'       Value = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_list_tags_for_resource
#'
#' @aliases recyclebin_list_tags_for_resource
recyclebin_list_tags_for_resource <- function(ResourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$list_tags_for_resource_input(ResourceArn = ResourceArn)
  output <- .recyclebin$list_tags_for_resource_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$list_tags_for_resource <- recyclebin_list_tags_for_resource

#' Locks a Region-level retention rule
#'
#' @description
#' Locks a Region-level retention rule. A locked retention rule can't be
#' modified or deleted.
#' 
#' You can't lock tag-level retention rules, or Region-level retention
#' rules that have exclusion tags.
#'
#' @usage
#' recyclebin_lock_rule(Identifier, LockConfiguration)
#'
#' @param Identifier &#91;required&#93; The unique ID of the retention rule.
#' @param LockConfiguration &#91;required&#93; Information about the retention rule lock configuration.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Identifier = "string",
#'   Description = "string",
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   Status = "pending"|"available",
#'   LockConfiguration = list(
#'     UnlockDelay = list(
#'       UnlockDelayValue = 123,
#'       UnlockDelayUnit = "DAYS"
#'     )
#'   ),
#'   LockState = "locked"|"pending_unlock"|"unlocked",
#'   RuleArn = "string",
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$lock_rule(
#'   Identifier = "string",
#'   LockConfiguration = list(
#'     UnlockDelay = list(
#'       UnlockDelayValue = 123,
#'       UnlockDelayUnit = "DAYS"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_lock_rule
#'
#' @aliases recyclebin_lock_rule
recyclebin_lock_rule <- function(Identifier, LockConfiguration) {
  op <- new_operation(
    name = "LockRule",
    http_method = "PATCH",
    http_path = "/rules/{identifier}/lock",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$lock_rule_input(Identifier = Identifier, LockConfiguration = LockConfiguration)
  output <- .recyclebin$lock_rule_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$lock_rule <- recyclebin_lock_rule

#' Assigns tags to the specified retention rule
#'
#' @description
#' Assigns tags to the specified retention rule.
#'
#' @usage
#' recyclebin_tag_resource(ResourceArn, Tags)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the retention rule.
#' @param Tags &#91;required&#93; Information about the tags to assign to the retention rule.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   ResourceArn = "string",
#'   Tags = list(
#'     list(
#'       Key = "string",
#'       Value = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_tag_resource
#'
#' @aliases recyclebin_tag_resource
recyclebin_tag_resource <- function(ResourceArn, Tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$tag_resource_input(ResourceArn = ResourceArn, Tags = Tags)
  output <- .recyclebin$tag_resource_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$tag_resource <- recyclebin_tag_resource

#' Unlocks a retention rule
#'
#' @description
#' Unlocks a retention rule. After a retention rule is unlocked, it can be
#' modified or deleted only after the unlock delay period expires.
#'
#' @usage
#' recyclebin_unlock_rule(Identifier)
#'
#' @param Identifier &#91;required&#93; The unique ID of the retention rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Identifier = "string",
#'   Description = "string",
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   Status = "pending"|"available",
#'   LockConfiguration = list(
#'     UnlockDelay = list(
#'       UnlockDelayValue = 123,
#'       UnlockDelayUnit = "DAYS"
#'     )
#'   ),
#'   LockState = "locked"|"pending_unlock"|"unlocked",
#'   LockEndTime = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   RuleArn = "string",
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$unlock_rule(
#'   Identifier = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_unlock_rule
#'
#' @aliases recyclebin_unlock_rule
recyclebin_unlock_rule <- function(Identifier) {
  op <- new_operation(
    name = "UnlockRule",
    http_method = "PATCH",
    http_path = "/rules/{identifier}/unlock",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$unlock_rule_input(Identifier = Identifier)
  output <- .recyclebin$unlock_rule_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$unlock_rule <- recyclebin_unlock_rule

#' Unassigns a tag from a retention rule
#'
#' @description
#' Unassigns a tag from a retention rule.
#'
#' @usage
#' recyclebin_untag_resource(ResourceArn, TagKeys)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the retention rule.
#' @param TagKeys &#91;required&#93; The tag keys of the tags to unassign. All tags that have the specified
#' tag key are unassigned.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   ResourceArn = "string",
#'   TagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_untag_resource
#'
#' @aliases recyclebin_untag_resource
recyclebin_untag_resource <- function(ResourceArn, TagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$untag_resource_input(ResourceArn = ResourceArn, TagKeys = TagKeys)
  output <- .recyclebin$untag_resource_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$untag_resource <- recyclebin_untag_resource

#' Updates an existing Recycle Bin retention rule
#'
#' @description
#' Updates an existing Recycle Bin retention rule. You can update a
#' retention rule's description, resource tags, and retention period at any
#' time after creation. You can't update a retention rule's resource type
#' after creation. For more information, see [Update Recycle Bin retention
#' rules](https://docs.aws.amazon.com/ebs/latest/userguide/#recycle-bin-update-rule)
#' in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @usage
#' recyclebin_update_rule(Identifier, RetentionPeriod, Description,
#'   ResourceType, ResourceTags, ExcludeResourceTags)
#'
#' @param Identifier &#91;required&#93; The unique ID of the retention rule.
#' @param RetentionPeriod Information about the retention period for which the retention rule is
#' to retain resources.
#' @param Description The retention rule description.
#' @param ResourceType This parameter is currently not supported. You can't update a retention
#' rule's resource type after creation.
#' @param ResourceTags \[Tag-level retention rules only\] Specifies the resource tags to use to
#' identify resources that are to be retained by a tag-level retention
#' rule. For tag-level retention rules, only deleted resources, of the
#' specified resource type, that have one or more of the specified tag key
#' and value pairs are retained. If a resource is deleted, but it does not
#' have any of the specified tag key and value pairs, it is immediately
#' deleted without being retained by the retention rule.
#' 
#' You can add the same tag key and value pair to a maximum or five
#' retention rules.
#' 
#' To create a Region-level retention rule, omit this parameter. A
#' Region-level retention rule does not have any resource tags specified.
#' It retains all deleted resources of the specified resource type in the
#' Region in which the rule is created, even if the resources are not
#' tagged.
#' @param ExcludeResourceTags \[Region-level retention rules only\] Specifies the exclusion tags to
#' use to identify resources that are to be excluded, or ignored, by a
#' Region-level retention rule. Resources that have any of these tags are
#' not retained by the retention rule upon deletion.
#' 
#' You can't specify exclusion tags for tag-level retention rules.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Identifier = "string",
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   Description = "string",
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   Status = "pending"|"available",
#'   LockState = "locked"|"pending_unlock"|"unlocked",
#'   LockEndTime = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   RuleArn = "string",
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$update_rule(
#'   Identifier = "string",
#'   RetentionPeriod = list(
#'     RetentionPeriodValue = 123,
#'     RetentionPeriodUnit = "DAYS"
#'   ),
#'   Description = "string",
#'   ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
#'   ResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   ),
#'   ExcludeResourceTags = list(
#'     list(
#'       ResourceTagKey = "string",
#'       ResourceTagValue = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname recyclebin_update_rule
#'
#' @aliases recyclebin_update_rule
recyclebin_update_rule <- function(Identifier, RetentionPeriod = NULL, Description = NULL, ResourceType = NULL, ResourceTags = NULL, ExcludeResourceTags = NULL) {
  op <- new_operation(
    name = "UpdateRule",
    http_method = "PATCH",
    http_path = "/rules/{identifier}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .recyclebin$update_rule_input(Identifier = Identifier, RetentionPeriod = RetentionPeriod, Description = Description, ResourceType = ResourceType, ResourceTags = ResourceTags, ExcludeResourceTags = ExcludeResourceTags)
  output <- .recyclebin$update_rule_output()
  config <- get_config()
  svc <- .recyclebin$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.recyclebin$operations$update_rule <- recyclebin_update_rule
