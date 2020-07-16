---
title: Deprecating TLS 1.0 and 1.1 in Office 365 GCC High and DoD
description: Discusses how Microsoft is moving the date forward to discontinue support for TLS 1.1 and 1.0 in GCC High and DoD environments in Office 365 and preparing to use TLS 1.2.
author: workshay
manager: laurawi
localization_priority: Normal
search.appverid: 
- MET150
audience: ITPro
ms.collection: M365-security-compliance
ms.service: information-protection
ms.topic: article
ms.reviewer: krowley
ms.author: shmehta
appliesto:
- Office 365 Business
---

# Deprecating TLS 1.0 and 1.1 in Office 365 GCC High and DoD

## Summary

In order to comply with the latest compliance standards for the Federal Risk and Authorization Management Program (FedRAMP), we are deprecating Transport Layer Security (TLS) versions 1.1 and 1.0 in Microsoft Office 365 for GCC High and DoD environments. This change was previously announced through Microsoft Support in [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).

The security of your data is important, and we are committed to transparency about changes that could affect your use of the service.

Although the [Microsoft TLS 1.0 implementation](https://support.microsoft.com/help/3117336) has no known security vulnerabilities, we remain committed to the FedRAMP compliance standards. Therefore, we will deprecate TLS 1.1 and 1.0 in Office 365 in GCC High and DoD environments starting on January 15, 2020. For information about how to remove TLS 1.1 and 1.0 dependencies, see the following white paper:

[Solving the TLS 1.0 problem](https://www.microsoft.com/download/details.aspx?id=55266)

In preparing for this change for TLS 1.1 and 1.0, we recommend that you use TLS version 1.2 instead. For more information, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).

## More information

Starting on January 15, 2020, Office 365 in the GCC High and DoD environments will deprecate TLS 1.1 and 1.0.

By January 15, 2020, all combinations of client servers and browser servers should use TLS version 1.2 (or a later version) to make sure that all connections can be made without issues to Office 365 services. This may require updates to certain combinations of client servers and browser servers.

If you do not update to TLS version 1.2 (or a later version) by January 15, 2020, you will experience issues when you try to connect to Office 365. Additionally, you will be required to update to TLS 1.2 (or a later version) as part of the resolution.

We know that the following clients cannot use TLS 1.2:

- Android 4.3 and earlier versions
- Firefox version 5.0 and earlier versions
- Internet Explorer 8–10 on Windows 7 and earlier versions
- Internet Explorer 10 on Windows Phone 8.0
- Safari 6.0.4/OS X 10.8.4 and earlier versions

We recommend that you update your clients to make sure that you maintain uninterrupted access to Office 365 GCC High and DoD.

Although current analysis of connections to Microsoft Online services shows that most services and endpoints see very little TLS 1.1 and 1.0 usage, we are providing notice of this change so that you can update any affected clients or servers as necessary before support for TLS 1.1 and 1.0 ends. If you are using any on-premises infrastructure for hybrid scenarios or Active Directory Federation Services (AD FS), make sure that the infrastructure can support both inbound and outbound connections that use TLS 1.2 (or a later version).

In addition to the outages that you might experience if you use the listed clients that cannot use TLS 1.2, removing TLS 1.1 and 1.0 will prevent you from being able to use the following Microsoft product:

- Lync phone

## References

The following support article describes guidance and references to help make sure that your clients are using TLS 1.2:

[Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365)
