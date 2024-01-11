---
title: Frequently asked questions when turning on Microsoft Defender XDR
description: Get answers to the most commonly asked questions about licensing, permissions, initial settings, and other products and services related to enabling Microsoft Defender XDR
keywords: frequently asked questions, FAQ, GCC, get started, enable Microsoft Defender XDR, Microsoft Defender XDR, M365, security, data location, required permissions, license eligibility, settings page
search.product: eADQiWindows 10XVcnh
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 02/17/2021
---

# Frequently asked questions when turning on Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**

- Microsoft Defender XDR

Read responses to the most commonly asked questions about turning on [Microsoft Defender XDR](microsoft-365-defender.md), including required licenses and permissions, deploying support services, and initial settings.

For instructions on how to turn on the service, [read Turn on Microsoft Defender XDR](m365d-enable.md).

## I don't have a Microsoft 365 E5 license. Can I still use Microsoft Defender XDR?

Customers with the following non-E5 licenses can use Microsoft Defender XDR:

- Microsoft Defender for Endpoint
- Microsoft Defender for Identity
- Microsoft Defender for Cloud Apps
- Defender for Office 365 (Plan 2)

For a full list of supported licenses, [read the licensing requirements](prerequisites.md#licensing-requirements).

<a name='do-i-need-to-install-or-deploy-anything-to-start-using-microsoft-365-defender'></a>

## Do I need to install or deploy anything to start using Microsoft Defender XDR?

No, Microsoft Defender XDR consolidates data from Microsoft 365 security services that you have already deployed. Once you turn it on, incident, automation, and hunting experiences will start working within the scope of the deployed products. If none of these products are properly deployed, Microsoft Defender XDR will not display any data and is unable to take any action.

To optimize your Microsoft Defender XDR experiences, we recommend deploying *all* supported [Microsoft 365 security products and services](deploy-supported-services.md).

<a name='where-does-microsoft-365-defender-process-and-store-my-data'></a>

## Where does Microsoft Defender XDR process and store my data?

Microsoft Defender XDR automatically selects an optimal location for the data center where consolidated data is processed and stored. If you have Microsoft Defender for Endpoint, it selects the same location used by Defender for Endpoint.

> [!NOTE]
> Microsoft Defender for Endpoint automatically provisions in European Union (EU) data centers when turned on through Microsoft Defender for Cloud. Microsoft Defender XDR will automatically provision in the same EU data center for customers who have provisioned Microsoft Defender for Endpoint in this manner.

The data center location is shown before and after the service is provisioned in the settings page for Microsoft Defender XDR (**Settings > Microsoft Defender XDR**). If you prefer to use another data center location, select **Need help?** in the Microsoft Defender portal to contact Microsoft support.

<a name='where-can-i-access-microsoft-365-defender'></a>

## Where can I access Microsoft Defender XDR?

Microsoft Defender XDR is available at: <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank"><https://security.microsoft.com></a>.

<a name='what-permissions-do-i-need-to-access-microsoft-365-defender'></a>

## What permissions do I need to access Microsoft Defender XDR?

Accounts assigned the following Microsoft Entra roles can access Microsoft Defender XDR functionality and data:

- Global administrator
- Security administrator
- Security Operator
- Global Reader
- Security Reader
- Compliance Administrator
- Compliance Data Administrator
- Application Administrator
- Cloud Application Administrator

> [!NOTE]
> Role-based access control settings in Microsoft Defender for Endpoint influence access to data. For more information, read about [managing access to Microsoft Defender XDR](m365d-permissions.md).
>
> If you are running the Microsoft Defender XDR preview program you can now also experience the new Microsoft Defender 365 role-based access control (RBAC) model. For more information, see [Microsoft Defender XDR role-based access control (RBAC) model](./manage-rbac.md).

<a name='what-time-zone-does-microsoft-365-defender-default-to'></a>

## What time zone does Microsoft Defender XDR default to?

By default, Microsoft Defender XDR displays time information in the UTC time zone. You can change this setting to use your local time zone. [Learn about setting the time zone](m365d-time-zone.md)

<a name='how-can-i-learn-about-new-microsoft-365-defender-feature-and-ui-updates'></a>

## How can I learn about new Microsoft Defender XDR feature and UI updates?

Microsoft regularly provides information through the various channels, including:

- Blogposts in the [Microsoft 365 security & compliance tech community](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/bg-p/MicrosoftThreatProtectionBlog)
- Go to [Defender monthly news](https://aka.ms/defendernews)
- The [message center](../../admin/manage/message-center.md) in Microsoft 365 admin center


Get the latest publicly available experiences by turning on [preview features](preview.md).

## Related topics

- [Microsoft Defender XDR overview](microsoft-365-defender.md)
- [Turn on Microsoft Defender XDR](m365d-enable.md).
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Setup guides for Microsoft Defender XDR](deploy-configure-m365-defender.md)
- [Turn on preview features](preview.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
