# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include paymentcryptographydataplane_service.R
NULL

#' Decrypts ciphertext data to plaintext using a symmetric (TDES, AES),
#' asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme
#'
#' @description
#' Decrypts ciphertext data to plaintext using a symmetric (TDES, AES), asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme. For more information, see [Decrypt data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/decrypt-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_decrypt_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_decrypt_data/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the encryption key that Amazon Web Services Payment
#' Cryptography uses for ciphertext decryption.
#' 
#' When a WrappedKeyBlock is provided, this value will be the identifier to
#' the key wrapping key. Otherwise, it is the key identifier used to
#' perform the operation.
#' @param CipherText &#91;required&#93; The ciphertext to decrypt.
#' @param DecryptionAttributes &#91;required&#93; The encryption key type and attributes for ciphertext decryption.
#' @param WrappedKey The WrappedKeyBlock containing the encryption key for ciphertext
#' decryption.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_decrypt_data
paymentcryptographydataplane_decrypt_data <- function(KeyIdentifier, CipherText, DecryptionAttributes, WrappedKey = NULL) {
  op <- new_operation(
    name = "DecryptData",
    http_method = "POST",
    http_path = "/keys/{KeyIdentifier}/decrypt",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$decrypt_data_input(KeyIdentifier = KeyIdentifier, CipherText = CipherText, DecryptionAttributes = DecryptionAttributes, WrappedKey = WrappedKey)
  output <- .paymentcryptographydataplane$decrypt_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$decrypt_data <- paymentcryptographydataplane_decrypt_data

#' Encrypts plaintext data to ciphertext using a symmetric (TDES, AES),
#' asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme
#'
#' @description
#' Encrypts plaintext data to ciphertext using a symmetric (TDES, AES), asymmetric (RSA), or derived (DUKPT or EMV) encryption key scheme. For more information, see [Encrypt data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_encrypt_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_encrypt_data/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the encryption key that Amazon Web Services Payment
#' Cryptography uses for plaintext encryption.
#' 
#' When a WrappedKeyBlock is provided, this value will be the identifier to
#' the key wrapping key. Otherwise, it is the key identifier used to
#' perform the operation.
#' @param PlainText &#91;required&#93; The plaintext to be encrypted.
#' 
#' For encryption using asymmetric keys, plaintext data length is
#' constrained by encryption key strength that you define in `KeyAlgorithm`
#' and padding type that you define in `AsymmetricEncryptionAttributes`.
#' For more information, see [Encrypt
#' data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/encrypt-data.html)
#' in the *Amazon Web Services Payment Cryptography User Guide*.
#' @param EncryptionAttributes &#91;required&#93; The encryption key type and attributes for plaintext encryption.
#' @param WrappedKey The WrappedKeyBlock containing the encryption key for plaintext
#' encryption.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_encrypt_data
paymentcryptographydataplane_encrypt_data <- function(KeyIdentifier, PlainText, EncryptionAttributes, WrappedKey = NULL) {
  op <- new_operation(
    name = "EncryptData",
    http_method = "POST",
    http_path = "/keys/{KeyIdentifier}/encrypt",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$encrypt_data_input(KeyIdentifier = KeyIdentifier, PlainText = PlainText, EncryptionAttributes = EncryptionAttributes, WrappedKey = WrappedKey)
  output <- .paymentcryptographydataplane$encrypt_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$encrypt_data <- paymentcryptographydataplane_encrypt_data

#' Generates card-related validation data using algorithms such as Card
#' Verification Values (CVV/CVV2), Dynamic Card Verification Values
#' (dCVV/dCVV2), or Card Security Codes (CSC)
#'
#' @description
#' Generates card-related validation data using algorithms such as Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or Card Security Codes (CSC). For more information, see [Generate card data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-card-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_card_validation_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_card_validation_data/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the CVK encryption key that Amazon Web Services Payment
#' Cryptography uses to generate card data.
#' @param PrimaryAccountNumber &#91;required&#93; The Primary Account Number (PAN), a unique identifier for a payment
#' credit or debit card that associates the card with a specific account
#' holder.
#' @param GenerationAttributes &#91;required&#93; The algorithm for generating CVV or CSC values for the card within
#' Amazon Web Services Payment Cryptography.
#' @param ValidationDataLength The length of the CVV or CSC to be generated. The default value is 3.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_generate_card_validation_data
paymentcryptographydataplane_generate_card_validation_data <- function(KeyIdentifier, PrimaryAccountNumber, GenerationAttributes, ValidationDataLength = NULL) {
  op <- new_operation(
    name = "GenerateCardValidationData",
    http_method = "POST",
    http_path = "/cardvalidationdata/generate",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$generate_card_validation_data_input(KeyIdentifier = KeyIdentifier, PrimaryAccountNumber = PrimaryAccountNumber, GenerationAttributes = GenerationAttributes, ValidationDataLength = ValidationDataLength)
  output <- .paymentcryptographydataplane$generate_card_validation_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$generate_card_validation_data <- paymentcryptographydataplane_generate_card_validation_data

#' Generates a Message Authentication Code (MAC) cryptogram within Amazon
#' Web Services Payment Cryptography
#'
#' @description
#' Generates a Message Authentication Code (MAC) cryptogram within Amazon Web Services Payment Cryptography.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_mac/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_mac/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the MAC generation encryption key.
#' @param MessageData &#91;required&#93; The data for which a MAC is under generation. This value must be
#' hexBinary.
#' @param GenerationAttributes &#91;required&#93; The attributes and data values to use for MAC generation within Amazon
#' Web Services Payment Cryptography.
#' @param MacLength The length of a MAC under generation.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_generate_mac
paymentcryptographydataplane_generate_mac <- function(KeyIdentifier, MessageData, GenerationAttributes, MacLength = NULL) {
  op <- new_operation(
    name = "GenerateMac",
    http_method = "POST",
    http_path = "/mac/generate",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$generate_mac_input(KeyIdentifier = KeyIdentifier, MessageData = MessageData, GenerationAttributes = GenerationAttributes, MacLength = MacLength)
  output <- .paymentcryptographydataplane$generate_mac_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$generate_mac <- paymentcryptographydataplane_generate_mac

#' Generates an issuer script mac for EMV payment cards that use offline
#' PINs as the cardholder verification method (CVM)
#'
#' @description
#' Generates an issuer script mac for EMV payment cards that use offline PINs as the cardholder verification method (CVM).
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_mac_emv_pin_change/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_mac_emv_pin_change/) for full documentation.
#'
#' @param NewPinPekIdentifier &#91;required&#93; The `keyARN` of the PEK protecting the incoming new encrypted PIN block.
#' @param NewEncryptedPinBlock &#91;required&#93; The incoming new encrypted PIN block data for offline pin change on an
#' EMV card.
#' @param PinBlockFormat &#91;required&#93; The PIN encoding format of the incoming new encrypted PIN block as
#' specified in ISO 9564.
#' @param SecureMessagingIntegrityKeyIdentifier &#91;required&#93; The `keyARN` of the issuer master key (IMK-SMI) used to authenticate the
#' issuer script response.
#' @param SecureMessagingConfidentialityKeyIdentifier &#91;required&#93; The `keyARN` of the issuer master key (IMK-SMC) used to protect the PIN
#' block data in the issuer script response.
#' @param MessageData &#91;required&#93; The message data is the APDU command from the card reader or terminal.
#' The target encrypted PIN block, after translation to ISO2 format, is
#' appended to this message data to generate an issuer script response.
#' @param DerivationMethodAttributes &#91;required&#93; The attributes and data values to derive payment card specific
#' confidentiality and integrity keys.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_generate_mac_emv_pin_change
paymentcryptographydataplane_generate_mac_emv_pin_change <- function(NewPinPekIdentifier, NewEncryptedPinBlock, PinBlockFormat, SecureMessagingIntegrityKeyIdentifier, SecureMessagingConfidentialityKeyIdentifier, MessageData, DerivationMethodAttributes) {
  op <- new_operation(
    name = "GenerateMacEmvPinChange",
    http_method = "POST",
    http_path = "/macemvpinchange/generate",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$generate_mac_emv_pin_change_input(NewPinPekIdentifier = NewPinPekIdentifier, NewEncryptedPinBlock = NewEncryptedPinBlock, PinBlockFormat = PinBlockFormat, SecureMessagingIntegrityKeyIdentifier = SecureMessagingIntegrityKeyIdentifier, SecureMessagingConfidentialityKeyIdentifier = SecureMessagingConfidentialityKeyIdentifier, MessageData = MessageData, DerivationMethodAttributes = DerivationMethodAttributes)
  output <- .paymentcryptographydataplane$generate_mac_emv_pin_change_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$generate_mac_emv_pin_change <- paymentcryptographydataplane_generate_mac_emv_pin_change

#' Generates pin-related data such as PIN, PIN Verification Value (PVV),
#' PIN Block, and PIN Offset during new card issuance or reissuance
#'
#' @description
#' Generates pin-related data such as PIN, PIN Verification Value (PVV), PIN Block, and PIN Offset during new card issuance or reissuance. For more information, see [Generate PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/generate-pin-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_pin_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_generate_pin_data/) for full documentation.
#'
#' @param GenerationKeyIdentifier &#91;required&#93; The `keyARN` of the PEK that Amazon Web Services Payment Cryptography
#' uses for pin data generation.
#' @param EncryptionKeyIdentifier &#91;required&#93; The `keyARN` of the PEK that Amazon Web Services Payment Cryptography
#' uses to encrypt the PIN Block. For ECDH, it is the `keyARN` of the
#' asymmetric ECC key.
#' @param GenerationAttributes &#91;required&#93; The attributes and values to use for PIN, PVV, or PIN Offset generation.
#' @param PinDataLength The length of PIN under generation.
#' @param PrimaryAccountNumber &#91;required&#93; The Primary Account Number (PAN), a unique identifier for a payment
#' credit or debit card that associates the card with a specific account
#' holder.
#' @param PinBlockFormat &#91;required&#93; The PIN encoding format for pin data generation as specified in ISO
#' 9564. Amazon Web Services Payment Cryptography supports `ISO_Format_0`
#' and `ISO_Format_3`.
#' 
#' The `ISO_Format_0` PIN block format is equivalent to the ANSI X9.8,
#' VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN block
#' format. It supports a PIN from 4 to 12 digits in length.
#' 
#' The `ISO_Format_3` PIN block format is the same as `ISO_Format_0` except
#' that the fill digits are random values from 10 to 15.
#' @param EncryptionWrappedKey 
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_generate_pin_data
paymentcryptographydataplane_generate_pin_data <- function(GenerationKeyIdentifier, EncryptionKeyIdentifier, GenerationAttributes, PinDataLength = NULL, PrimaryAccountNumber, PinBlockFormat, EncryptionWrappedKey = NULL) {
  op <- new_operation(
    name = "GeneratePinData",
    http_method = "POST",
    http_path = "/pindata/generate",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$generate_pin_data_input(GenerationKeyIdentifier = GenerationKeyIdentifier, EncryptionKeyIdentifier = EncryptionKeyIdentifier, GenerationAttributes = GenerationAttributes, PinDataLength = PinDataLength, PrimaryAccountNumber = PrimaryAccountNumber, PinBlockFormat = PinBlockFormat, EncryptionWrappedKey = EncryptionWrappedKey)
  output <- .paymentcryptographydataplane$generate_pin_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$generate_pin_data <- paymentcryptographydataplane_generate_pin_data

#' Re-encrypt ciphertext using DUKPT or Symmetric data encryption keys
#'
#' @description
#' Re-encrypt ciphertext using DUKPT or Symmetric data encryption keys.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_re_encrypt_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_re_encrypt_data/) for full documentation.
#'
#' @param IncomingKeyIdentifier &#91;required&#93; The `keyARN` of the encryption key of incoming ciphertext data.
#' 
#' When a WrappedKeyBlock is provided, this value will be the identifier to
#' the key wrapping key. Otherwise, it is the key identifier used to
#' perform the operation.
#' @param OutgoingKeyIdentifier &#91;required&#93; The `keyARN` of the encryption key of outgoing ciphertext data after
#' encryption by Amazon Web Services Payment Cryptography.
#' @param CipherText &#91;required&#93; Ciphertext to be encrypted. The minimum allowed length is 16 bytes and
#' maximum allowed length is 4096 bytes.
#' @param IncomingEncryptionAttributes &#91;required&#93; The attributes and values for incoming ciphertext.
#' @param OutgoingEncryptionAttributes &#91;required&#93; The attributes and values for outgoing ciphertext data after encryption
#' by Amazon Web Services Payment Cryptography.
#' @param IncomingWrappedKey The WrappedKeyBlock containing the encryption key of incoming ciphertext
#' data.
#' @param OutgoingWrappedKey The WrappedKeyBlock containing the encryption key of outgoing ciphertext
#' data after encryption by Amazon Web Services Payment Cryptography.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_re_encrypt_data
paymentcryptographydataplane_re_encrypt_data <- function(IncomingKeyIdentifier, OutgoingKeyIdentifier, CipherText, IncomingEncryptionAttributes, OutgoingEncryptionAttributes, IncomingWrappedKey = NULL, OutgoingWrappedKey = NULL) {
  op <- new_operation(
    name = "ReEncryptData",
    http_method = "POST",
    http_path = "/keys/{IncomingKeyIdentifier}/reencrypt",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$re_encrypt_data_input(IncomingKeyIdentifier = IncomingKeyIdentifier, OutgoingKeyIdentifier = OutgoingKeyIdentifier, CipherText = CipherText, IncomingEncryptionAttributes = IncomingEncryptionAttributes, OutgoingEncryptionAttributes = OutgoingEncryptionAttributes, IncomingWrappedKey = IncomingWrappedKey, OutgoingWrappedKey = OutgoingWrappedKey)
  output <- .paymentcryptographydataplane$re_encrypt_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$re_encrypt_data <- paymentcryptographydataplane_re_encrypt_data

#' Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4
#'
#' @description
#' Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4. For more information, see [Translate PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/translate-pin-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_translate_pin_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_translate_pin_data/) for full documentation.
#'
#' @param IncomingKeyIdentifier &#91;required&#93; The `keyARN` of the encryption key under which incoming PIN block data
#' is encrypted. This key type can be PEK or BDK.
#' 
#' For dynamic keys, it is the `keyARN` of KEK of the TR-31 wrapped PEK.
#' For ECDH, it is the `keyARN` of the asymmetric ECC key.
#' @param OutgoingKeyIdentifier &#91;required&#93; The `keyARN` of the encryption key for encrypting outgoing PIN block
#' data. This key type can be PEK or BDK.
#' 
#' For ECDH, it is the `keyARN` of the asymmetric ECC key.
#' @param IncomingTranslationAttributes &#91;required&#93; The format of the incoming PIN block data for translation within Amazon
#' Web Services Payment Cryptography.
#' @param OutgoingTranslationAttributes &#91;required&#93; The format of the outgoing PIN block data after translation by Amazon
#' Web Services Payment Cryptography.
#' @param EncryptedPinBlock &#91;required&#93; The encrypted PIN block data that Amazon Web Services Payment
#' Cryptography translates.
#' @param IncomingDukptAttributes The attributes and values to use for incoming DUKPT encryption key for
#' PIN block translation.
#' @param OutgoingDukptAttributes The attributes and values to use for outgoing DUKPT encryption key after
#' PIN block translation.
#' @param IncomingWrappedKey The WrappedKeyBlock containing the encryption key under which incoming
#' PIN block data is encrypted.
#' @param OutgoingWrappedKey The WrappedKeyBlock containing the encryption key for encrypting
#' outgoing PIN block data.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_translate_pin_data
paymentcryptographydataplane_translate_pin_data <- function(IncomingKeyIdentifier, OutgoingKeyIdentifier, IncomingTranslationAttributes, OutgoingTranslationAttributes, EncryptedPinBlock, IncomingDukptAttributes = NULL, OutgoingDukptAttributes = NULL, IncomingWrappedKey = NULL, OutgoingWrappedKey = NULL) {
  op <- new_operation(
    name = "TranslatePinData",
    http_method = "POST",
    http_path = "/pindata/translate",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$translate_pin_data_input(IncomingKeyIdentifier = IncomingKeyIdentifier, OutgoingKeyIdentifier = OutgoingKeyIdentifier, IncomingTranslationAttributes = IncomingTranslationAttributes, OutgoingTranslationAttributes = OutgoingTranslationAttributes, EncryptedPinBlock = EncryptedPinBlock, IncomingDukptAttributes = IncomingDukptAttributes, OutgoingDukptAttributes = OutgoingDukptAttributes, IncomingWrappedKey = IncomingWrappedKey, OutgoingWrappedKey = OutgoingWrappedKey)
  output <- .paymentcryptographydataplane$translate_pin_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$translate_pin_data <- paymentcryptographydataplane_translate_pin_data

#' Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment
#' card authorization
#'
#' @description
#' Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment card authorization. For more information, see [Verify auth request cryptogram](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.verifyauthrequestcryptogram.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_auth_request_cryptogram/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_auth_request_cryptogram/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the major encryption key that Amazon Web Services
#' Payment Cryptography uses for ARQC verification.
#' @param TransactionData &#91;required&#93; The transaction data that Amazon Web Services Payment Cryptography uses
#' for ARQC verification. The same transaction is used for ARQC generation
#' outside of Amazon Web Services Payment Cryptography.
#' @param AuthRequestCryptogram &#91;required&#93; The auth request cryptogram imported into Amazon Web Services Payment
#' Cryptography for ARQC verification using a major encryption key and
#' transaction data.
#' @param MajorKeyDerivationMode &#91;required&#93; The method to use when deriving the major encryption key for ARQC
#' verification within Amazon Web Services Payment Cryptography. The same
#' key derivation mode was used for ARQC generation outside of Amazon Web
#' Services Payment Cryptography.
#' @param SessionKeyDerivationAttributes &#91;required&#93; The attributes and values to use for deriving a session key for ARQC
#' verification within Amazon Web Services Payment Cryptography. The same
#' attributes were used for ARQC generation outside of Amazon Web Services
#' Payment Cryptography.
#' @param AuthResponseAttributes The attributes and values for auth request cryptogram verification.
#' These parameters are required in case using ARPC Method 1 or Method 2
#' for ARQC verification.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_verify_auth_request_cryptogram
paymentcryptographydataplane_verify_auth_request_cryptogram <- function(KeyIdentifier, TransactionData, AuthRequestCryptogram, MajorKeyDerivationMode, SessionKeyDerivationAttributes, AuthResponseAttributes = NULL) {
  op <- new_operation(
    name = "VerifyAuthRequestCryptogram",
    http_method = "POST",
    http_path = "/cryptogram/verify",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$verify_auth_request_cryptogram_input(KeyIdentifier = KeyIdentifier, TransactionData = TransactionData, AuthRequestCryptogram = AuthRequestCryptogram, MajorKeyDerivationMode = MajorKeyDerivationMode, SessionKeyDerivationAttributes = SessionKeyDerivationAttributes, AuthResponseAttributes = AuthResponseAttributes)
  output <- .paymentcryptographydataplane$verify_auth_request_cryptogram_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$verify_auth_request_cryptogram <- paymentcryptographydataplane_verify_auth_request_cryptogram

#' Verifies card-related validation data using algorithms such as Card
#' Verification Values (CVV/CVV2), Dynamic Card Verification Values
#' (dCVV/dCVV2) and Card Security Codes (CSC)
#'
#' @description
#' Verifies card-related validation data using algorithms such as Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2) and Card Security Codes (CSC). For more information, see [Verify card data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-card-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_card_validation_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_card_validation_data/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the CVK encryption key that Amazon Web Services Payment
#' Cryptography uses to verify card data.
#' @param PrimaryAccountNumber &#91;required&#93; The Primary Account Number (PAN), a unique identifier for a payment
#' credit or debit card that associates the card with a specific account
#' holder.
#' @param VerificationAttributes &#91;required&#93; The algorithm to use for verification of card data within Amazon Web
#' Services Payment Cryptography.
#' @param ValidationData &#91;required&#93; The CVV or CSC value for use for card data verification within Amazon
#' Web Services Payment Cryptography.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_verify_card_validation_data
paymentcryptographydataplane_verify_card_validation_data <- function(KeyIdentifier, PrimaryAccountNumber, VerificationAttributes, ValidationData) {
  op <- new_operation(
    name = "VerifyCardValidationData",
    http_method = "POST",
    http_path = "/cardvalidationdata/verify",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$verify_card_validation_data_input(KeyIdentifier = KeyIdentifier, PrimaryAccountNumber = PrimaryAccountNumber, VerificationAttributes = VerificationAttributes, ValidationData = ValidationData)
  output <- .paymentcryptographydataplane$verify_card_validation_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$verify_card_validation_data <- paymentcryptographydataplane_verify_card_validation_data

#' Verifies a Message Authentication Code (MAC)
#'
#' @description
#' Verifies a Message Authentication Code (MAC).
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_mac/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_mac/) for full documentation.
#'
#' @param KeyIdentifier &#91;required&#93; The `keyARN` of the encryption key that Amazon Web Services Payment
#' Cryptography uses to verify MAC data.
#' @param MessageData &#91;required&#93; The data on for which MAC is under verification. This value must be
#' hexBinary.
#' @param Mac &#91;required&#93; The MAC being verified.
#' @param VerificationAttributes &#91;required&#93; The attributes and data values to use for MAC verification within Amazon
#' Web Services Payment Cryptography.
#' @param MacLength The length of the MAC.
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_verify_mac
paymentcryptographydataplane_verify_mac <- function(KeyIdentifier, MessageData, Mac, VerificationAttributes, MacLength = NULL) {
  op <- new_operation(
    name = "VerifyMac",
    http_method = "POST",
    http_path = "/mac/verify",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$verify_mac_input(KeyIdentifier = KeyIdentifier, MessageData = MessageData, Mac = Mac, VerificationAttributes = VerificationAttributes, MacLength = MacLength)
  output <- .paymentcryptographydataplane$verify_mac_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$verify_mac <- paymentcryptographydataplane_verify_mac

#' Verifies pin-related data such as PIN and PIN Offset using algorithms
#' including VISA PVV and IBM3624
#'
#' @description
#' Verifies pin-related data such as PIN and PIN Offset using algorithms including VISA PVV and IBM3624. For more information, see [Verify PIN data](https://docs.aws.amazon.com/payment-cryptography/latest/userguide/verify-pin-data.html) in the *Amazon Web Services Payment Cryptography User Guide*.
#'
#' See [https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_pin_data/](https://www.paws-r-sdk.com/docs/paymentcryptographydataplane_verify_pin_data/) for full documentation.
#'
#' @param VerificationKeyIdentifier &#91;required&#93; The `keyARN` of the PIN verification key.
#' @param EncryptionKeyIdentifier &#91;required&#93; The `keyARN` of the encryption key under which the PIN block data is
#' encrypted. This key type can be PEK or BDK.
#' @param VerificationAttributes &#91;required&#93; The attributes and values for PIN data verification.
#' @param EncryptedPinBlock &#91;required&#93; The encrypted PIN block data that Amazon Web Services Payment
#' Cryptography verifies.
#' @param PrimaryAccountNumber &#91;required&#93; The Primary Account Number (PAN), a unique identifier for a payment
#' credit or debit card that associates the card with a specific account
#' holder.
#' @param PinBlockFormat &#91;required&#93; The PIN encoding format for pin data generation as specified in ISO
#' 9564. Amazon Web Services Payment Cryptography supports `ISO_Format_0`
#' and `ISO_Format_3`.
#' 
#' The `ISO_Format_0` PIN block format is equivalent to the ANSI X9.8,
#' VISA-1, and ECI-1 PIN block formats. It is similar to a VISA-4 PIN block
#' format. It supports a PIN from 4 to 12 digits in length.
#' 
#' The `ISO_Format_3` PIN block format is the same as `ISO_Format_0` except
#' that the fill digits are random values from 10 to 15.
#' @param PinDataLength The length of PIN being verified.
#' @param DukptAttributes The attributes and values for the DUKPT encrypted PIN block data.
#' @param EncryptionWrappedKey 
#'
#' @keywords internal
#'
#' @rdname paymentcryptographydataplane_verify_pin_data
paymentcryptographydataplane_verify_pin_data <- function(VerificationKeyIdentifier, EncryptionKeyIdentifier, VerificationAttributes, EncryptedPinBlock, PrimaryAccountNumber, PinBlockFormat, PinDataLength = NULL, DukptAttributes = NULL, EncryptionWrappedKey = NULL) {
  op <- new_operation(
    name = "VerifyPinData",
    http_method = "POST",
    http_path = "/pindata/verify",
    host_prefix = "",
    paginator = list(),
    stream_api = FALSE
  )
  input <- .paymentcryptographydataplane$verify_pin_data_input(VerificationKeyIdentifier = VerificationKeyIdentifier, EncryptionKeyIdentifier = EncryptionKeyIdentifier, VerificationAttributes = VerificationAttributes, EncryptedPinBlock = EncryptedPinBlock, PrimaryAccountNumber = PrimaryAccountNumber, PinBlockFormat = PinBlockFormat, PinDataLength = PinDataLength, DukptAttributes = DukptAttributes, EncryptionWrappedKey = EncryptionWrappedKey)
  output <- .paymentcryptographydataplane$verify_pin_data_output()
  config <- get_config()
  svc <- .paymentcryptographydataplane$service(config, op)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.paymentcryptographydataplane$operations$verify_pin_data <- paymentcryptographydataplane_verify_pin_data
