% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_delete_volume}
\alias{storagegateway_delete_volume}
\title{Deletes the specified storage volume that you previously created using
the CreateCachediSCSIVolume or CreateStorediSCSIVolume API}
\usage{
storagegateway_delete_volume(VolumeARN)
}
\arguments{
\item{VolumeARN}{[required] The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
operation to return a list of gateway volumes.}
}
\description{
Deletes the specified storage volume that you previously created using
the CreateCachediSCSIVolume or CreateStorediSCSIVolume API. This
operation is only supported in the cached volume and stored volume
types. For stored volume gateways, the local disk that was configured as
the storage volume is not deleted. You can reuse the local disk to
create another storage volume.
}
\details{
Before you delete a volume, make sure there are no iSCSI connections to
the volume you are deleting. You should also make sure there is no
snapshot in progress. You can use the Amazon Elastic Compute Cloud
(Amazon EC2) API to query snapshots on the volume you are deleting and
check the snapshot status. For more information, go to
\href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html}{DescribeSnapshots}
in the \emph{Amazon Elastic Compute Cloud API Reference}.

In the request, you must provide the Amazon Resource Name (ARN) of the
storage volume you want to delete.
}
\section{Request syntax}{
\preformatted{svc$delete_volume(
  VolumeARN = "string"
)
}
}

\examples{
# Deletes the specified gateway volume that you previously created using
# the CreateCachediSCSIVolume or CreateStorediSCSIVolume API.
\donttest{svc$delete_volume(
  VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol..."
)}

}
\keyword{internal}