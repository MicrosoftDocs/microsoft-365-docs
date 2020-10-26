---
title: "Technical reference details about encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 06/15/2020
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: Strat_O365_IP
search.appverid:
- MET150
- MOE150
ms.assetid: 862cbe93-4268-4ef9-ba79-277545ecf221
description: Learn about the various certificates, technologies, and TLS cipher suites used for encryption in Office 365.
ms.custom: seo-marvel-apr2020
---

# Technical reference details about encryption

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

Transport Layer Security (TLS), and SSL that came before TLS, are cryptographic protocols that secure communication over a network by using security certificates to encrypt a connection between computers. Office 365 supports TLS version 1.2 (TLS 1.2).

TLS version 1.3 (TLS 1.3) is currently not supported.

## Support for TLS 1.0 and 1.1 deprecation and what this means for you

Since October 31, 2018, Office 365 no longer supports TLS 1.0 and 1.1. This means that Microsoft will not fix new issues that are found in clients, devices, or services that connect to Office 365 by using TLS 1.0 and 1.1. Official deprecation for GCC High and DoD environments began January 15, 2020. Deprecation of TLS 1.0 and 1.1 for Worldwide and GCC environments begins October 15, 2020.

You should make sure that all client-server and browser-server combinations use TLS 1.2 and modern cipher suites to maintain a secure connection to Office 365 and Microsoft 365 services. You might have to update certain client-server and browser-server combinations. For information about how this impacts you, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).

## Deprecating support for 3DES

Since October 31, 2018, Office 365 no longer supports the use of 3DES cipher suites for communication to Office 365. More specifically, Office 365 no longer supports the TLS_RSA_WITH_3DES_EDE_CBC_SHA cipher suite. Since February 28, 2019, this cipher suite has been disabled in Office 365. Clients and servers communicating with Office 365 after this date must support at least one of the more secure ciphers listed in this topic (see [TLS cipher suites supported by Office 365](#tls-cipher-suites-supported-by-office-365)).

## Deprecating SHA-1 certificate support in Office 365

As of June 2016, Office 365 no longer accepts a SHA-1 certificate for outbound or inbound connections. If you're currently using a certificate with SHA-1 in the certificate chain, you will need to update the chain to use SHA-2 (Secure Hash Algorithm 2) or a stronger hashing algorithm.

## TLS cipher suites supported by Office 365

A cipher suite is a collection of encryption algorithms that TLS uses to establish secure connections. Cipher suites supported by Office 365 are listed in the following table in order of strength, with the strongest cipher suite listed first. When Office 365 receives a connection request, Office 365 first attempts to connect using the topmost cipher suite. Then, if unsuccessful, Office 365 tries the second cipher suite in the list and so on down the list. When Office 365 sends a connection request to another server or to a client, it's up to the receiving server or client to choose the cipher suite or whether TLS will be used at all.

> [!IMPORTANT]
> Be aware that TLS versions deprecate, and that deprecated versions *should not be used* where newer versions are available. TLS 1.3 is currently not supported. If your legacy services do not require TLS 1.0 or 1.1 you should disable them.

| Cipher suite | Key exchange algorithm/strength | Perfect Forward Secrecy | Cipher/strength | Authentication algorithm |
|:-----|:-----|:-----|:-----|:-----|
|TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 <br/>     |ECDH/192 <br/>|Yes <br/>|AES/256 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 <br/>     |ECDH/128 <br/>|Yes <br/>|AES/128 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 <br/>     |ECDH/192 <br/>|Yes <br/>|AES/256 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 <br/>     |ECDH/128 <br/>|Yes <br/>|AES/128 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA <br/>        |ECDH/192 <br/>|Yes <br/>|AES/256 <br/>|RSA/112 <br/> |
|TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA <br/>        |ECDH/128 <br/>|Yes <br/>|AES/128 <br/>|RSA/112 <br/> |
|TLS_RSA_WITH_AES_256_GCM_SHA384 <br/>           |RSA/112 <br/> |No <br/> |AES/256 <br/>|RSA/112 <br/> |
|TLS_RSA_WITH_AES_128_GCM_SHA256 <br/>           |RSA/112 <br/> |No <br/> |AES/256 <br/>|RSA/112 <br/> |

These are the following cipher suites which will still support TLS 1.0 and 1.1 protocols until their deprecation date. For GCC High and DoD environments that deprecation date was Jan 15, 2020, and for Worldwide and GCC environments that date is October 15, 2020.

| Protocols | Cipher suite name | Key exchange algorithm/Strength | Perfect Forward Secrecy support | Authentication algorithm/Strength | Cipher/Strength |
|:-----|:-----|:-----|:-----|:-----|:-----|
|TLS 1.0, 1.1, 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA  <br/> |ECDH/192  <br/> |Yes  <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA  <br/> |ECDH/128  <br/> |Yes  <br/> |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_256_CBC_SHA        <br/> |RSA/112  <br/>  |No  <br/>  |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_128_CBC_SHA        <br/> |RSA/112  <br/>  |No  <br/>  |RSA/112  <br/> |AES/128  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_256_CBC_SHA256     <br/> |RSA/112  <br/>  |No   <br/> |RSA/112  <br/> |AES/256  <br/> |
|TLS 1.0, 1.1, 1.2  <br/> |TLS_RSA_WITH_AES_128_CBC_SHA256     <br/> |RSA/112  <br/>  |No   <br/> |RSA/112  <br/> |AES/256  <br/> |

## Related topics
[TLS Cipher Suites in Windows 10 v1903](https://docs.microsoft.com/windows/win32/secauthn/tls-cipher-suites-in-windows-10-v1903)

[Encryption in Office 365](encryption.md)

[Set up encryption in Office 365 Enterprise](set-up-encryption.md)

[Encryption Risks and Protections](https://docs.microsoft.com/microsoft-365/compliance/office-365-encryption-risks-and-protections?view=o365-worldwide)

[Schannel implementation of TLS 1.0 in Windows security status update: November 24, 2015](https://support.microsoft.com/kb/3117336)

[TLS/SSL Cryptographic Enhancements (Windows IT Center)](https://technet.microsoft.com/library/cc766285%28v=ws.10%29.aspx)

[Preparing for TLS 1.2 in Office 365 and Office 365 GCC](https://docs.microsoft.com/office365/troubleshoot/security/prepare-tls-1.2-in-office-365)
