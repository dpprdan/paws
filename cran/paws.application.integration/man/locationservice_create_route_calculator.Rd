% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locationservice_operations.R
\name{locationservice_create_route_calculator}
\alias{locationservice_create_route_calculator}
\title{Creates a route calculator resource in your Amazon Web Services account}
\usage{
locationservice_create_route_calculator(
  CalculatorName,
  DataSource,
  PricingPlan = NULL,
  Description = NULL,
  Tags = NULL
)
}
\arguments{
\item{CalculatorName}{[required] The name of the route calculator resource.

Requirements:
\itemize{
\item Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-),
periods (.), and underscores (_).
\item Must be a unique Route calculator resource name.
\item No spaces allowed. For example, \code{ExampleRouteCalculator}.
}}

\item{DataSource}{[required] Specifies the data provider of traffic and road network data.

This field is case-sensitive. Enter the valid values as shown. For
example, entering \code{HERE} returns an error.

Valid values include:
\itemize{
\item \code{Esri} – For additional information about
\href{https://docs.aws.amazon.com/location/latest/developerguide/}{Esri}'s
coverage in your region of interest, see \href{https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm}{Esri details on street networks and traffic coverage}.

Route calculators that use Esri as a data source only calculate
routes that are shorter than 400 km.
\item \code{Grab} – Grab provides routing functionality for Southeast Asia. For
additional information about
\href{https://docs.aws.amazon.com/location/latest/developerguide/}{GrabMaps}'
coverage, see \href{https://docs.aws.amazon.com/location/latest/developerguide/#grab-coverage-area}{GrabMaps countries and areas covered}.
\item \code{Here} – For additional information about \href{https://docs.aws.amazon.com/location/latest/developerguide/}{HERE Technologies}'
coverage in your region of interest, see \href{https://www.here.com/docs/}{HERE car routing coverage} and \href{https://www.here.com/docs/}{HERE truck routing coverage}.
}

For additional information , see \href{https://docs.aws.amazon.com/location/latest/developerguide/}{Data providers}
on the \emph{Amazon Location Service Developer Guide}.}

\item{PricingPlan}{No longer used. If included, the only allowed value is
\code{RequestBasedUsage}.}

\item{Description}{The optional description for the route calculator resource.}

\item{Tags}{Applies one or more tags to the route calculator resource. A tag is a
key-value pair helps manage, identify, search, and filter your resources
by labelling them.
\itemize{
\item For example: \{ \code{"tag1" : "value1"}, \code{"tag2" : "value2"}\}
}

Format: \code{"key" : "value"}

Restrictions:
\itemize{
\item Maximum 50 tags per resource
\item Each resource tag must be unique with a maximum of one value.
\item Maximum key length: 128 Unicode characters in UTF-8
\item Maximum value length: 256 Unicode characters in UTF-8
\item Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
characters: + - = . _ : / @.
\item Cannot use "aws:" as a prefix for a key.
}}
}
\description{
Creates a route calculator resource in your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/locationservice_create_route_calculator/} for full documentation.
}
\keyword{internal}
