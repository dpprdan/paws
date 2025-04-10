# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include connectcontactlens_service.R
NULL

#' Provides a list of analysis segments for a real-time analysis session
#'
#' @description
#' Provides a list of analysis segments for a real-time analysis session.
#'
#' @usage
#' connectcontactlens_list_realtime_contact_analysis_segments(InstanceId,
#'   ContactId, MaxResults, NextToken)
#'
#' @param InstanceId &#91;required&#93; The identifier of the Amazon Connect instance.
#' @param ContactId &#91;required&#93; The identifier of the contact.
#' @param MaxResults The maximum number of results to return per page.
#' @param NextToken The token for the next set of results. Use the value returned in the
#' previous response in the next request to retrieve the next set of
#' results.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Segments = list(
#'     list(
#'       Transcript = list(
#'         Id = "string",
#'         ParticipantId = "string",
#'         ParticipantRole = "string",
#'         Content = "string",
#'         BeginOffsetMillis = 123,
#'         EndOffsetMillis = 123,
#'         Sentiment = "POSITIVE"|"NEUTRAL"|"NEGATIVE",
#'         IssuesDetected = list(
#'           list(
#'             CharacterOffsets = list(
#'               BeginOffsetChar = 123,
#'               EndOffsetChar = 123
#'             )
#'           )
#'         )
#'       ),
#'       Categories = list(
#'         MatchedCategories = list(
#'           "string"
#'         ),
#'         MatchedDetails = list(
#'           list(
#'             PointsOfInterest = list(
#'               list(
#'                 BeginOffsetMillis = 123,
#'                 EndOffsetMillis = 123
#'               )
#'             )
#'           )
#'         )
#'       ),
#'       PostContactSummary = list(
#'         Content = "string",
#'         Status = "FAILED"|"COMPLETED",
#'         FailureCode = "QUOTA_EXCEEDED"|"INSUFFICIENT_CONVERSATION_CONTENT"|"FAILED_SAFETY_GUIDELINES"|"INVALID_ANALYSIS_CONFIGURATION"|"INTERNAL_ERROR"
#'       )
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_realtime_contact_analysis_segments(
#'   InstanceId = "string",
#'   ContactId = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname connectcontactlens_list_realtime_contact_analysis_segments
#'
#' @aliases connectcontactlens_list_realtime_contact_analysis_segments
connectcontactlens_list_realtime_contact_analysis_segments <- function(InstanceId, ContactId, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListRealtimeContactAnalysisSegments",
    http_method = "POST",
    http_path = "/realtime-contact-analysis/analysis-segments",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults"),
    stream_api = FALSE
  )
  input <- .connectcontactlens$list_realtime_contact_analysis_segments_input(InstanceId = InstanceId, ContactId = ContactId, MaxResults = MaxResults, NextToken = NextToken)
  output <- .connectcontactlens$list_realtime_contact_analysis_segments_output()
  config <- get_config()
  svc <- .connectcontactlens$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.connectcontactlens$operations$list_realtime_contact_analysis_segments <- connectcontactlens_list_realtime_contact_analysis_segments
