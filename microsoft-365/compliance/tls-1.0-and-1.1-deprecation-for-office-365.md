---
title: Disabling TLS 1.0 and 1.1 for Microsoft 365
description: Describes TLS 1.0 and 1.1 deprecation and disablement for Microsoft 365.
author: workshay
manager: laurawi
localization_priority: Normal
search.appverid: 
- MET150
audience: ITPro
ms.service: O365-seccomp
ms.topic: article
ms.author: fasqiu
ms.reviewer: krowley
appliesto:
- Microsoft 365 Apps for enterprise
- Office 365 Business
- Office 365 Personal
- Office Online Server
- Office Web Apps
---

# Disabling TLS 1.0 and 1.1 for Microsoft 365

> [!IMPORTANT]
> We temporarily halted disablement of TLS 1.0 and 1.1 for commercial customers due to COVID-19. As supply chains have adjusted and certain countries open back up, we restarted the TLS 1.2 enforcement rollout on October 15, 2020. Rollout will continue over the following weeks and months.

As of October 31, 2018, the Transport Layer Security (TLS) 1.0 and 1.1 protocols are deprecated for the Microsoft 365 service. The effect for end-users is minimal. This change has been publicized for over two years, with the first public announcement made in December 2017. This article is only intended to cover the Office 365 local client in relation to the Office 365 service but can also apply to on-premises TLS issues with Office and Office Online Server/Office Web Apps.

For SharePoint and OneDrive, you'll need to update and configure .NET to support TLS 1.2. For information, see [How to enable TLS 1.2 on clients](/mem/configmgr/core/plan-design/security/enable-tls-1-2-client).

## Office 365 and TLS overview

The Office client relies on the Windows web service (WINHTTP) to send and receive traffic over TLS protocols. The Office client can use TLS 1.2 if the web service of the local computer can use TLS 1.2. All Office clients can use TLS protocols, as TLS and SSL protocols are part of the operating system and not specific to the Office client.

### On Windows 8 and later versions

By default, the TLS 1.2 and 1.1 protocols are available if no network devices are configured to reject TLS 1.2 traffic.

### On Windows 7

TLS 1.1 and 1.2 protocols are not available without the [KB 3140245](https://support.microsoft.com/help/3140245) update. The update addresses this issue and adds the following registry sub key:

```console
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp
```

> [!NOTE]
> Windows 7 users who do not have this update are affected as of October 31, 2018. [KB 3140245](https://support.microsoft.com/help/3140245) has details about how to change WINHTTP settings to enable TLS protocols.

#### More information

The value of the **DefaultSecureProtocols** registry key that the KB article describes determines which network protocols can be used:

|DefaultSecureProtocols Value|Protocol enabled|
|-|-|
|0x00000008|Enable SSL 2.0 by default|
|0x00000020|Enable SSL 3.0 by default|
|0x00000080|Enable TLS 1.0 by default|
|0x00000200|Enable TLS 1.1 by default|
|0x00000800|Enable TLS 1.2 by default|

## Office clients and TLS registry keys

You can refer to [KB 4057306 Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306). This is a general article for IT administrators, and it's official documentation about the TLS 1.2 change.

The following table shows the appropriate registry key values in Office 365 clients after October 31, 2018.

|Enabled protocols for Office 365 service after October 31, 2018|Hexadecimal value|
|-|-|
|TLS 1.0 + 1.1 + 1.2|0x00000A80|
|TLS 1.1 + 1.2|0x00000A00|
|TLS 1.0 + 1.2|0x00000880|
|TLS 1.2|0x00000800|

> [!IMPORTANT]
> Don't use the SSL 2.0 and 3.0 protocols, which can also be set by using the **DefaultSecureProtocols** key. SSL 2.0 and 3.0 are considered outdated and insecure protocols. The best practice is to end the use of SSL 2.0 and SSL 3.0, although the decision to do this ultimately depends on what best meets your product needs. For more information about SSL 3.0 vulnerabilities, refer to [KB 3009008](https://support.microsoft.com/help/3009008).

You can use the default Windows Calculator in Programmer mode to set up the same reference registry key values. For more information, see [KB 3140245 Update to enable TLS 1.1 and TLS 1.2 as a default secure protocols in WinHTTP in Windows](https://support.microsoft.com/help/3140245).

Regardless if the Windows 7 update ([KB 3140245](https://support.microsoft.com/help/3140245)) is installed or not, the DefaultSecureProtocols registry sub key isn't present and must be added manually or through a group policy object (GPO). That is, unless you have to customize what secure protocols are enabled or restricted, this key is not required. You only need the Windows 7 SP1 ([KB 3140245](https://support.microsoft.com/help/3140245)) update.

## Update and configure the .NET Framework to support TLS 1.2

You'll need to update applications that call Microsoft 365 APIs over TLS 1.0 or TLS 1.1 to use TLS 1.2. .NET 4.5 defaults to TLS 1.1. To update your .NET configuration, see [How to enable Transport Layer Security (TLS) 1.2 on clients](/mem/configmgr/core/plan-design/security/enable-tls-1-2-client).

## More information

For more information, see [Preparing for the mandatory use of TLS 1.2 in Office 365](https://support.microsoft.com/help/4057306/preparing-for-tls-1-2-in-office-365).