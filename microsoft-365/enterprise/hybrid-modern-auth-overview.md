---
title: "Hybrid Modern Authentication overview and prerequisites for use with on-premises Skype for Business and Exchange servers"
ms.author: kvice
ms.reviewer: smithre4
author: kelleyvice-msft
manager: scotv
ms.date: 09/25/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.assetid: ef753b32-7251-4c9e-b442-1a5aec14e58d
ms.collection:
- scotvorg
- M365-security-compliance
- must-keep
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
description: "In this article, you can learn about Hybrid Modern Authentication and the prerequisites for use with on-premises Skype for Business and Exchange servers."
---

# Hybrid modern authentication overview and prerequisites for using it with on-premises Skype for Business and Exchange servers

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

_Modern Authentication_ is a method of identity management that offers more secure user authentication and authorization. It's available for Office 365 hybrid deployments of Skype for Business server on-premises and Exchange server on-premises, and split-domain Skype for Business hybrids. This article links to related docs about prerequisites, setup/disabling modern authentication, and to some of the related client (ex. Outlook and Skype clients) information.

- [What is modern authentication?](hybrid-modern-auth-overview.md#BKMK_WhatisModAuth)
- [What changes when I use modern authentication?](hybrid-modern-auth-overview.md#BKMK_WhatChanges)
- [Check the modern authentication status of your on-premises environment](hybrid-modern-auth-overview.md#BKMK_CheckStatus)
- [Do you meet modern authentication prerequisites?](#do-you-meet-modern-authentication-prerequisites)
- [What else do I need to know before I begin?](hybrid-modern-auth-overview.md#BKMK_Whatelse)

## What is modern authentication?

<a name="BKMK_WhatisModAuth"> </a>

Modern authentication is an umbrella term for a combination of authentication and authorization methods between a client (for example, your laptop or your phone) and a server, as well as some security measures that rely on access policies that you might already be familiar with. It includes:

- **Authentication methods**: Multifactor authentication (MFA); smart card authentication; client certificate-based authentication
- **Authorization methods**: Microsoft's implementation of Open Authorization (OAuth)
- **Conditional access policies**: Mobile Application Management (MAM) and Microsoft Entra Conditional Access

Managing user identities with modern authentication gives administrators many different tools to use when it comes to securing resources and offers more secure methods of identity management to both on-premises (Exchange and Skype for Business), Exchange hybrid, and Skype for Business hybrid/split-domain scenarios.

Because Skype for Business works closely with Exchange, the sign in behavior Skype for Business client users will be affected by the modern authentication status of Exchange. It's also applicable if you have a Skype for Business _split-domain_ hybrid architecture, in which you have both Skype for Business Online and Skype for Business on-premises, with users homed in both locations.

For more information about modern authentication in Office 365, see [Office 365 Client App Support - Multi-factor authentication](microsoft-365-client-support-multi-factor-authentication.md).

> [!IMPORTANT]
> As of August of 2017, all new Office 365 tenants that include Skype for Business online and Exchange online will have modern authentication enabled by default. Pre-existing tenants won't have a change in their default MA state, but all new tenants automatically support the expanded set of identity features you see listed previously. To check your MA status, see the [Check the modern authentication status of your on-premises environment](hybrid-modern-auth-overview.md#BKMK_CheckStatus) section.

<a name="BKMK_WhatChanges"> </a>

## What changes when I use modern authentication?

When using modern authentication with on-premises Skype for Business or Exchange server, you're still *authenticating* users on-premises, but the story of *authorizing* their access to resources (like files or emails) changes. This is why, though modern authentication is about client and server communication, the steps taken during configuring MA result in evoSTS (a Security Token Service used by Microsoft Entra ID) being set as Auth Server for Skype for Business and Exchange server on-premises.

The change to evoSTS allows your on-premises servers to take advantage of OAuth (token issuance) for authorizing your clients, and also lets your on-premises use security methods common in the cloud (like Multi-factor Authentication). Additionally, the evoSTS issues tokens that allow users to request access to resources without supplying their password as part of the request. No matter where your users are homed (of online or on-premises), and no matter which location hosts the needed resource, EvoSTS would become the core of authorizing users and clients once modern authentication is configured.

For example, if a Skype for Business client needs to access Exchange server to get calendar information on behalf of a user, it uses the Microsoft Authentication Library (MSAL) to do so. MSAL is a code library designed to make secured resources in your directory available to client applications using OAuth security tokens. MSAL works with OAuth to verify claims and to exchange tokens (rather than passwords), to grant a user access to a resource. In the past, the authority in a transaction like this one--the server that knows how to validate user claims and issue the needed tokens--might have been a Security Token Service on-premises, or even Active Directory Federation Services. However, modern authentication centralizes that authority by using Microsoft Entra ID.

This also means that even though your Exchange server and Skype for Business environments might be entirely on-premises, the authorizing server is online, and your on-premises environment must have the ability to create and maintain a connection to your Office 365 subscription in the Cloud (and the Microsoft Entra instance that your subscription uses as its directory).

What doesn't change? Whether you're in a split-domain hybrid or using Skype for Business and Exchange server on-premises, all users must first authenticate *on-premises*. In a hybrid implementation of modern authentication, _Lyncdiscovery_ and _Autodiscovery_ both point to your on-premises server.

> [!IMPORTANT]
> If you need to know the specific Skype for Business topologies supported with MA, that's [documented right here](/skypeforbusiness/plan-your-deployment/modern-authentication/topologies-supported).

## Check the modern authentication status of your on-premises environment

<a name="BKMK_CheckStatus"> </a>

Because modern authentication changes the authorization server used when services apply OAuth/S2S, you need to know if modern authentication is enabled or disabled for your on-premises Skype for Business and Exchange environments. You can check the status on your Exchange servers by running the following PowerShell command:

```powershell
Get-OrganizationConfig | ft OAuth*
```

If the value of the _OAuth2ClientProfileEnabled_ property is **False**, then modern authentication is disabled.

For more information about the `Get-OrganizationConfig` cmdlet, see [Get-OrganizationConfig](/powershell/module/exchange/get-organizationconfig).

You can check your Skype for Business servers by running the following PowerShell command:

```powershell
Get-CSOAuthConfiguration
```

If the command returns an empty _OAuthServers_ property, or if the value of the _ClientADALAuthOverride_ property isn't **Allowed**, then modern authentication is disabled.

For more information about the `Get-CsOAuthConfiguration` cmdlet, see [Get-CsOAuthConfiguration](/powershell/module/skype/get-csoauthconfiguration).

## Do you meet modern authentication prerequisites?

Verify and check these items off your list before you continue:

- **Skype for Business specific**
  - All servers must have May 2017 cumulative update (CU5) for Skype for Business Server 2015 or later
    - **Exception** - Survivability Branch Appliance (SBA) can be on the current version (based on Lync 2013)
  - Your SIP domain is added as a Federated domain in Office 365
  - All SFB Front Ends must have connections outbound to the internet, to Office 365 Authentication URLs (TCP 443) and well-known certificate root CRLs (TCP 80) listed in Rows 56 and 125 of the 'Microsoft 365 Common and Office' section of [Office 365 URLs and IP address ranges](urls-and-ip-address-ranges.md).

- **Skype for Business on-premises in a hybrid Office 365 environment**
  - A Skype for Business Server 2019 deployment with all servers running Skype for Business Server 2019.
  - A Skype for Business Server 2015 deployment with all servers running Skype for Business Server 2015.
  - A deployment with a maximum of two different server versions as listed below:
    - Skype for Business Server 2015
    - Skype for Business Server 2019
  - All Skype for Business servers must have the latest cumulative updates installed, see [Skype for Business Server updates](/skypeforbusiness/sfb-server-updates) to find and manage all available updates.
  - There's no Lync Server 2010 or 2013 in the hybrid environment.

>[!NOTE]
>If your Skype for Business front-end servers use a proxy server for Internet access, the proxy server IP and Port number used must be entered in the configuration section of the web.config file for each front end.

- C:\Program Files\Skype for Business Server 2015\Web Components\Web ticket\int\web.config
- C:\Program Files\Skype for Business Server 2015\Web Components\Web ticket\ext\web.config

```xml
<configuration>
  <system.net>
    <defaultProxy>
      <proxy
        proxyaddress="https://192.168.100.60:8080"
        bypassonlocal="true" />
    </defaultProxy>
  </system.net>
</configuration>
```

> [!IMPORTANT]
> Be sure to subscribe to the RSS feed for [Office 365 URLs and IP address ranges](urls-and-ip-address-ranges.md) to stay current with the latest listings of required URLs.

- **Exchange Server specific**
  - You're using either Exchange server 2013 CU19 and up, Exchange server 2016 CU8 and up, or Exchange Server 2019 CU1 and up.
  - There's no Exchange server 2010 in the environment.
  - SSL Offloading is not configured. SSL termination and re-encryption are supported.
  - In the event your environment utilizes a proxy server infrastructure to allow servers to connect to the Internet, be sure all Exchange servers have the proxy server defined in the [InternetWebProxy](/powershell/module/exchange/set-exchangeserver) property.

- **Exchange Server on-premises in a hybrid Office 365 environment**

  - If you're using Exchange Server 2013, at least one server must have the Mailbox and Client Access server roles installed. While it's possible to install the Mailbox and Client Access roles on separate servers, we strongly recommend that you install both roles on the same server to provide more reliability and improved performance.
  - If you're using Exchange server 2016 or later version, at least one server must have the Mailbox server role installed.
  - There's no Exchange server 2007 or 2010 in the Hybrid environment.
  - All Exchange servers must have the latest cumulative updates installed. See [Upgrade Exchange to the latest Cumulative Updates](/exchange/plan-and-deploy/install-cumulative-updates) to find and manage all available updates.

- **Exchange client and protocol requirements**

    The availability of modern authentication is determined by the combination of the client, protocol, and configuration. If modern authentication isn't supported by the client, protocol, and/or configuration, then the client continues to use legacy authentication.
  
    The following clients and protocols support modern authentication with on-premises Exchange when modern authentication is enabled in the environment:

  |**Clients**|**Primary Protocol**|**Notes**|
  |:-----|:-----|:-----|
  |Outlook 2013 and later  <br/> |MAPI over HTTP  <br/> |MAPI over HTTP must be enabled within Exchange in order to use modern authentication with these clients (enabled or True for new installs of Exchange 2013 Service Pack 1 and above); for more information, see [How modern authentication works for Office 2013 and Office 2016 client apps](modern-auth-for-office-2013-and-2016.md).  <br/> Ensure you're running the minimum required build of Outlook; see [Latest updates for versions of Outlook that use Windows Installer (MSI)](/officeupdates/outlook-updates-msi).  <br/> |
  |Outlook 2016 for Mac and later  <br/> |Exchange Web Services  <br/> |  <br/> |
  |Outlook for iOS and Android  <br/> | Microsoft sync technology <br/> |See [Using hybrid Modern Authentication with Outlook for iOS and Android](/Exchange/clients/outlook-for-ios-and-android/use-hybrid-modern-auth) for more information.  <br/> |
  |Exchange ActiveSync clients (for example, iOS11 Mail)  <br/> |Exchange ActiveSync  <br/> |For Exchange ActiveSync clients that support modern authentication, you must recreate the profile in order to switch from basic authentication to modern authentication.  <br/> |

    Clients and/or protocols that aren't listed (for example, POP3) don't support modern authentication with on-premises Exchange and continue to use legacy authentication mechanisms even after modern authentication is enabled in the environment.

- **General prerequisites**
  - Resource forest scenarios require a two-way trust with the account forest to ensure proper SID lookups are performed during hybrid modern authentication requests. 
  - If you use AD FS, you should have Windows 2012 R2 AD FS 3.0 and above for federation.
  - Your identity configurations are any of the types supported by Microsoft Entra Connect, such as password hash sync, pass-through authentication, and on-premises STS supported by Office 365.
  - You have Microsoft Entra Connect configured and functioning for user replication and sync.
    > [!NOTE]
    > Any user accounts that are not synchronized to Microsoft Entra Identity won't be provided an authorization token via Hybrid Modern Authentication. Once the on-premises application is configured to use evoSTS as the default authorization endpoint, these user accounts that aren't synchronized will encounter issues with their access to the application if appropriate configuration isn't available.
  - You have verified that hybrid is configured using Exchange Classic Hybrid Topology mode between your on-premises and Office 365 environment. Official support statement for Exchange hybrid says you must have either current CU or current CU - 1.
    > [!NOTE]
    > Hybrid modern authentication is not supported with the [Hybrid Agent](/exchange/hybrid-deployment/hybrid-agent).

  - Make sure both an on-premises test user, and a hybrid test user homed in Office 365, can sign in to the Skype for Business desktop client (if you want to use modern authentication with Skype) and Microsoft Outlook (if you want to use modern authentication with Exchange).
  - Make sure the SignInOptions setting in Microsoft Office isn't configured to its most restrictive setting. For more information, see [How to allow Office to connect to the internet](/office365/troubleshoot/access-management/office-feature-disabled).

## What else do I need to know before I begin?

<a name="BKMK_Whatelse"> </a>

- All the scenarios for on-premises servers involve setting up modern authentication on-premises (in fact, for Skype for Business there's a list of supported topologies) so that the server responsible for authentication and authorization is in the Microsoft Cloud (Microsoft Entra ID's security token service, called 'evoSTS'), and updating Microsoft Entra ID about the URLs or namespaces used by your on-premises installation of either Skype for Business or Exchange. Therefore, on-premises servers take on a Microsoft Cloud dependency. Taking this action could be considered configuring 'hybrid auth'.
- This article links out to others that help you choose supported modern authentication topologies (necessary only for Skype for Business), and how-to articles that outline the setup steps, or steps to disable modern authentication, for Exchange on-premises and Skype for Business on-premises. Favorite this page in your browser if you're going to need a home-base for using modern authentication in your server environment.

## Related Topics

<a name="BKMK_URLListforMA"> </a>

- [How to configure Exchange Server on-premises to use Modern Authentication](configure-exchange-server-for-hybrid-modern-authentication.md)
- [Skype for Business topologies supported with Modern Authentication](/skypeforbusiness/plan-your-deployment/modern-authentication/topologies-supported)
- [Removing or disabling Hybrid Modern Authentication from Skype for Business and Exchange](remove-or-disable-hybrid-modern-authentication-from-skype-for-business-and-excha.md)
