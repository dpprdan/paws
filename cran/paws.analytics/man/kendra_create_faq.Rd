% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendra_operations.R
\name{kendra_create_faq}
\alias{kendra_create_faq}
\title{Creates a set of frequently ask questions (FAQs) using a specified FAQ
file stored in an Amazon S3 bucket}
\usage{
kendra_create_faq(
  IndexId,
  Name,
  Description = NULL,
  S3Path,
  RoleArn,
  Tags = NULL,
  FileFormat = NULL,
  ClientToken = NULL,
  LanguageCode = NULL
)
}
\arguments{
\item{IndexId}{[required] The identifier of the index for the FAQ.}

\item{Name}{[required] A name for the FAQ.}

\item{Description}{A description for the FAQ.}

\item{S3Path}{[required] The path to the FAQ file in S3.}

\item{RoleArn}{[required] The Amazon Resource Name (ARN) of an IAM role with permission to access
the S3 bucket that contains the FAQ file. For more information, see \href{https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html}{IAM access roles for Amazon Kendra}.}

\item{Tags}{A list of key-value pairs that identify the FAQ. You can use the tags to
identify and organize your resources and to control access to resources.}

\item{FileFormat}{The format of the FAQ input file. You can choose between a basic CSV
format, a CSV format that includes customs attributes in a header, and a
JSON format that includes custom attributes.

The default format is CSV.

The format must match the format of the file stored in the S3 bucket
identified in the \code{S3Path} parameter.

For more information, see \href{https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html}{Adding questions and answers}.}

\item{ClientToken}{A token that you provide to identify the request to create a FAQ.
Multiple calls to the \code{CreateFaqRequest} API with the same client token
will create only one FAQ.}

\item{LanguageCode}{The code for a language. This allows you to support a language for the
FAQ document. English is supported by default. For more information on
supported languages, including their codes, see \href{https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html}{Adding documents in languages other than English}.}
}
\description{
Creates a set of frequently ask questions (FAQs) using a specified FAQ file stored in an Amazon S3 bucket.

See \url{https://www.paws-r-sdk.com/docs/kendra_create_faq/} for full documentation.
}
\keyword{internal}
