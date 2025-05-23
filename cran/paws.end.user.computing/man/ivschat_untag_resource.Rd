% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivschat_operations.R
\name{ivschat_untag_resource}
\alias{ivschat_untag_resource}
\title{Removes tags from the resource with the specified ARN}
\usage{
ivschat_untag_resource(resourceArn, tagKeys)
}
\arguments{
\item{resourceArn}{[required] The ARN of the resource to be untagged. The ARN must be URL-encoded.}

\item{tagKeys}{[required] Array of tags to be removed. Array of maps, each of the form
\code{string:string (key:value)}. See \href{https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html}{Best practices and strategies}
in \emph{Tagging Amazon Web Services Resources and Tag Editor} for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS Chat has no constraints beyond what is
documented there.}
}
\description{
Removes tags from the resource with the specified ARN.

See \url{https://www.paws-r-sdk.com/docs/ivschat_untag_resource/} for full documentation.
}
\keyword{internal}
