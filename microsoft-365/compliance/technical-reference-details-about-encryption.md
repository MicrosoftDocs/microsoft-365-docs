---
title: "Technical reference details about encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 06/14/2023
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- tier1
search.appverid:
- MET150
- MOE150
ms.assetid: 862cbe93-4268-4ef9-ba79-277545ecf221
description: Learn about the various certificates, technologies, and Transport Layer Security (TLS) cipher suites used for encryption in Office 365 and Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Technical reference details about encryption

Refer to this article to learn about certificates, technologies, and TLS cipher suites used for [encryption in Microsoft 365](encryption.md). This article also provides details about planned deprecations.
  
- If you're looking for overview information, see [Encryption in Microsoft 365](encryption.md).
- If you're looking for setup information, see [Set up encryption in Microsoft 365 Enterprise](set-up-encryption.md).
- For information about cipher suites supported by specific versions of Windows, see [Cipher Suites in TLS/SSL (Schannel SSP)](/windows/desktop/SecAuthN/cipher-suites-in-schannel).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Microsoft Office 365 certificate ownership and management

You don't need to purchase or maintain certificates for Office 365. Instead, Office 365 uses its own certificates.
  
## Current encryption standards and planned deprecations

To provide best-in-class encryption, Office 365 regularly reviews supported encryption standards. Sometimes, old standards are deprecated as they become out of date and less secure. This article describes currently supported cipher suites and other standards and details about planned deprecations.

## FIPS compliance for Microsoft 365

All cipher suites supported by Office 365 use algorithms acceptable under FIPS 140-2. Office 365 inherits FIPS validations from Windows (through Schannel). For information about Schannel, see [Cipher Suites in TLS/SSL (Schannel SSP)](/windows/desktop/SecAuthN/cipher-suites-in-schannel).

## AES256-CBC support for Microsoft 365

In late August 2023, Microsoft Purview Information Protection will begin to use Advanced Encryption Standard (AES) with 256-bit key length in Cipher Block Chaining mode (AES256-CBC). By October 2023, AES256-CBC will be the default for encryption of Microsoft 365 Apps documents and emails. You may need to take action to support this change in your organization.

### Who is impacted and what do I need to do?

Use this table to figure out if you have to take action:

