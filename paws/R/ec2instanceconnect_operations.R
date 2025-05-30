# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include ec2instanceconnect_service.R
NULL

#' Pushes an SSH public key to the specified EC2 instance for use by the
#' specified user
#'
#' @description
#' Pushes an SSH public key to the specified EC2 instance for use by the
#' specified user. The key remains for 60 seconds. For more information,
#' see [Connect to your Linux instance using EC2 Instance
#' Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-eic.html)
#' in the *Amazon EC2 User Guide*.
#'
#' @usage
#' ec2instanceconnect_send_ssh_public_key(InstanceId, InstanceOSUser,
#'   SSHPublicKey, AvailabilityZone)
#'
#' @param InstanceId &#91;required&#93; The ID of the EC2 instance.
#' @param InstanceOSUser &#91;required&#93; The OS user on the EC2 instance for whom the key can be used to
#' authenticate.
#' @param SSHPublicKey &#91;required&#93; The public key material. To use the public key, you must have the
#' matching private key.
#' @param AvailabilityZone The Availability Zone in which the EC2 instance was launched.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   RequestId = "string",
#'   Success = TRUE|FALSE
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$send_ssh_public_key(
#'   InstanceId = "string",
#'   InstanceOSUser = "string",
#'   SSHPublicKey = "string",
#'   AvailabilityZone = "string"
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' # The following example pushes a sample SSH public key to the EC2 instance
#' # i-abcd1234 in AZ us-west-2b for use by the instance OS user ec2-user.
#' svc$send_ssh_public_key(
#'   AvailabilityZone = "us-west-2a",
#'   InstanceId = "i-abcd1234",
#'   InstanceOSUser = "ec2-user",
#'   SSHPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3FlHqj2eqCdrGHuA6d..."
#' )
#' }
#'
#' @keywords internal
#'
#' @rdname ec2instanceconnect_send_ssh_public_key
#'
#' @aliases ec2instanceconnect_send_ssh_public_key
ec2instanceconnect_send_ssh_public_key <- function(InstanceId, InstanceOSUser, SSHPublicKey, AvailabilityZone = NULL) {
  op <- new_operation(
    name = "SendSSHPublicKey",
    http_method = "POST",
    http_path = "/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ec2instanceconnect$send_ssh_public_key_input(InstanceId = InstanceId, InstanceOSUser = InstanceOSUser, SSHPublicKey = SSHPublicKey, AvailabilityZone = AvailabilityZone)
  output <- .ec2instanceconnect$send_ssh_public_key_output()
  config <- get_config()
  svc <- .ec2instanceconnect$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ec2instanceconnect$operations$send_ssh_public_key <- ec2instanceconnect_send_ssh_public_key

#' Pushes an SSH public key to the specified EC2 instance
#'
#' @description
#' Pushes an SSH public key to the specified EC2 instance. The key remains
#' for 60 seconds, which gives you 60 seconds to establish a serial console
#' connection to the instance using SSH. For more information, see [EC2
#' Serial
#' Console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html)
#' in the *Amazon EC2 User Guide*.
#'
#' @usage
#' ec2instanceconnect_send_serial_console_ssh_public_key(InstanceId,
#'   SerialPort, SSHPublicKey)
#'
#' @param InstanceId &#91;required&#93; The ID of the EC2 instance.
#' @param SerialPort The serial port of the EC2 instance. Currently only port 0 is supported.
#' 
#' Default: 0
#' @param SSHPublicKey &#91;required&#93; The public key material. To use the public key, you must have the
#' matching private key. For information about the supported key formats
#' and lengths, see [Requirements for key
#' pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws)
#' in the *Amazon EC2 User Guide*.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   RequestId = "string",
#'   Success = TRUE|FALSE
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$send_serial_console_ssh_public_key(
#'   InstanceId = "string",
#'   SerialPort = 123,
#'   SSHPublicKey = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname ec2instanceconnect_send_serial_console_ssh_public_key
#'
#' @aliases ec2instanceconnect_send_serial_console_ssh_public_key
ec2instanceconnect_send_serial_console_ssh_public_key <- function(InstanceId, SerialPort = NULL, SSHPublicKey) {
  op <- new_operation(
    name = "SendSerialConsoleSSHPublicKey",
    http_method = "POST",
    http_path = "/",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .ec2instanceconnect$send_serial_console_ssh_public_key_input(InstanceId = InstanceId, SerialPort = SerialPort, SSHPublicKey = SSHPublicKey)
  output <- .ec2instanceconnect$send_serial_console_ssh_public_key_output()
  config <- get_config()
  svc <- .ec2instanceconnect$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.ec2instanceconnect$operations$send_serial_console_ssh_public_key <- ec2instanceconnect_send_serial_console_ssh_public_key
