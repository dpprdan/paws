# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include personalizeevents_service.R
NULL

#' Records action interaction event data
#'
#' @description
#' Records action interaction event data. An *action interaction* event is
#' an interaction between a user and an *action*. For example, a user
#' taking an action, such a enrolling in a membership program or
#' downloading your app.
#' 
#' For more information about recording action interactions, see [Recording
#' action interaction
#' events](https://docs.aws.amazon.com/personalize/latest/dg/recording-action-interaction-events.html).
#' For more information about actions in an Actions dataset, see [Actions
#' dataset](https://docs.aws.amazon.com/personalize/latest/dg/actions-datasets.html).
#'
#' @usage
#' personalizeevents_put_action_interactions(trackingId,
#'   actionInteractions)
#'
#' @param trackingId &#91;required&#93; The ID of your action interaction event tracker. When you create an
#' Action interactions dataset, Amazon Personalize creates an action
#' interaction event tracker for you. For more information, see [Action
#' interaction event tracker
#' ID](https://docs.aws.amazon.com/personalize/latest/dg/action-interaction-tracker-id.html).
#' @param actionInteractions &#91;required&#93; A list of action interaction events from the session.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$put_action_interactions(
#'   trackingId = "string",
#'   actionInteractions = list(
#'     list(
#'       actionId = "string",
#'       userId = "string",
#'       sessionId = "string",
#'       timestamp = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       eventType = "string",
#'       eventId = "string",
#'       recommendationId = "string",
#'       impression = list(
#'         "string"
#'       ),
#'       properties = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname personalizeevents_put_action_interactions
#'
#' @aliases personalizeevents_put_action_interactions
personalizeevents_put_action_interactions <- function(trackingId, actionInteractions) {
  op <- new_operation(
    name = "PutActionInteractions",
    http_method = "POST",
    http_path = "/action-interactions",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .personalizeevents$put_action_interactions_input(trackingId = trackingId, actionInteractions = actionInteractions)
  output <- .personalizeevents$put_action_interactions_output()
  config <- get_config()
  svc <- .personalizeevents$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.personalizeevents$operations$put_action_interactions <- personalizeevents_put_action_interactions

#' Adds one or more actions to an Actions dataset
#'
#' @description
#' Adds one or more actions to an Actions dataset. For more information see
#' [Importing actions
#' individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-actions.html).
#'
#' @usage
#' personalizeevents_put_actions(datasetArn, actions)
#'
#' @param datasetArn &#91;required&#93; The Amazon Resource Name (ARN) of the Actions dataset you are adding the
#' action or actions to.
#' @param actions &#91;required&#93; A list of action data.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$put_actions(
#'   datasetArn = "string",
#'   actions = list(
#'     list(
#'       actionId = "string",
#'       properties = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname personalizeevents_put_actions
#'
#' @aliases personalizeevents_put_actions
personalizeevents_put_actions <- function(datasetArn, actions) {
  op <- new_operation(
    name = "PutActions",
    http_method = "POST",
    http_path = "/actions",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .personalizeevents$put_actions_input(datasetArn = datasetArn, actions = actions)
  output <- .personalizeevents$put_actions_output()
  config <- get_config()
  svc <- .personalizeevents$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.personalizeevents$operations$put_actions <- personalizeevents_put_actions

#' Records item interaction event data
#'
#' @description
#' Records item interaction event data. For more information see [Recording
#' item interaction
#' events](https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).
#'
#' @usage
#' personalizeevents_put_events(trackingId, userId, sessionId, eventList)
#'
#' @param trackingId &#91;required&#93; The tracking ID for the event. The ID is generated by a call to the
#' [CreateEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html)
#' API.
#' @param userId The user associated with the event.
#' @param sessionId &#91;required&#93; The session ID associated with the user's visit. Your application
#' generates the sessionId when a user first visits your website or uses
#' your application. Amazon Personalize uses the sessionId to associate
#' events with the user before they log in. For more information, see
#' [Recording item interaction
#' events](https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).
#' @param eventList &#91;required&#93; A list of event data from the session.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$put_events(
#'   trackingId = "string",
#'   userId = "string",
#'   sessionId = "string",
#'   eventList = list(
#'     list(
#'       eventId = "string",
#'       eventType = "string",
#'       eventValue = 123.0,
#'       itemId = "string",
#'       properties = "string",
#'       sentAt = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       recommendationId = "string",
#'       impression = list(
#'         "string"
#'       ),
#'       metricAttribution = list(
#'         eventAttributionSource = "string"
#'       )
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname personalizeevents_put_events
#'
#' @aliases personalizeevents_put_events
personalizeevents_put_events <- function(trackingId, userId = NULL, sessionId, eventList) {
  op <- new_operation(
    name = "PutEvents",
    http_method = "POST",
    http_path = "/events",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .personalizeevents$put_events_input(trackingId = trackingId, userId = userId, sessionId = sessionId, eventList = eventList)
  output <- .personalizeevents$put_events_output()
  config <- get_config()
  svc <- .personalizeevents$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.personalizeevents$operations$put_events <- personalizeevents_put_events

#' Adds one or more items to an Items dataset
#'
#' @description
#' Adds one or more items to an Items dataset. For more information see
#' [Importing items
#' individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).
#'
#' @usage
#' personalizeevents_put_items(datasetArn, items)
#'
#' @param datasetArn &#91;required&#93; The Amazon Resource Name (ARN) of the Items dataset you are adding the
#' item or items to.
#' @param items &#91;required&#93; A list of item data.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$put_items(
#'   datasetArn = "string",
#'   items = list(
#'     list(
#'       itemId = "string",
#'       properties = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname personalizeevents_put_items
#'
#' @aliases personalizeevents_put_items
personalizeevents_put_items <- function(datasetArn, items) {
  op <- new_operation(
    name = "PutItems",
    http_method = "POST",
    http_path = "/items",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .personalizeevents$put_items_input(datasetArn = datasetArn, items = items)
  output <- .personalizeevents$put_items_output()
  config <- get_config()
  svc <- .personalizeevents$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.personalizeevents$operations$put_items <- personalizeevents_put_items

#' Adds one or more users to a Users dataset
#'
#' @description
#' Adds one or more users to a Users dataset. For more information see
#' [Importing users
#' individually](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).
#'
#' @usage
#' personalizeevents_put_users(datasetArn, users)
#'
#' @param datasetArn &#91;required&#93; The Amazon Resource Name (ARN) of the Users dataset you are adding the
#' user or users to.
#' @param users &#91;required&#93; A list of user data.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$put_users(
#'   datasetArn = "string",
#'   users = list(
#'     list(
#'       userId = "string",
#'       properties = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname personalizeevents_put_users
#'
#' @aliases personalizeevents_put_users
personalizeevents_put_users <- function(datasetArn, users) {
  op <- new_operation(
    name = "PutUsers",
    http_method = "POST",
    http_path = "/users",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .personalizeevents$put_users_input(datasetArn = datasetArn, users = users)
  output <- .personalizeevents$put_users_output()
  config <- get_config()
  svc <- .personalizeevents$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.personalizeevents$operations$put_users <- personalizeevents_put_users
