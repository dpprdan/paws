% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelbuildingservice_operations.R
\name{lexmodelbuildingservice_put_slot_type}
\alias{lexmodelbuildingservice_put_slot_type}
\title{Creates a custom slot type or replaces an existing custom slot type}
\usage{
lexmodelbuildingservice_put_slot_type(
  name,
  description = NULL,
  enumerationValues = NULL,
  checksum = NULL,
  valueSelectionStrategy = NULL,
  createVersion = NULL,
  parentSlotTypeSignature = NULL,
  slotTypeConfigurations = NULL
)
}
\arguments{
\item{name}{[required] The name of the slot type. The name is \emph{not} case sensitive.

The name can't match a built-in slot type name, or a built-in slot type
name with "AMAZON." removed. For example, because there is a built-in
slot type called \code{AMAZON.DATE}, you can't create a custom slot type
called \code{DATE}.

For a list of built-in slot types, see Slot Type Reference in the \emph{Alexa
Skills Kit}.}

\item{description}{A description of the slot type.}

\item{enumerationValues}{A list of \code{EnumerationValue} objects that defines the values that the
slot type can take. Each value can have a list of \code{synonyms}, which are
additional values that help train the machine learning model about the
values that it resolves for a slot.

A regular expression slot type doesn't require enumeration values. All
other slot types require a list of enumeration values.

When Amazon Lex resolves a slot value, it generates a resolution list
that contains up to five possible values for the slot. If you are using
a Lambda function, this resolution list is passed to the function. If
you are not using a Lambda function you can choose to return the value
that the user entered or the first value in the resolution list as the
slot value. The \code{valueSelectionStrategy} field indicates the option to
use.}

\item{checksum}{Identifies a specific revision of the \verb{$LATEST} version.

When you create a new slot type, leave the \code{checksum} field blank. If
you specify a checksum you get a \code{BadRequestException} exception.

When you want to update a slot type, set the \code{checksum} field to the
checksum of the most recent revision of the \verb{$LATEST} version. If you
don't specify the \code{ checksum} field, or if the checksum does not match
the \verb{$LATEST} version, you get a \code{PreconditionFailedException}
exception.}

\item{valueSelectionStrategy}{Determines the slot resolution strategy that Amazon Lex uses to return
slot type values. The field can be set to one of the following values:
\itemize{
\item \code{ORIGINAL_VALUE} - Returns the value entered by the user, if the
user value is similar to the slot value.
\item \code{TOP_RESOLUTION} - If there is a resolution list for the slot,
return the first value in the resolution list as the slot type
value. If there is no resolution list, null is returned.
}

If you don't specify the \code{valueSelectionStrategy}, the default is
\code{ORIGINAL_VALUE}.}

\item{createVersion}{When set to \code{true} a new numbered version of the slot type is created.
This is the same as calling the
\code{\link[=lexmodelbuildingservice_create_slot_type_version]{create_slot_type_version}}
operation. If you do not specify \code{createVersion}, the default is
\code{false}.}

\item{parentSlotTypeSignature}{The built-in slot type used as the parent of the slot type. When you
define a parent slot type, the new slot type has all of the same
configuration as the parent.

Only \code{AMAZON.AlphaNumeric} is supported.}

\item{slotTypeConfigurations}{Configuration information that extends the parent built-in slot type.
The configuration is added to the settings for the parent slot type.}
}
\description{
Creates a custom slot type or replaces an existing custom slot type.

See \url{https://www.paws-r-sdk.com/docs/lexmodelbuildingservice_put_slot_type/} for full documentation.
}
\keyword{internal}