|**Client applications**|**Service applications**|**Action required?**|**What do I need to do?**|
|:-----|:-----|:-----|:-----|
|Microsoft 365 Apps|Exchange Online, SharePoint Online |No|N/A|
|Office 2013, 2016, 2019, or 2021|Exchange Online, SharePoint Online| Yes (Optional)| See [Set up Office 2013, 2016, 2019, or 2021 for AES256-CBC mode](#set-up-office-2013-2016-2019-or-2021-for-aes256-cbc-mode). |
|Microsoft 365 Apps|Exchange Server or hybrid|Yes (Mandatory)| See [Set up Exchange Server for AES256-CBC support](#set-up-exchange-server-for-aes256-cbc-support).|
|Office 2013, 2016, 2019, or 2021|Exchange Server or hybrid| Yes (Mandatory)| Complete [Option 1](#option-1) (required), and then see [Set up Office 2013, 2016, 2019, or 2021 for AES256-CBC mode](#set-up-office-2013-2016-2019-or-2021-for-aes256-cbc-mode). |
|Microsoft 365 Apps|MIP SDK|Yes (Optional)| See [Set up MIP SDK for AES256-CBC support](#set-up-mip-sdk-for-aes256-cbc-support).|
|Any|SharePoint Server|No|N/A||

#### Set up Office 2013, 2016, 2019, or 2021 for AES256-CBC mode

You need to configure Office 2013, 2016, 2019, or 2021 to use AES256-CBC mode using Group Policy, or by using the Cloud Policy service for Microsoft 365. Starting with version 16.0.16327 of Microsoft 365 Apps, CBC mode is used by default. Use the `Encryption mode for Information Rights Management (IRM)` setting under `User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings`.

For example, to force CBC mode, select the group policy setting as follows:

Encryption mode for Information Rights Management (IRM): [1, Cipher Block Chaining (CBC)]

#### Set up Exchange Server for AES256-CBC support

Exchange Server doesn't support decrypting content that uses AES256-CBC. To work around this problem, you have two options.

##### Option 1

Customers using Exchange Online with the Azure Rights Management Connector service deployed will be opted out of the AES256-CBC publishing change in both Exchange Online and SharePoint Online.

To move to AES256-CBC mode, complete these steps:

1. Install the hotfix on your Exchange Servers when it becomes available. For the most recent information about ship dates, see the [Microsoft 365 product roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=117576).  

1. If you're using Exchange Server with the Azure Rights Management Connector Service, you'll need to run the GenConnectorConfig.ps1 script on each Exchange server. For more information, see [Configure servers for the Rights Management connector](/azure/information-protection/configure-servers-rms-connector). To download the Azure RMS connector, see the [official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=40839)

Once your organization has installed the patch across all of your Exchange Servers, open a support case and request these services to be enabled for AES256-CBC publishing.  

##### Option 2

This option gives you some extra time before you need to patch all of your Exchange servers. Use this option if you're unable to complete the steps in [option 1](#option-1) when the hotfix becomes available. Instead, deploy group policy or client settings that force Microsoft 365 clients to keep using AES128-ECB mode. Deploy this setting using Group Policy, or by using the Cloud Policy service for Microsoft 365. You can configure Office and Microsoft 365 Apps for Windows to use ECB or CBC mode with the `Encryption mode for Information Rights Management (IRM)` setting under `User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings`. Starting with version 16.0.16327 of Microsoft 365 Apps, CBC mode is used by default.

For example, to force EBC mode for Windows clients, set the group policy setting as follows:

Encryption mode for Information Rights Management (IRM): [2, Electronic Codebook (ECB)]

To configure settings for Office for Mac clients, see [Set suite-wide preferences for Office for Mac](/deployoffice/mac/preferences-office).

As soon as you can, complete the steps in [option 1](#set-up-exchange-server-for-aes256-cbc-support).

#### Set up MIP SDK for AES256-CBC support

Update to MIP SDK 1.13 or later. If you choose to update to MIP SDK 1.13, you'll need to configure a setting to force AES256-CBC. For more information, see the [MIP SDK Version 1.13.158 Critical Update](/information-protection/develop/version-release-history). Later versions of the MIP SDK will protect Microsoft 365 files and email with AES256-CBC by default.

## Versions of TLS supported by Microsoft 365

TLS, and SSL that came before TLS, are cryptographic protocols that secure communication over a network by using security certificates to encrypt a connection between computers. Microsoft 365 supports TLS version 1.2 (TLS 1.2).

Some of the services continue to support TLS version 1.3 (TLS 1.3).

> [!IMPORTANT]
> Be aware that TLS versions deprecate, and that deprecated versions *should not be used* where newer versions are available. If your legacy services do not require TLS 1.0 or 1.1 you should disable them.
  
## Support for TLS 1.0 and 1.1 deprecation

Office 365 stopped supporting TLS 1.0 and 1.1 on October 31, 2018. We have completed disabling TLS 1.0 and 1.1 in GCC High and DoD environments. We began disabling TLS 1.0 and 1.1 for Worldwide and GCC environments beginning on October 15, 2020 and will continue with roll-out over the next weeks and months.

To maintain a secure connection to Office 365 and Microsoft 365 services, all client-server and browser-server combinations use TLS 1.2 and modern cipher suites. You might have to update certain client-server and browser-server combinations. For information about how this change impacts you, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).
  
## Deprecating support for 3DES

Since October 31, 2018, Microsoft 365 no longer supports the use of 3DES cipher suites for communication to Microsoft 365. More specifically, Microsoft 365 no longer supports the TLS_RSA_WITH_3DES_EDE_CBC_SHA cipher suite. Since February 28, 2019, this cipher suite has been disabled in Microsoft 365. Clients and servers that communicate with Microsoft 365 must support one or more of the supported ciphers. For a list of supported ciphers, see [TLS cipher suites supported by Microsoft 365](#tls-cipher-suites-supported-by-microsoft-365).
  
## Deprecating SHA-1 certificate support in Microsoft 365

Since June 2016, Microsoft 365 no longer accepts an SHA-1 certificate for outbound or inbound connections. Use SHA-2 (Secure Hash Algorithm 2) or a stronger hashing algorithm in the certificate chain.
  
## TLS cipher suites supported by Microsoft 365

TLS uses *cipher suites*, collections of encryption algorithms, to establish secure connections. Microsoft 365 supports the cipher suites listed in the following table. The table lists the cipher suites in order of strength, with the strongest cipher suite listed first.

Microsoft 365 responds to a connection request by first attempting to connect using the most secure cipher suite. If the connection doesn't work, Microsoft 365 tries the second most secure cipher suite in the list, and so on. The service continues down the list until the connection is accepted. Likewise, when Microsoft 365 requests a connection, the receiving service chooses whether to use TLS and which cipher suite to use.

| Cipher suite name | Key exchange algorithm/strength | Forward secrecy | Cipher/strength | Authentication algorithm/strength |
|:-----|:-----|:-----|:-----|:-----|
| TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 | ECDH/192 | Yes | AES/256 | RSA/112 |
| TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 | ECDH/128 | Yes | AES/128 | RSA/112 |
| TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 | ECDH/192 | Yes | AES/256 | RSA/112 |
| TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 | ECDH/128 | Yes | AES/128 | RSA/112 |
| TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA    | ECDH/192 | Yes | AES/256 | RSA/112 |
| TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA    | ECDH/128 | Yes | AES/128 | RSA/112 |
| TLS_RSA_WITH_AES_256_GCM_SHA384       | RSA/112  | No  | AES/256 | RSA/112 |
| TLS_RSA_WITH_AES_128_GCM_SHA256       | RSA/112  | No  | AES/256 | RSA/112 ||

The following cipher suites supported TLS 1.0 and 1.1 protocols until their deprecation date. For GCC High and DoD environments that deprecation date was January 15, 2020. For Worldwide and GCC environments that date was October 15, 2020.

| Protocols | Cipher suite name | Key exchange algorithm/strength | Forward secrecy | Cipher/strength | Authentication algorithm/strength |
|:-----|:-----|:-----|:-----|:-----|:-----|
| TLS 1.0, 1.1, 1.2 | TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA | ECDH/192 | Yes | AES/256 | RSA/112 |
| TLS 1.0, 1.1, 1.2 | TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA | ECDH/128 | Yes | AES/128 | RSA/112 |
| TLS 1.0, 1.1, 1.2 | TLS_RSA_WITH_AES_256_CBC_SHA       | RSA/112  | No  | AES/256 | RSA/112 |
| TLS 1.0, 1.1, 1.2 | TLS_RSA_WITH_AES_128_CBC_SHA       | RSA/112  | No  | AES/128 | RSA/112 |
| TLS 1.0, 1.1, 1.2 | TLS_RSA_WITH_AES_256_CBC_SHA256    | RSA/112  | No  | AES/256 | RSA/112 |
| TLS 1.0, 1.1, 1.2 | TLS_RSA_WITH_AES_128_CBC_SHA256    | RSA/112  | No  | AES/256 | RSA/112 ||

Certain Office 365 products (including Microsoft Teams) use [Azure Front Door](/azure/frontdoor/front-door-overview) to terminate TLS connections and route network traffic efficiently. At least one of the [cipher suites supported by Azure Front Door over TLS 1.2](/azure/frontdoor/front-door-faq#what-are-the-current-cipher-suites-supported-by-azure-front-door-) must be enabled to successfully connect to these products. For Windows 10 and above, we recommend enabling one or both of the ECDHE cipher suites for better security. Windows 7, 8, and 8.1 aren't compatible with Azure Front Door's ECDHE cipher suites and the DHE cipher suites have been provided for compatibility with those operating systems.

## Related articles

[TLS Cipher Suites in Windows 10 v1903](/windows/win32/secauthn/tls-cipher-suites-in-windows-10-v1903)

[Encryption in Office 365](encryption.md)
  
[Set up encryption in Office 365 Enterprise](set-up-encryption.md)
  
[Schannel implementation of TLS 1.0 in Windows security status update: November 24, 2015](https://support.microsoft.com/kb/3117336)
  
[TLS/SSL Cryptographic Enhancements (Windows IT Center)](/previous-versions/windows/it-pro/windows-vista/cc766285(v=ws.10))
  
[Preparing for TLS 1.2 in Office 365 and Office 365 GCC](/office365/troubleshoot/security/prepare-tls-1.2-in-office-365)

[What are the current cipher suites supported by Azure Front Door?](/azure/frontdoor/front-door-faq#what-are-the-current-cipher-suites-supported-by-azure-front-door-)
