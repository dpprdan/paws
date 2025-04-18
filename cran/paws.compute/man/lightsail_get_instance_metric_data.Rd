% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_instance_metric_data}
\alias{lightsail_get_instance_metric_data}
\title{Returns the data points for the specified Amazon Lightsail instance
metric, given an instance name}
\usage{
lightsail_get_instance_metric_data(
  instanceName,
  metricName,
  period,
  startTime,
  endTime,
  unit,
  statistics
)
}
\arguments{
\item{instanceName}{[required] The name of the instance for which you want to get metrics data.}

\item{metricName}{[required] The metric for which you want to return information.

Valid instance metric names are listed below, along with the most useful
\code{statistics} to include in your request, and the published \code{unit} value.
\itemize{
\item \strong{\code{BurstCapacityPercentage}} - The percentage of CPU performance
available for your instance to burst above its baseline. Your
instance continuously accrues and consumes burst capacity. Burst
capacity stops accruing when your instance's
\code{BurstCapacityPercentage} reaches 100\%. For more information, see
\href{https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity.html}{Viewing instance burst capacity in Amazon Lightsail}.

\code{Statistics}: The most useful statistics are \code{Maximum} and
\code{Average}.

\code{Unit}: The published unit is \code{Percent}.
\item \strong{\code{BurstCapacityTime}} - The available amount of time for your
instance to burst at 100\% CPU utilization. Your instance
continuously accrues and consumes burst capacity. Burst capacity
time stops accruing when your instance's \code{BurstCapacityPercentage}
metric reaches 100\%.

Burst capacity time is consumed at the full rate only when your
instance operates at 100\% CPU utilization. For example, if your
instance operates at 50\% CPU utilization in the burstable zone for a
5-minute period, then it consumes CPU burst capacity minutes at a
50\% rate in that period. Your instance consumed 2 minutes and 30
seconds of CPU burst capacity minutes in the 5-minute period. For
more information, see \href{https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-viewing-instance-burst-capacity.html}{Viewing instance burst capacity in Amazon Lightsail}.

\code{Statistics}: The most useful statistics are \code{Maximum} and
\code{Average}.

\code{Unit}: The published unit is \code{Seconds}.
\item \strong{\code{CPUUtilization}} - The percentage of allocated compute units
that are currently in use on the instance. This metric identifies
the processing power to run the applications on the instance. Tools
in your operating system can show a lower percentage than Lightsail
when the instance is not allocated a full processor core.

\code{Statistics}: The most useful statistics are \code{Maximum} and
\code{Average}.

\code{Unit}: The published unit is \code{Percent}.
\item \strong{\code{NetworkIn}} - The number of bytes received on all network
interfaces by the instance. This metric identifies the volume of
incoming network traffic to the instance. The number reported is the
number of bytes received during the period. Because this metric is
reported in 5-minute intervals, divide the reported number by 300 to
find Bytes/second.

\code{Statistics}: The most useful statistic is \code{Sum}.

\code{Unit}: The published unit is \code{Bytes}.
\item \strong{\code{NetworkOut}} - The number of bytes sent out on all network
interfaces by the instance. This metric identifies the volume of
outgoing network traffic from the instance. The number reported is
the number of bytes sent during the period. Because this metric is
reported in 5-minute intervals, divide the reported number by 300 to
find Bytes/second.

\code{Statistics}: The most useful statistic is \code{Sum}.

\code{Unit}: The published unit is \code{Bytes}.
\item \strong{\code{StatusCheckFailed}} - Reports whether the instance passed or
failed both the instance status check and the system status check.
This metric can be either 0 (passed) or 1 (failed). This metric data
is available in 1-minute (60 seconds) granularity.

\code{Statistics}: The most useful statistic is \code{Sum}.

\code{Unit}: The published unit is \code{Count}.
\item \strong{\code{StatusCheckFailed_Instance}} - Reports whether the instance
passed or failed the instance status check. This metric can be
either 0 (passed) or 1 (failed). This metric data is available in
1-minute (60 seconds) granularity.

\code{Statistics}: The most useful statistic is \code{Sum}.

\code{Unit}: The published unit is \code{Count}.
\item \strong{\code{StatusCheckFailed_System}} - Reports whether the instance passed
or failed the system status check. This metric can be either 0
(passed) or 1 (failed). This metric data is available in 1-minute
(60 seconds) granularity.

\code{Statistics}: The most useful statistic is \code{Sum}.

\code{Unit}: The published unit is \code{Count}.
\item \strong{\code{MetadataNoToken}} - Reports the number of times that the
instance metadata service was successfully accessed without a token.
This metric determines if there are any processes accessing instance
metadata by using Instance Metadata Service Version 1, which doesn't
use a token. If all requests use token-backed sessions, such as
Instance Metadata Service Version 2, then the value is 0.

\code{Statistics}: The most useful statistic is \code{Sum}.

\code{Unit}: The published unit is \code{Count}.
}}

\item{period}{[required] The granularity, in seconds, of the returned data points.

The \code{StatusCheckFailed}, \code{StatusCheckFailed_Instance}, and
\code{StatusCheckFailed_System} instance metric data is available in 1-minute
(60 seconds) granularity. All other instance metric data is available in
5-minute (300 seconds) granularity.}

\item{startTime}{[required] The start time of the time period.}

\item{endTime}{[required] The end time of the time period.}

\item{unit}{[required] The unit for the metric data request. Valid units depend on the metric
data being requested. For the valid units to specify with each available
metric, see the \code{metricName} parameter.}

\item{statistics}{[required] The statistic for the metric.

The following statistics are available:
\itemize{
\item \code{Minimum} - The lowest value observed during the specified period.
Use this value to determine low volumes of activity for your
application.
\item \code{Maximum} - The highest value observed during the specified period.
Use this value to determine high volumes of activity for your
application.
\item \code{Sum} - All values submitted for the matching metric added together.
You can use this statistic to determine the total volume of a
metric.
\item \code{Average} - The value of Sum / SampleCount during the specified
period. By comparing this statistic with the Minimum and Maximum
values, you can determine the full scope of a metric and how close
the average use is to the Minimum and Maximum values. This
comparison helps you to know when to increase or decrease your
resources.
\item \code{SampleCount} - The count, or number, of data points used for the
statistical calculation.
}}
}
\description{
Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.

See \url{https://www.paws-r-sdk.com/docs/lightsail_get_instance_metric_data/} for full documentation.
}
\keyword{internal}
