# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include codestarnotifications_service.R
NULL

#' Creates a notification rule for a resource
#'
#' @description
#' Creates a notification rule for a resource. The rule specifies the
#' events you want notifications about and the targets (such as Chatbot
#' topics or Chatbot clients configured for Slack) where you want to
#' receive them.
#'
#' @usage
#' codestarnotifications_create_notification_rule(Name, EventTypeIds,
#'   Resource, Targets, DetailType, ClientRequestToken, Tags, Status)
#'
#' @param Name &#91;required&#93; The name for the notification rule. Notification rule names must be
#' unique in your Amazon Web Services account.
#' @param EventTypeIds &#91;required&#93; A list of event types associated with this notification rule. For a list
#' of allowed events, see EventTypeSummary.
#' @param Resource &#91;required&#93; The Amazon Resource Name (ARN) of the resource to associate with the
#' notification rule. Supported resources include pipelines in
#' CodePipeline, repositories in CodeCommit, and build projects in
#' CodeBuild.
#' @param Targets &#91;required&#93; A list of Amazon Resource Names (ARNs) of Amazon Simple Notification
#' Service topics and Chatbot clients to associate with the notification
#' rule.
#' @param DetailType &#91;required&#93; The level of detail to include in the notifications for this resource.
#' `BASIC` will include only the contents of the event as it would appear
#' in Amazon CloudWatch. `FULL` will include any supplemental information
#' provided by AWS CodeStar Notifications and/or the service for the
#' resource for which the notification is created.
#' @param ClientRequestToken A unique, client-generated idempotency token that, when provided in a
#' request, ensures the request cannot be repeated with a changed
#' parameter. If a request with the same parameters is received and a token
#' is included, the request returns information about the initial request
#' that used that token.
#' 
#' The Amazon Web Services SDKs prepopulate client request tokens. If you
#' are using an Amazon Web Services SDK, an idempotency token is created
#' for you.
#' @param Tags A list of tags to apply to this notification rule. Key names cannot
#' start with "`aws`".
#' @param Status The status of the notification rule. The default value is `ENABLED`. If
#' the status is set to `DISABLED`, notifications aren't sent for the
#' notification rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_notification_rule(
#'   Name = "string",
#'   EventTypeIds = list(
#'     "string"
#'   ),
#'   Resource = "string",
#'   Targets = list(
#'     list(
#'       TargetType = "string",
#'       TargetAddress = "string"
#'     )
#'   ),
#'   DetailType = "BASIC"|"FULL",
#'   ClientRequestToken = "string",
#'   Tags = list(
#'     "string"
#'   ),
#'   Status = "ENABLED"|"DISABLED"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_create_notification_rule
#'
#' @aliases codestarnotifications_create_notification_rule
codestarnotifications_create_notification_rule <- function(Name, EventTypeIds, Resource, Targets, DetailType, ClientRequestToken = NULL, Tags = NULL, Status = NULL) {
  op <- new_operation(
    name = "CreateNotificationRule",
    http_method = "POST",
    http_path = "/createNotificationRule",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$create_notification_rule_input(Name = Name, EventTypeIds = EventTypeIds, Resource = Resource, Targets = Targets, DetailType = DetailType, ClientRequestToken = ClientRequestToken, Tags = Tags, Status = Status)
  output <- .codestarnotifications$create_notification_rule_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$create_notification_rule <- codestarnotifications_create_notification_rule

#' Deletes a notification rule for a resource
#'
#' @description
#' Deletes a notification rule for a resource.
#'
#' @usage
#' codestarnotifications_delete_notification_rule(Arn)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule you want to
#' delete.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$delete_notification_rule(
#'   Arn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_delete_notification_rule
#'
#' @aliases codestarnotifications_delete_notification_rule
codestarnotifications_delete_notification_rule <- function(Arn) {
  op <- new_operation(
    name = "DeleteNotificationRule",
    http_method = "POST",
    http_path = "/deleteNotificationRule",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$delete_notification_rule_input(Arn = Arn)
  output <- .codestarnotifications$delete_notification_rule_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$delete_notification_rule <- codestarnotifications_delete_notification_rule

#' Deletes a specified target for notifications
#'
#' @description
#' Deletes a specified target for notifications.
#'
#' @usage
#' codestarnotifications_delete_target(TargetAddress, ForceUnsubscribeAll)
#'
#' @param TargetAddress &#91;required&#93; The Amazon Resource Name (ARN) of the Chatbot topic or Chatbot client to
#' delete.
#' @param ForceUnsubscribeAll A Boolean value that can be used to delete all associations with this
#' Chatbot topic. The default value is FALSE. If set to TRUE, all
#' associations between that target and every notification rule in your
#' Amazon Web Services account are deleted.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_target(
#'   TargetAddress = "string",
#'   ForceUnsubscribeAll = TRUE|FALSE
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_delete_target
#'
#' @aliases codestarnotifications_delete_target
codestarnotifications_delete_target <- function(TargetAddress, ForceUnsubscribeAll = NULL) {
  op <- new_operation(
    name = "DeleteTarget",
    http_method = "POST",
    http_path = "/deleteTarget",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$delete_target_input(TargetAddress = TargetAddress, ForceUnsubscribeAll = ForceUnsubscribeAll)
  output <- .codestarnotifications$delete_target_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$delete_target <- codestarnotifications_delete_target

#' Returns information about a specified notification rule
#'
#' @description
#' Returns information about a specified notification rule.
#'
#' @usage
#' codestarnotifications_describe_notification_rule(Arn)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string",
#'   Name = "string",
#'   EventTypes = list(
#'     list(
#'       EventTypeId = "string",
#'       ServiceName = "string",
#'       EventTypeName = "string",
#'       ResourceType = "string"
#'     )
#'   ),
#'   Resource = "string",
#'   Targets = list(
#'     list(
#'       TargetAddress = "string",
#'       TargetType = "string",
#'       TargetStatus = "PENDING"|"ACTIVE"|"UNREACHABLE"|"INACTIVE"|"DEACTIVATED"
#'     )
#'   ),
#'   DetailType = "BASIC"|"FULL",
#'   CreatedBy = "string",
#'   Status = "ENABLED"|"DISABLED",
#'   CreatedTimestamp = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   LastModifiedTimestamp = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$describe_notification_rule(
#'   Arn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_describe_notification_rule
#'
#' @aliases codestarnotifications_describe_notification_rule
codestarnotifications_describe_notification_rule <- function(Arn) {
  op <- new_operation(
    name = "DescribeNotificationRule",
    http_method = "POST",
    http_path = "/describeNotificationRule",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$describe_notification_rule_input(Arn = Arn)
  output <- .codestarnotifications$describe_notification_rule_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$describe_notification_rule <- codestarnotifications_describe_notification_rule

#' Returns information about the event types available for configuring
#' notifications
#'
#' @description
#' Returns information about the event types available for configuring
#' notifications.
#'
#' @usage
#' codestarnotifications_list_event_types(Filters, NextToken, MaxResults)
#'
#' @param Filters The filters to use to return information by service or resource type.
#' @param NextToken An enumeration token that, when provided in a request, returns the next
#' batch of the results.
#' @param MaxResults A non-negative integer used to limit the number of returned results. The
#' default number is 50. The maximum number of results that can be returned
#' is 100.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   EventTypes = list(
#'     list(
#'       EventTypeId = "string",
#'       ServiceName = "string",
#'       EventTypeName = "string",
#'       ResourceType = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_event_types(
#'   Filters = list(
#'     list(
#'       Name = "RESOURCE_TYPE"|"SERVICE_NAME",
#'       Value = "string"
#'     )
#'   ),
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_list_event_types
#'
#' @aliases codestarnotifications_list_event_types
codestarnotifications_list_event_types <- function(Filters = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListEventTypes",
    http_method = "POST",
    http_path = "/listEventTypes",
    host_prefix = "",
    paginator = list(input_token = "NextToken", limit_key = "MaxResults", output_token = "NextToken", result_key = "EventTypes"),
    stream_api = FALSE
  )
  input <- .codestarnotifications$list_event_types_input(Filters = Filters, NextToken = NextToken, MaxResults = MaxResults)
  output <- .codestarnotifications$list_event_types_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$list_event_types <- codestarnotifications_list_event_types

#' Returns a list of the notification rules for an Amazon Web Services
#' account
#'
#' @description
#' Returns a list of the notification rules for an Amazon Web Services
#' account.
#'
#' @usage
#' codestarnotifications_list_notification_rules(Filters, NextToken,
#'   MaxResults)
#'
#' @param Filters The filters to use to return information by service or resource type.
#' For valid values, see ListNotificationRulesFilter.
#' 
#' A filter with the same name can appear more than once when used with OR
#' statements. Filters with different names should be applied with AND
#' statements.
#' @param NextToken An enumeration token that, when provided in a request, returns the next
#' batch of the results.
#' @param MaxResults A non-negative integer used to limit the number of returned results. The
#' maximum number of results that can be returned is 100.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   NextToken = "string",
#'   NotificationRules = list(
#'     list(
#'       Id = "string",
#'       Arn = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_notification_rules(
#'   Filters = list(
#'     list(
#'       Name = "EVENT_TYPE_ID"|"CREATED_BY"|"RESOURCE"|"TARGET_ADDRESS",
#'       Value = "string"
#'     )
#'   ),
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_list_notification_rules
#'
#' @aliases codestarnotifications_list_notification_rules
codestarnotifications_list_notification_rules <- function(Filters = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListNotificationRules",
    http_method = "POST",
    http_path = "/listNotificationRules",
    host_prefix = "",
    paginator = list(input_token = "NextToken", limit_key = "MaxResults", output_token = "NextToken", result_key = "NotificationRules"),
    stream_api = FALSE
  )
  input <- .codestarnotifications$list_notification_rules_input(Filters = Filters, NextToken = NextToken, MaxResults = MaxResults)
  output <- .codestarnotifications$list_notification_rules_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$list_notification_rules <- codestarnotifications_list_notification_rules

#' Returns a list of the tags associated with a notification rule
#'
#' @description
#' Returns a list of the tags associated with a notification rule.
#'
#' @usage
#' codestarnotifications_list_tags_for_resource(Arn)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) for the notification rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   Arn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_list_tags_for_resource
#'
#' @aliases codestarnotifications_list_tags_for_resource
codestarnotifications_list_tags_for_resource <- function(Arn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "POST",
    http_path = "/listTagsForResource",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$list_tags_for_resource_input(Arn = Arn)
  output <- .codestarnotifications$list_tags_for_resource_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$list_tags_for_resource <- codestarnotifications_list_tags_for_resource

#' Returns a list of the notification rule targets for an Amazon Web
#' Services account
#'
#' @description
#' Returns a list of the notification rule targets for an Amazon Web
#' Services account.
#'
#' @usage
#' codestarnotifications_list_targets(Filters, NextToken, MaxResults)
#'
#' @param Filters The filters to use to return information by service or resource type.
#' Valid filters include target type, target address, and target status.
#' 
#' A filter with the same name can appear more than once when used with OR
#' statements. Filters with different names should be applied with AND
#' statements.
#' @param NextToken An enumeration token that, when provided in a request, returns the next
#' batch of the results.
#' @param MaxResults A non-negative integer used to limit the number of returned results. The
#' maximum number of results that can be returned is 100.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Targets = list(
#'     list(
#'       TargetAddress = "string",
#'       TargetType = "string",
#'       TargetStatus = "PENDING"|"ACTIVE"|"UNREACHABLE"|"INACTIVE"|"DEACTIVATED"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_targets(
#'   Filters = list(
#'     list(
#'       Name = "TARGET_TYPE"|"TARGET_ADDRESS"|"TARGET_STATUS",
#'       Value = "string"
#'     )
#'   ),
#'   NextToken = "string",
#'   MaxResults = 123
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_list_targets
#'
#' @aliases codestarnotifications_list_targets
codestarnotifications_list_targets <- function(Filters = NULL, NextToken = NULL, MaxResults = NULL) {
  op <- new_operation(
    name = "ListTargets",
    http_method = "POST",
    http_path = "/listTargets",
    host_prefix = "",
    paginator = list(input_token = "NextToken", limit_key = "MaxResults", output_token = "NextToken", result_key = "Targets"),
    stream_api = FALSE
  )
  input <- .codestarnotifications$list_targets_input(Filters = Filters, NextToken = NextToken, MaxResults = MaxResults)
  output <- .codestarnotifications$list_targets_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$list_targets <- codestarnotifications_list_targets

#' Creates an association between a notification rule and an Chatbot topic
#' or Chatbot client so that the associated target can receive
#' notifications when the events described in the rule are triggered
#'
#' @description
#' Creates an association between a notification rule and an Chatbot topic
#' or Chatbot client so that the associated target can receive
#' notifications when the events described in the rule are triggered.
#'
#' @usage
#' codestarnotifications_subscribe(Arn, Target, ClientRequestToken)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule for which you
#' want to create the association.
#' @param Target &#91;required&#93; 
#' @param ClientRequestToken An enumeration token that, when provided in a request, returns the next
#' batch of the results.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$subscribe(
#'   Arn = "string",
#'   Target = list(
#'     TargetType = "string",
#'     TargetAddress = "string"
#'   ),
#'   ClientRequestToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_subscribe
#'
#' @aliases codestarnotifications_subscribe
codestarnotifications_subscribe <- function(Arn, Target, ClientRequestToken = NULL) {
  op <- new_operation(
    name = "Subscribe",
    http_method = "POST",
    http_path = "/subscribe",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$subscribe_input(Arn = Arn, Target = Target, ClientRequestToken = ClientRequestToken)
  output <- .codestarnotifications$subscribe_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$subscribe <- codestarnotifications_subscribe

#' Associates a set of provided tags with a notification rule
#'
#' @description
#' Associates a set of provided tags with a notification rule.
#'
#' @usage
#' codestarnotifications_tag_resource(Arn, Tags)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule to tag.
#' @param Tags &#91;required&#93; The list of tags to associate with the resource. Tag key names cannot
#' start with "`aws`".
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   Arn = "string",
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_tag_resource
#'
#' @aliases codestarnotifications_tag_resource
codestarnotifications_tag_resource <- function(Arn, Tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tagResource",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$tag_resource_input(Arn = Arn, Tags = Tags)
  output <- .codestarnotifications$tag_resource_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$tag_resource <- codestarnotifications_tag_resource

#' Removes an association between a notification rule and an Chatbot topic
#' so that subscribers to that topic stop receiving notifications when the
#' events described in the rule are triggered
#'
#' @description
#' Removes an association between a notification rule and an Chatbot topic
#' so that subscribers to that topic stop receiving notifications when the
#' events described in the rule are triggered.
#'
#' @usage
#' codestarnotifications_unsubscribe(Arn, TargetAddress)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule.
#' @param TargetAddress &#91;required&#93; The ARN of the Chatbot topic to unsubscribe from the notification rule.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$unsubscribe(
#'   Arn = "string",
#'   TargetAddress = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_unsubscribe
#'
#' @aliases codestarnotifications_unsubscribe
codestarnotifications_unsubscribe <- function(Arn, TargetAddress) {
  op <- new_operation(
    name = "Unsubscribe",
    http_method = "POST",
    http_path = "/unsubscribe",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$unsubscribe_input(Arn = Arn, TargetAddress = TargetAddress)
  output <- .codestarnotifications$unsubscribe_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$unsubscribe <- codestarnotifications_unsubscribe

#' Removes the association between one or more provided tags and a
#' notification rule
#'
#' @description
#' Removes the association between one or more provided tags and a
#' notification rule.
#'
#' @usage
#' codestarnotifications_untag_resource(Arn, TagKeys)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule from which to
#' remove the tags.
#' @param TagKeys &#91;required&#93; The key names of the tags to remove.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   Arn = "string",
#'   TagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_untag_resource
#'
#' @aliases codestarnotifications_untag_resource
codestarnotifications_untag_resource <- function(Arn, TagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "POST",
    http_path = "/untagResource/{resourceArn}",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$untag_resource_input(Arn = Arn, TagKeys = TagKeys)
  output <- .codestarnotifications$untag_resource_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$untag_resource <- codestarnotifications_untag_resource

#' Updates a notification rule for a resource
#'
#' @description
#' Updates a notification rule for a resource. You can change the events
#' that trigger the notification rule, the status of the rule, and the
#' targets that receive the notifications.
#' 
#' To add or remove tags for a notification rule, you must use
#' [`tag_resource`][codestarnotifications_tag_resource] and
#' [`untag_resource`][codestarnotifications_untag_resource].
#'
#' @usage
#' codestarnotifications_update_notification_rule(Arn, Name, Status,
#'   EventTypeIds, Targets, DetailType)
#'
#' @param Arn &#91;required&#93; The Amazon Resource Name (ARN) of the notification rule.
#' @param Name The name of the notification rule.
#' @param Status The status of the notification rule. Valid statuses include enabled
#' (sending notifications) or disabled (not sending notifications).
#' @param EventTypeIds A list of event types associated with this notification rule. For a
#' complete list of event types and IDs, see [Notification
#' concepts](https://docs.aws.amazon.com/dtconsole/latest/userguide/concepts.html#concepts-api)
#' in the *Developer Tools Console User Guide*.
#' @param Targets The address and type of the targets to receive notifications from this
#' notification rule.
#' @param DetailType The level of detail to include in the notifications for this resource.
#' BASIC will include only the contents of the event as it would appear in
#' Amazon CloudWatch. FULL will include any supplemental information
#' provided by AWS CodeStar Notifications and/or the service for the
#' resource for which the notification is created.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$update_notification_rule(
#'   Arn = "string",
#'   Name = "string",
#'   Status = "ENABLED"|"DISABLED",
#'   EventTypeIds = list(
#'     "string"
#'   ),
#'   Targets = list(
#'     list(
#'       TargetType = "string",
#'       TargetAddress = "string"
#'     )
#'   ),
#'   DetailType = "BASIC"|"FULL"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname codestarnotifications_update_notification_rule
#'
#' @aliases codestarnotifications_update_notification_rule
codestarnotifications_update_notification_rule <- function(Arn, Name = NULL, Status = NULL, EventTypeIds = NULL, Targets = NULL, DetailType = NULL) {
  op <- new_operation(
    name = "UpdateNotificationRule",
    http_method = "POST",
    http_path = "/updateNotificationRule",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .codestarnotifications$update_notification_rule_input(Arn = Arn, Name = Name, Status = Status, EventTypeIds = EventTypeIds, Targets = Targets, DetailType = DetailType)
  output <- .codestarnotifications$update_notification_rule_output()
  config <- get_config()
  svc <- .codestarnotifications$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.codestarnotifications$operations$update_notification_rule <- codestarnotifications_update_notification_rule
