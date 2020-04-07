---
title: "Technical reference details about encryption in Office 365"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 03/29/2019
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid:
- MET150
- MOE150
ms.assetid: 862cbe93-4268-4ef9-ba79-277545ecf221
description: "View technical details about encryption in Office 365."
---

# Technical reference details about encryption in Office 365

Refer to this article to learn about certificates, technologies, and TLS cipher suites used for [encryption in Office 365](encryption.md). This article also provides details about planned deprecations.
  
- If you're looking for overview information, see [Encryption in Office 365](encryption.md).
- If you're looking for setup information, see [Set up encryption in Office 365 Enterprise](set-up-encryption.md).
- For information about cipher suites supported by specific versions of Windows, see [Cipher Suites in TLS/SSL (Schannel SSP)](https://docs.microsoft.com/windows/desktop/SecAuthN/cipher-suites-in-schannel).
    
## Microsoft Office 365 certificate ownership and management

You do not need to purchase or maintain certificates for Office 365 because Microsoft uses its own certificates.
  
## Current encryption standards and planned deprecations

In order to continue to provide best-in-class encryption for Office 365, Microsoft regularly reviews supported encryption standards. Sometimes, we need to deprecate old standards as they become out of date and therefore less secure. This topic describes currently supported cipher suites and other standards as well as details about planned deprecations. 

## FIPS compliance for Office 365
All cipher suites supported by Office 365 use algorithms acceptable under FIPS 140-2. Office 365 inherits FIPS validations from Windows (through Schannel). For information about Schannel, see [Cipher Suites in TLS/SSL (Schannel SSP)](https://docs.microsoft.com/windows/desktop/SecAuthN/cipher-suites-in-schannel).
  
## Versions of TLS supported by Office 365

Transport Layer Security (TLS), and SSL that came before TLS, are cryptographic protocols that secure communication over a network by using security certificates to encrypt a connection between computers. Office 365 supports several versions of TLS, including:
  
- TLS version 1.2 (TLS 1.2)
    
- TLS version 1.1 (TLS 1.1)
    
- TLS version 1.0 (TLS 1.0)
    
 TLS 1.0 and TLS 1.1 support will be deprecated October 31, 2018. See [Deprecating support for TLS 1.0 and 1.1 and what this means for you](technical-reference-details-about-encryption.md#TLS11and12deprecation) for more information. 
 
 TLS version 1.3 (TLS 1.3) is currently not supported.
  
## Deprecating support for TLS 1.0 and 1.1 and what this means for you
<a name="TLS11and12deprecation"> </a>

Since October 31, 2018, Office 365 no longer supports TLS 1.0 and 1.1. This means that Microsoft will not fix new issues that are found in clients, devices, or services that connect to Office 365 by using TLS 1.0 and 1.1.

Note This doesn't mean Office 365 will block TLS 1.0 and 1.1 connections. 

TLS 1.0 and TLS 1.1 will be officially deprecated on the dates below:
- June 1, 2020 for customers in the WorldWide and GCC environments.
- January 15, 2020 for customers in the GCC High and DoD sovereign environments. 

You should make sure that all client-server and browser-server combinations use TLS 1.2 and modern cipher suits to maintain a secure connection to Office 365 services. You may have to update certain client-server and browser-server combinations. For information about how this impacts you, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/en-us/help/4057306/preparing-for-tls-1-2-in-office-365).

You should make sure that all client-server and browser-server combinations use TLS 1.2 (or a later version) to maintain connection to Office 365 services. You may have to update certain client-server and browser-server combinations. For information about how this impacts you, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).

  
## Deprecating support for 3DES
<a name="TLS11and12deprecation"> </a>

Since October 31, 2018, Office 365 no longer supports the use of 3DES cipher suites for communication to Office 365. More specifically, Office 365 no longer supports the TLS_RSA_WITH_3DES_EDE_CBC_SHA cipher suite. Since February 28, 2019, this cipher suite is being disabled in Office 365. Clients and servers communicating with O365 after this date must support at least one of the more secure ciphers listed in this topic (see [TLS cipher suites supported by Office 365](technical-reference-details-about-encryption.md#TLSCipherSuites)).
  
## Deprecating SHA-1 certificate support in Office 365
<a name="TLS11and12deprecation"> </a>

As of June 2016, Office 365 no longer accepts a SHA-1 certificate for outbound or inbound connections. If you are currently using a certificate with SHA-1 in the certificate chain, you will need to update the chain to use SHA-2 (Secure Hash Algorithm 2) or a stronger hashing algorithm.
  
## TLS cipher suites supported by Office 365
<a name="TLSCipherSuites"> </a>

A cipher suite is a collection of encryption algorithms that TLS uses to establish secure connections. Cipher suites supported by Office 365 are listed in the following table in order of strength with the strongest cipher suite listed first. When Office 365 receives a connection request, Office 365 first attempts to connect using the topmost cipher suite then, if unsuccessful, tries the second cipher suite in the list and so on down the list. When Office 365 sends a connection request to another server or to a client, it's up to the receiving server or client to choose the cipher suite or whether TLS will be used at all.

> [!IMPORTANT]
> Be aware that TLS versions deprecate, and that deprecated versions *should not be used* where newer versions are available. In other words, anywhere where it's listed that TLS 1.0, 1.1, and 1.2 are supported, choose the *most recent* supported version (TLS 1.2). TLS is currently not supported. If your legacy services do not require TLS 1.0 or 1.1 you should consider disabling them. 
  
|**Protocols**|**Cipher suite name**|**Key exchange algorithm/Strength**|**Perfect Forward Secrecy support**|**Authentication algorithm/Strength**|**Cipher/Strength**|
|:-----|:-----|:-----|:-----|:-----|:-----|
|TLS 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384  <br/> |ECDH/192  <br/> |Yes  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256  <br/> |ECDH/128  <br/> |Yes  <br/> |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384  <br/> |ECDH/192  <br/> |Yes  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256  <br/> |ECDH/128  <br/> |Yes  <br/> |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384  <br/> |ECDH/192  <br/> |Yes  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA_P256  <br/> |ECDH/128  <br/> |Yes  <br/> |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.2  <br/> |TLS_RSA_WITH_AES_256_CBC_SHA256  <br/> |RSA/112  <br/> |No  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.2  <br/> |TLS_RSA_WITH_AES_128_CBC_SHA256  <br/> |RSA/112  <br/> |No  <br/> |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_256_CBC_SHA  <br/> |RSA/112  <br/> |No  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_128_CBC_SHA  <br/> |RSA/112  <br/> |No  <br/> |RSA/112  <br/> |AES/128  <br/> |
   
## Related topics
[TLS Cipher Suites in Windows 10 v1903](https://docs.microsoft.com/windows/win32/secauthn/tls-cipher-suites-in-windows-10-v1903)

[Encryption in Office 365](encryption.md)
  
[Set up encryption in Office 365 Enterprise](set-up-encryption.md)
  
[Schannel implementation of TLS 1.0 in Windows security status update: November 24, 2015](https://support.microsoft.com/kb/3117336)
  
[TLS/SSL Cryptographic Enhancements (Windows IT Center)](https://technet.microsoft.com/library/cc766285%28v=ws.10%29.aspx)
  
 [Preparing for TLS 1.2 in Office 365 and Office 365 GCC](https://docs.microsoft.com/office365/troubleshoot/security/prepare-tls-1.2-in-office-365)

