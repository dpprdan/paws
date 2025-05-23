% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfrontkeyvaluestore_operations.R
\name{cloudfrontkeyvaluestore_put_key}
\alias{cloudfrontkeyvaluestore_put_key}
\title{Creates a new key value pair or replaces the value of an existing key}
\usage{
cloudfrontkeyvaluestore_put_key(Key, Value, KvsARN, IfMatch)
}
\arguments{
\item{Key}{[required] The key to put.}

\item{Value}{[required] The value to put.}

\item{KvsARN}{[required] The Amazon Resource Name (ARN) of the Key Value Store.}

\item{IfMatch}{[required] The current version (ETag) of the Key Value Store that you are putting
keys into, which you can get using DescribeKeyValueStore.}
}
\description{
Creates a new key value pair or replaces the value of an existing key.

See \url{https://www.paws-r-sdk.com/docs/cloudfrontkeyvaluestore_put_key/} for full documentation.
}
\keyword{internal}
