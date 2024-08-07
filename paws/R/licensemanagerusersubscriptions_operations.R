# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include licensemanagerusersubscriptions_service.R
NULL

#' Associates the user to an EC2 instance to utilize user-based
#' subscriptions
#'
#' @description
#' Associates the user to an EC2 instance to utilize user-based
#' subscriptions.
#' 
#' Your estimated bill for charges on the number of users and related costs
#' will take 48 hours to appear for billing periods that haven't closed
#' (marked as **Pending** billing status) in Amazon Web Services Billing.
#' For more information, see [Viewing your monthly
#' charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/getting-viewing-bill.html)
#' in the *Amazon Web Services Billing User Guide*.
#'
#' @usage
#' licensemanagerusersubscriptions_associate_user(Domain, IdentityProvider,
#'   InstanceId, Username)
#'
#' @param Domain The domain name of the user.
#' @param IdentityProvider &#91;required&#93; The identity provider of the user.
#' @param InstanceId &#91;required&#93; The ID of the EC2 instance, which provides user-based subscriptions.
#' @param Username &#91;required&#93; The user name from the identity provider for the user.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   InstanceUserSummary = list(
#'     AssociationDate = "string",
#'     DisassociationDate = "string",
#'     Domain = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     InstanceId = "string",
#'     Status = "string",
#'     StatusMessage = "string",
#'     Username = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$associate_user(
#'   Domain = "string",
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   InstanceId = "string",
#'   Username = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_associate_user
#'
#' @aliases licensemanagerusersubscriptions_associate_user
licensemanagerusersubscriptions_associate_user <- function(Domain = NULL, IdentityProvider, InstanceId, Username) {
  op <- new_operation(
    name = "AssociateUser",
    http_method = "POST",
    http_path = "/user/AssociateUser",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$associate_user_input(Domain = Domain, IdentityProvider = IdentityProvider, InstanceId = InstanceId, Username = Username)
  output <- .licensemanagerusersubscriptions$associate_user_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$associate_user <- licensemanagerusersubscriptions_associate_user

#' Deregisters the identity provider from providing user-based
#' subscriptions
#'
#' @description
#' Deregisters the identity provider from providing user-based
#' subscriptions.
#'
#' @usage
#' licensemanagerusersubscriptions_deregister_identity_provider(
#'   IdentityProvider, Product)
#'
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param Product &#91;required&#93; The name of the user-based subscription product.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   IdentityProviderSummary = list(
#'     FailureMessage = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     Product = "string",
#'     Settings = list(
#'       SecurityGroupId = "string",
#'       Subnets = list(
#'         "string"
#'       )
#'     ),
#'     Status = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$deregister_identity_provider(
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   Product = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_deregister_identity_provider
#'
#' @aliases licensemanagerusersubscriptions_deregister_identity_provider
licensemanagerusersubscriptions_deregister_identity_provider <- function(IdentityProvider, Product) {
  op <- new_operation(
    name = "DeregisterIdentityProvider",
    http_method = "POST",
    http_path = "/identity-provider/DeregisterIdentityProvider",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$deregister_identity_provider_input(IdentityProvider = IdentityProvider, Product = Product)
  output <- .licensemanagerusersubscriptions$deregister_identity_provider_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$deregister_identity_provider <- licensemanagerusersubscriptions_deregister_identity_provider

#' Disassociates the user from an EC2 instance providing user-based
#' subscriptions
#'
#' @description
#' Disassociates the user from an EC2 instance providing user-based
#' subscriptions.
#'
#' @usage
#' licensemanagerusersubscriptions_disassociate_user(Domain,
#'   IdentityProvider, InstanceId, Username)
#'
#' @param Domain The domain name of the user.
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param InstanceId &#91;required&#93; The ID of the EC2 instance, which provides user-based subscriptions.
#' @param Username &#91;required&#93; The user name from the identity provider for the user.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   InstanceUserSummary = list(
#'     AssociationDate = "string",
#'     DisassociationDate = "string",
#'     Domain = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     InstanceId = "string",
#'     Status = "string",
#'     StatusMessage = "string",
#'     Username = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$disassociate_user(
#'   Domain = "string",
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   InstanceId = "string",
#'   Username = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_disassociate_user
#'
#' @aliases licensemanagerusersubscriptions_disassociate_user
licensemanagerusersubscriptions_disassociate_user <- function(Domain = NULL, IdentityProvider, InstanceId, Username) {
  op <- new_operation(
    name = "DisassociateUser",
    http_method = "POST",
    http_path = "/user/DisassociateUser",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$disassociate_user_input(Domain = Domain, IdentityProvider = IdentityProvider, InstanceId = InstanceId, Username = Username)
  output <- .licensemanagerusersubscriptions$disassociate_user_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$disassociate_user <- licensemanagerusersubscriptions_disassociate_user

#' Lists the identity providers for user-based subscriptions
#'
#' @description
#' Lists the identity providers for user-based subscriptions.
#'
#' @usage
#' licensemanagerusersubscriptions_list_identity_providers(MaxResults,
#'   NextToken)
#'
#' @param MaxResults Maximum number of results to return in a single call.
#' @param NextToken Token for the next set of results.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   IdentityProviderSummaries = list(
#'     list(
#'       FailureMessage = "string",
#'       IdentityProvider = list(
#'         ActiveDirectoryIdentityProvider = list(
#'           DirectoryId = "string"
#'         )
#'       ),
#'       Product = "string",
#'       Settings = list(
#'         SecurityGroupId = "string",
#'         Subnets = list(
#'           "string"
#'         )
#'       ),
#'       Status = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_identity_providers(
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_list_identity_providers
#'
#' @aliases licensemanagerusersubscriptions_list_identity_providers
licensemanagerusersubscriptions_list_identity_providers <- function(MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListIdentityProviders",
    http_method = "POST",
    http_path = "/identity-provider/ListIdentityProviders",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "IdentityProviderSummaries")
  )
  input <- .licensemanagerusersubscriptions$list_identity_providers_input(MaxResults = MaxResults, NextToken = NextToken)
  output <- .licensemanagerusersubscriptions$list_identity_providers_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$list_identity_providers <- licensemanagerusersubscriptions_list_identity_providers

#' Lists the EC2 instances providing user-based subscriptions
#'
#' @description
#' Lists the EC2 instances providing user-based subscriptions.
#'
#' @usage
#' licensemanagerusersubscriptions_list_instances(Filters, MaxResults,
#'   NextToken)
#'
#' @param Filters An array of structures that you can use to filter the results to those
#' that match one or more sets of key-value pairs that you specify.
#' @param MaxResults Maximum number of results to return in a single call.
#' @param NextToken Token for the next set of results.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   InstanceSummaries = list(
#'     list(
#'       InstanceId = "string",
#'       LastStatusCheckDate = "string",
#'       Products = list(
#'         "string"
#'       ),
#'       Status = "string",
#'       StatusMessage = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_instances(
#'   Filters = list(
#'     list(
#'       Attribute = "string",
#'       Operation = "string",
#'       Value = "string"
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_list_instances
#'
#' @aliases licensemanagerusersubscriptions_list_instances
licensemanagerusersubscriptions_list_instances <- function(Filters = NULL, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListInstances",
    http_method = "POST",
    http_path = "/instance/ListInstances",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "InstanceSummaries")
  )
  input <- .licensemanagerusersubscriptions$list_instances_input(Filters = Filters, MaxResults = MaxResults, NextToken = NextToken)
  output <- .licensemanagerusersubscriptions$list_instances_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$list_instances <- licensemanagerusersubscriptions_list_instances

#' Lists the user-based subscription products available from an identity
#' provider
#'
#' @description
#' Lists the user-based subscription products available from an identity
#' provider.
#'
#' @usage
#' licensemanagerusersubscriptions_list_product_subscriptions(Filters,
#'   IdentityProvider, MaxResults, NextToken, Product)
#'
#' @param Filters An array of structures that you can use to filter the results to those
#' that match one or more sets of key-value pairs that you specify.
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param MaxResults Maximum number of results to return in a single call.
#' @param NextToken Token for the next set of results.
#' @param Product &#91;required&#93; The name of the user-based subscription product.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   NextToken = "string",
#'   ProductUserSummaries = list(
#'     list(
#'       Domain = "string",
#'       IdentityProvider = list(
#'         ActiveDirectoryIdentityProvider = list(
#'           DirectoryId = "string"
#'         )
#'       ),
#'       Product = "string",
#'       Status = "string",
#'       StatusMessage = "string",
#'       SubscriptionEndDate = "string",
#'       SubscriptionStartDate = "string",
#'       Username = "string"
#'     )
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_product_subscriptions(
#'   Filters = list(
#'     list(
#'       Attribute = "string",
#'       Operation = "string",
#'       Value = "string"
#'     )
#'   ),
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   MaxResults = 123,
#'   NextToken = "string",
#'   Product = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_list_product_subscriptions
#'
#' @aliases licensemanagerusersubscriptions_list_product_subscriptions
licensemanagerusersubscriptions_list_product_subscriptions <- function(Filters = NULL, IdentityProvider, MaxResults = NULL, NextToken = NULL, Product) {
  op <- new_operation(
    name = "ListProductSubscriptions",
    http_method = "POST",
    http_path = "/user/ListProductSubscriptions",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "ProductUserSummaries")
  )
  input <- .licensemanagerusersubscriptions$list_product_subscriptions_input(Filters = Filters, IdentityProvider = IdentityProvider, MaxResults = MaxResults, NextToken = NextToken, Product = Product)
  output <- .licensemanagerusersubscriptions$list_product_subscriptions_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$list_product_subscriptions <- licensemanagerusersubscriptions_list_product_subscriptions

#' Lists user associations for an identity provider
#'
#' @description
#' Lists user associations for an identity provider.
#'
#' @usage
#' licensemanagerusersubscriptions_list_user_associations(Filters,
#'   IdentityProvider, InstanceId, MaxResults, NextToken)
#'
#' @param Filters An array of structures that you can use to filter the results to those
#' that match one or more sets of key-value pairs that you specify.
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param InstanceId &#91;required&#93; The ID of the EC2 instance, which provides user-based subscriptions.
#' @param MaxResults Maximum number of results to return in a single call.
#' @param NextToken Token for the next set of results.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   InstanceUserSummaries = list(
#'     list(
#'       AssociationDate = "string",
#'       DisassociationDate = "string",
#'       Domain = "string",
#'       IdentityProvider = list(
#'         ActiveDirectoryIdentityProvider = list(
#'           DirectoryId = "string"
#'         )
#'       ),
#'       InstanceId = "string",
#'       Status = "string",
#'       StatusMessage = "string",
#'       Username = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_user_associations(
#'   Filters = list(
#'     list(
#'       Attribute = "string",
#'       Operation = "string",
#'       Value = "string"
#'     )
#'   ),
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   InstanceId = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_list_user_associations
#'
#' @aliases licensemanagerusersubscriptions_list_user_associations
licensemanagerusersubscriptions_list_user_associations <- function(Filters = NULL, IdentityProvider, InstanceId, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListUserAssociations",
    http_method = "POST",
    http_path = "/user/ListUserAssociations",
    host_prefix = "",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "InstanceUserSummaries")
  )
  input <- .licensemanagerusersubscriptions$list_user_associations_input(Filters = Filters, IdentityProvider = IdentityProvider, InstanceId = InstanceId, MaxResults = MaxResults, NextToken = NextToken)
  output <- .licensemanagerusersubscriptions$list_user_associations_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$list_user_associations <- licensemanagerusersubscriptions_list_user_associations

#' Registers an identity provider for user-based subscriptions
#'
#' @description
#' Registers an identity provider for user-based subscriptions.
#'
#' @usage
#' licensemanagerusersubscriptions_register_identity_provider(
#'   IdentityProvider, Product, Settings)
#'
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param Product &#91;required&#93; The name of the user-based subscription product.
#' @param Settings The registered identity provider’s product related configuration
#' settings such as the subnets to provision VPC endpoints.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   IdentityProviderSummary = list(
#'     FailureMessage = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     Product = "string",
#'     Settings = list(
#'       SecurityGroupId = "string",
#'       Subnets = list(
#'         "string"
#'       )
#'     ),
#'     Status = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$register_identity_provider(
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   Product = "string",
#'   Settings = list(
#'     SecurityGroupId = "string",
#'     Subnets = list(
#'       "string"
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_register_identity_provider
#'
#' @aliases licensemanagerusersubscriptions_register_identity_provider
licensemanagerusersubscriptions_register_identity_provider <- function(IdentityProvider, Product, Settings = NULL) {
  op <- new_operation(
    name = "RegisterIdentityProvider",
    http_method = "POST",
    http_path = "/identity-provider/RegisterIdentityProvider",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$register_identity_provider_input(IdentityProvider = IdentityProvider, Product = Product, Settings = Settings)
  output <- .licensemanagerusersubscriptions$register_identity_provider_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$register_identity_provider <- licensemanagerusersubscriptions_register_identity_provider

#' Starts a product subscription for a user with the specified identity
#' provider
#'
#' @description
#' Starts a product subscription for a user with the specified identity
#' provider.
#' 
#' Your estimated bill for charges on the number of users and related costs
#' will take 48 hours to appear for billing periods that haven't closed
#' (marked as **Pending** billing status) in Amazon Web Services Billing.
#' For more information, see [Viewing your monthly
#' charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/getting-viewing-bill.html)
#' in the *Amazon Web Services Billing User Guide*.
#'
#' @usage
#' licensemanagerusersubscriptions_start_product_subscription(Domain,
#'   IdentityProvider, Product, Username)
#'
#' @param Domain The domain name of the user.
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param Product &#91;required&#93; The name of the user-based subscription product.
#' @param Username &#91;required&#93; The user name from the identity provider of the user.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   ProductUserSummary = list(
#'     Domain = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     Product = "string",
#'     Status = "string",
#'     StatusMessage = "string",
#'     SubscriptionEndDate = "string",
#'     SubscriptionStartDate = "string",
#'     Username = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$start_product_subscription(
#'   Domain = "string",
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   Product = "string",
#'   Username = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_start_product_subscription
#'
#' @aliases licensemanagerusersubscriptions_start_product_subscription
licensemanagerusersubscriptions_start_product_subscription <- function(Domain = NULL, IdentityProvider, Product, Username) {
  op <- new_operation(
    name = "StartProductSubscription",
    http_method = "POST",
    http_path = "/user/StartProductSubscription",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$start_product_subscription_input(Domain = Domain, IdentityProvider = IdentityProvider, Product = Product, Username = Username)
  output <- .licensemanagerusersubscriptions$start_product_subscription_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$start_product_subscription <- licensemanagerusersubscriptions_start_product_subscription

#' Stops a product subscription for a user with the specified identity
#' provider
#'
#' @description
#' Stops a product subscription for a user with the specified identity
#' provider.
#'
#' @usage
#' licensemanagerusersubscriptions_stop_product_subscription(Domain,
#'   IdentityProvider, Product, Username)
#'
#' @param Domain The domain name of the user.
#' @param IdentityProvider &#91;required&#93; An object that specifies details for the identity provider.
#' @param Product &#91;required&#93; The name of the user-based subscription product.
#' @param Username &#91;required&#93; The user name from the identity provider for the user.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   ProductUserSummary = list(
#'     Domain = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     Product = "string",
#'     Status = "string",
#'     StatusMessage = "string",
#'     SubscriptionEndDate = "string",
#'     SubscriptionStartDate = "string",
#'     Username = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$stop_product_subscription(
#'   Domain = "string",
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   Product = "string",
#'   Username = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_stop_product_subscription
#'
#' @aliases licensemanagerusersubscriptions_stop_product_subscription
licensemanagerusersubscriptions_stop_product_subscription <- function(Domain = NULL, IdentityProvider, Product, Username) {
  op <- new_operation(
    name = "StopProductSubscription",
    http_method = "POST",
    http_path = "/user/StopProductSubscription",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$stop_product_subscription_input(Domain = Domain, IdentityProvider = IdentityProvider, Product = Product, Username = Username)
  output <- .licensemanagerusersubscriptions$stop_product_subscription_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$stop_product_subscription <- licensemanagerusersubscriptions_stop_product_subscription

#' Updates additional product configuration settings for the registered
#' identity provider
#'
#' @description
#' Updates additional product configuration settings for the registered
#' identity provider.
#'
#' @usage
#' licensemanagerusersubscriptions_update_identity_provider_settings(
#'   IdentityProvider, Product, UpdateSettings)
#'
#' @param IdentityProvider &#91;required&#93; 
#' @param Product &#91;required&#93; The name of the user-based subscription product.
#' @param UpdateSettings &#91;required&#93; Updates the registered identity provider’s product related configuration
#' settings. You can update any combination of settings in a single
#' operation such as the:
#' 
#' -   Subnets which you want to add to provision VPC endpoints.
#' 
#' -   Subnets which you want to remove the VPC endpoints from.
#' 
#' -   Security group ID which permits traffic to the VPC endpoints.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   IdentityProviderSummary = list(
#'     FailureMessage = "string",
#'     IdentityProvider = list(
#'       ActiveDirectoryIdentityProvider = list(
#'         DirectoryId = "string"
#'       )
#'     ),
#'     Product = "string",
#'     Settings = list(
#'       SecurityGroupId = "string",
#'       Subnets = list(
#'         "string"
#'       )
#'     ),
#'     Status = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$update_identity_provider_settings(
#'   IdentityProvider = list(
#'     ActiveDirectoryIdentityProvider = list(
#'       DirectoryId = "string"
#'     )
#'   ),
#'   Product = "string",
#'   UpdateSettings = list(
#'     AddSubnets = list(
#'       "string"
#'     ),
#'     RemoveSubnets = list(
#'       "string"
#'     ),
#'     SecurityGroupId = "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname licensemanagerusersubscriptions_upd_ide_pro_set
#'
#' @aliases licensemanagerusersubscriptions_update_identity_provider_settings
licensemanagerusersubscriptions_update_identity_provider_settings <- function(IdentityProvider, Product, UpdateSettings) {
  op <- new_operation(
    name = "UpdateIdentityProviderSettings",
    http_method = "POST",
    http_path = "/identity-provider/UpdateIdentityProviderSettings",
    host_prefix = "",
    paginator = list()
  )
  input <- .licensemanagerusersubscriptions$update_identity_provider_settings_input(IdentityProvider = IdentityProvider, Product = Product, UpdateSettings = UpdateSettings)
  output <- .licensemanagerusersubscriptions$update_identity_provider_settings_output()
  config <- get_config()
  svc <- .licensemanagerusersubscriptions$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.licensemanagerusersubscriptions$operations$update_identity_provider_settings <- licensemanagerusersubscriptions_update_identity_provider_settings
