---
title: "Technical reference details about encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
- Strat_O365_IP
search.appverid:
- MET150
- MOE150
ms.assetid: 862cbe93-4268-4ef9-ba79-277545ecf221
description: Learn about the various certificates, technologies, and Transport Layer Security (TLS) cipher suites used for encryption in Office 365 and Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Technical reference details about encryption

Refer to this article to learn about certificates, technologies, and TLS cipher suites used for [encryption in Office 365](encryption.md). This article also provides details about planned deprecations.
  
- If you're looking for overview information, see [Encryption in Office 365](encryption.md).
- If you're looking for setup information, see [Set up encryption in Office 365 Enterprise](set-up-encryption.md).
- For information about cipher suites supported by specific versions of Windows, see [Cipher Suites in TLS/SSL (Schannel SSP)](/windows/desktop/SecAuthN/cipher-suites-in-schannel).

## Microsoft Office 365 certificate ownership and management

You don't need to purchase or maintain certificates for Office 365. Instead, Office 365 uses its own certificates.
  
## Current encryption standards and planned deprecations

To provide best-in-class encryption, Office 365 regularly reviews supported encryption standards. Sometimes, old standards are deprecated as they become out of date and less secure. This article describes currently supported cipher suites and other standards and details about planned deprecations.

## FIPS compliance for Office 365

All cipher suites supported by Office 365 use algorithms acceptable under FIPS 140-2. Office 365 inherits FIPS validations from Windows (through Schannel). For information about Schannel, see [Cipher Suites in TLS/SSL (Schannel SSP)](/windows/desktop/SecAuthN/cipher-suites-in-schannel).
  
## Versions of TLS supported by Office 365

TLS, and SSL that came before TLS, are cryptographic protocols that secure communication over a network by using security certificates to encrypt a connection between computers. Office 365 supports TLS version 1.2 (TLS 1.2).

TLS version 1.3 (TLS 1.3) is currently not supported.
  
## Support for TLS 1.0 and 1.1 deprecation

Office 365 stopped supporting TLS 1.0 and 1.1 on October 31, 2018. We have completed disabling TLS 1.0 and 1.1 in GCC High and DoD environments. We began disabling TLS 1.0 and 1.1 for Worldwide and GCC environments beginning on October 15, 2020 and will continue with roll-out over the next weeks and months.

To maintain a secure connection to Office 365 and Microsoft 365 services, all client-server and browser-server combinations use TLS 1.2 and modern cipher suites. You might have to update certain client-server and browser-server combinations. For information about how this change impacts you, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).
  
## Deprecating support for 3DES

Since October 31, 2018, Office 365 no longer supports the use of 3DES cipher suites for communication to Office 365. More specifically, Office 365 no longer supports the TLS_RSA_WITH_3DES_EDE_CBC_SHA cipher suite. Since February 28, 2019, this cipher suite has been disabled in Office 365. Clients and servers that communicate with Office 365 must support one or more of the supported ciphers. For a list of supported ciphers, see [TLS cipher suites supported by Office 365](#tls-cipher-suites-supported-by-office-365).
  
## Deprecating SHA-1 certificate support in Office 365

Since June 2016, Office 365 no longer accepts an SHA-1 certificate for outbound or inbound connections. Use SHA-2 (Secure Hash Algorithm 2) or a stronger hashing algorithm in the certificate chain.
  
## TLS cipher suites supported by Office 365

TLS uses *cipher suites*, collections of encryption algorithms, to establish secure connections. Office 365 supports the cipher suites listed in the following table. The table lists the cipher suites in order of strength, with the strongest cipher suite listed first.

Office 365 responds to a connection request by first attempting to connect using the most secure cipher suite. If the connection doesn't work, Office 365 tries the second most secure cipher suite in the list, and so on. The service continues down the list until the connection is accepted. Likewise, when Office 365 requests a connection, the receiving service chooses whether TLS will be used and which cipher suite to use.

> [!IMPORTANT]
> Be aware that TLS versions deprecate, and that deprecated versions *should not be used* where newer versions are available. TLS 1.3 is currently not supported. If your legacy services do not require TLS 1.0 or 1.1 you should disable them.

| Cipher suite | Key exchange algorithm/strength | Forward Secrecy | Cipher/strength | Authentication algorithm |
|:-----|:-----|:-----|:-----|:-----|
|TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 <br/>     |ECDH/192 <br/>|Yes <br/>|AES/256 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 <br/>     |ECDH/128 <br/>|Yes <br/>|AES/128 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 <br/>     |ECDH/192 <br/>|Yes <br/>|AES/256 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 <br/>     |ECDH/128 <br/>|Yes <br/>|AES/128 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA <br/>        |ECDH/192 <br/>|Yes <br/>|AES/256 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA <br/>        |ECDH/128 <br/>|Yes <br/>|AES/128 <br/>|RSA/112 <br/> |
|TLS_RSA_WITH_AES_256_GCM_SHA384 <br/>           |RSA/112 <br/> |No <br/> |AES/256 <br/>|RSA/112 <br/> |
|TLS_RSA_WITH_AES_128_GCM_SHA256 <br/>           |RSA/112 <br/> |No <br/> |AES/256 <br/>|RSA/112 <br/> |

These cipher suites supported TLS 1.0 and 1.1 protocols until their deprecation date. For GCC High and DoD environments that deprecation date was January 15, 2020, and for Worldwide and GCC environments that date was October 15, 2020.

| Protocols | Cipher suite name | Key exchange algorithm/Strength | Forward Secrecy support | Authentication algorithm/Strength | Cipher/Strength |
|:-----|:-----|:-----|:-----|:-----|:-----|
|TLS 1.0, 1.1, 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA  <br/> |ECDH/192  <br/> |Yes  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA  <br/> |ECDH/128  <br/> |Yes  <br/> |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_256_CBC_SHA        <br/> |RSA/112  <br/>  |No  <br/>  |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_128_CBC_SHA        <br/> |RSA/112  <br/>  |No  <br/>  |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_256_CBC_SHA256     <br/> |RSA/112  <br/>  |No   <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_128_CBC_SHA256     <br/> |RSA/112  <br/>  |No   <br/> |RSA/112  <br/> |AES/256  <br/> |

## Related articles

[TLS Cipher Suites in Windows 10 v1903](/windows/win32/secauthn/tls-cipher-suites-in-windows-10-v1903)

[Encryption in Office 365](encryption.md)
  
[Set up encryption in Office 365 Enterprise](set-up-encryption.md)
  
[Schannel implementation of TLS 1.0 in Windows security status update: November 24, 2015](https://support.microsoft.com/kb/3117336)
  
[TLS/SSL Cryptographic Enhancements (Windows IT Center)](/previous-versions/windows/it-pro/windows-vista/cc766285(v=ws.10))
  
[Preparing for TLS 1.2 in Office 365 and Office 365 GCC](/office365/troubleshoot/security/prepare-tls-1.2-in-office-365)