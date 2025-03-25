---
title: Security for Microsoft 365
f1.keywords:
- NOCSH
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 03/17/2025
audience: ITPro
ms.topic: concept-article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: high
ms.collection: 
- scotvorg
- must-keep
- essentials-security
ms.custom: 
- it-pro
- intro-overview
description: Learn about security for Microsoft 365 for enterprise.
---

# Security for Microsoft 365 for enterprise

Microsoft 365 for enterprise follows all the security best practices and procedures such as service-level security through defense-in-depth, customer controls within the services, security hardening, and operational best practices. For full details, see the [Microsoft Trust Center](https://microsoft.com/trustcenter) and [Microsoft Compliance](/compliance).

## Trustworthy by design

Microsoft 365 is designed and developed in compliance with the Microsoft Trustworthy Computing Security Development Lifecycle (SDL), which is described at [Microsoft Security Development Lifecycle (SDL)](https://www.microsoft.com/sdl/default.aspx). The first step in creating a more secure unified communications, collaboration, and productivity system was to design threat models and test each feature as it was designed. Multiple security-related improvements were built into the coding process and practices. Build-time tools detect buffer overruns and other potential security threats before the code is checked in to the final product. It's impossible to design against all unknown security threats. No system can guarantee complete security. However, because product development embraced secure design principles from the start, Microsoft 365 incorporates industry standard security technologies as a fundamental part of its architecture.

## Security Framework for Microsoft 365

Microsoft 365 endorses security ideas like Zero Trust, and principles of Least Privilege access. This section gives an overview of fundamental elements that form a security framework for Microsoft 365.

Core elements include:

- Microsoft Entra ID, which provides a single trusted back-end repository for user accounts. User profile information is stored in Microsoft Entra ID through the actions of Microsoft Graph.
  - There might be multiple tokens issued which you might see if tracing your network traffic.
- Transport Layer Security (TLS) encrypts the channel in motion. Authentication takes place using either mutual TLS (MTLS), based on certificates, or using Service-to-Service authentication based on Microsoft Entra ID.
- Point-to-point audio, video, and application sharing streams are encrypted and integrity checked using Secure Real-Time Transport Protocol (SRTP).
- You'll see OAuth traffic in your trace, particularly around token exchanges and negotiating permissions while switching between tabs in Teams, for example to move from Posts to Files. For an example of the OAuth flow for tabs, [see this document](/microsoftteams/platform/tabs/how-to/authentication/auth-flow-tab).
- Microsoft 365 uses industry-standard protocols for user authentication, wherever possible.

<a name='azure-active-directory'></a>

### Microsoft Entra ID

Microsoft Entra ID functions as the directory service for Microsoft 365 and Office 365. It stores all user and application directory information and policy assignments.

### Encryption in Microsoft 365

There are multiple layers of encryption at work within Microsoft 365 to protect your organization's content. For an overview of encryption in Microsoft 365, see [Encryption in Microsoft 365](/microsoft-365/compliance/encryption).

### User and Client Authentication

A trusted user is one whose credentials have been authenticated by Microsoft Entra ID in Microsoft 365 or Office 365.

Authentication is the provision of user credentials to a trusted server or service. Microsoft 365 uses the following authentication protocols, depending on the status and location of the user.

- **Modern Authentication (MA)** is the Microsoft implementation of OAUTH 2.0 for client to server communication. It enables security features such as multifactor authentication and Conditional Access. To use MA, both the online tenant and the clients need to be enabled for MA. The Microsoft 365 clients across PC and mobile, and the web clients, all support MA.

> [!NOTE]
> If you want more information on Microsoft Entra authentication and authorization methods, this article's Introduction and 'Authentication basics in Microsoft Entra ID' sections will help.

Microsoft 365 authentication is accomplished through Microsoft Entra ID and OAuth. The process of authentication can be simplified to:

- User sign in > token issuance > next request use issued token.

Requests from clients to cloud services are authenticated and authorized by Microsoft Entra ID with the use of OAuth. Users with valid credentials issued by a federated partner are trusted and pass through the same process as native users. However, further restrictions can be put into place by administrators.

For media authentication, the ICE and TURN protocols also use the Digest challenge as described in the IETF TURN RFC.

### Endpoint security

Microsoft is unifying user-facing Microsoft 365 apps and services to a single and consistent domain: `**cloud.microsoft**`.

The growth of Microsoft cloud services led to the expansion of the domain space they occupy, resulting in hundreds of domains. This fragmentation is a challenge for end user navigation, administrative simplicity, and the development of cross-app experiences.

The `*.microsoft*` top-level domain is exclusive to Microsoft. The new domain doesn’t have traditional suffixes such as .com or .net in the end. This is by design. `cloud.microsoft` resides under the `.microsoft` top-level domain, for which Microsoft is a registry operator and the sole registrant. This domain allows for extra security, privacy, and protection against spoofing when you interact with apps within that domain. You can trust that any website or app that ends with `cloud.microsoft` is an official Microsoft product or service.

For more information, see [Unified cloud.microsoft domain for Microsoft 365 apps](cloud-microsoft-domain.md).

## Related articles

[Top 12 tasks for security teams to support working from home](/microsoft-365/security/top-security-tasks-for-remote-work)

[Microsoft Trust Center](https://microsoft.com/trustcenter)

[Optimize Microsoft 365 or Office 365 connectivity for remote users using VPN split tunneling](/Office365/Enterprise/office-365-vpn-split-tunnel)

[Understand how security works in Microsoft Viva](/viva/viva-security)

[Security guide for Microsoft Teams overview](/microsoftteams/teams-security-guide)

[Security in Microsoft Teams](/microsoftteams/security-compliance-overview#security)

[Windows operating system security](/windows/security/operating-system-security/)

[Dynamics 365 security](/dynamics365/get-started/security)

[Security in Microsoft Cloud for Retail](/industry/retail/security-overview)
