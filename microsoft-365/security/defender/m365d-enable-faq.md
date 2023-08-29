---
title: Frequently asked questions when turning on Microsoft 365 Defender
description: Get answers to the most commonly asked questions about licensing, permissions, initial settings, and other products and services related to enabling Microsoft 365 Defender
keywords: frequently asked questions, FAQ, GCC, get started, enable Microsoft 365 Defender, Microsoft 365 Defender, M365, security, data location, required permissions, license eligibility, settings page
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
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

# Frequently asked questions when turning on Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**

- Microsoft 365 Defender

Read responses to the most commonly asked questions about turning on [Microsoft 365 Defender](microsoft-365-defender.md), including required licenses and permissions, deploying support services, and initial settings.

For instructions on how to turn on the service, [read Turn on Microsoft 365 Defender](m365d-enable.md).

## I don't have a Microsoft 365 E5 license. Can I still use Microsoft 365 Defender?

Customers with the following non-E5 licenses can use Microsoft 365 Defender:

- Microsoft Defender for Endpoint
- Microsoft Defender for Identity
- Microsoft Defender for Cloud Apps
- Defender for Office 365 (Plan 2)

For a full list of supported licenses, [read the licensing requirements](prerequisites.md#licensing-requirements).

## Do I need to install or deploy anything to start using Microsoft 365 Defender?

No, Microsoft 365 Defender consolidates data from Microsoft 365 security services that you have already deployed. Once you turn it on, incident, automation, and hunting experiences will start working within the scope of the deployed products. If none of these products are properly deployed, Microsoft 365 Defender will not display any data and is unable to take any action.

To optimize your Microsoft 365 Defender experiences, we recommend deploying *all* supported [Microsoft 365 security products and services](deploy-supported-services.md).

## Where does Microsoft 365 Defender process and store my data?

Microsoft 365 Defender automatically selects an optimal location for the data center where consolidated data is processed and stored. If you have Microsoft Defender for Endpoint, it selects the same location used by Defender for Endpoint.

> [!NOTE]
> Microsoft Defender for Endpoint automatically provisions in European Union (EU) data centers when turned on through Microsoft Defender for Cloud. Microsoft 365 Defender will automatically provision in the same EU data center for customers who have provisioned Microsoft Defender for Endpoint in this manner.

The data center location is shown before and after the service is provisioned in the settings page for Microsoft 365 Defender (**Settings > Microsoft 365 Defender**). If you prefer to use another data center location, select **Need help?** in the Microsoft 365 Defender portal to contact Microsoft support.

## Where can I access Microsoft 365 Defender?

Microsoft 365 Defender is available at: <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank"><https://security.microsoft.com></a>.

## What permissions do I need to access Microsoft 365 Defender?

Accounts assigned the following Azure Active Directory (Azure AD) roles can access Microsoft 365 Defender functionality and data:

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
> Role-based access control settings in Microsoft Defender for Endpoint influence access to data. For more information, read about [managing access to Microsoft 365 Defender](m365d-permissions.md).
>
> If you are running the Microsoft 365 Defender preview program you can now also experience the new Microsoft Defender 365 role-based access control (RBAC) model. For more information, see [Microsoft 365 Defender role-based access control (RBAC) model](./manage-rbac.md).

## What time zone does Microsoft 365 Defender default to?

By default, Microsoft 365 Defender displays time information in the UTC time zone. You can change this setting to use your local time zone. [Learn about setting the time zone](m365d-time-zone.md)

## How can I learn about new Microsoft 365 Defender feature and UI updates?

Microsoft regularly provides information through the various channels, including:

- Blogposts in the [Microsoft 365 security & compliance tech community](https://techcommunity.microsoft.com/t5/microsoft-365-defender-blog/bg-p/MicrosoftThreatProtectionBlog)
- Go to [Defender monthly news](https://aka.ms/defendernews)
- The [message center](../../admin/manage/message-center.md) in Microsoft 365 admin center


Get the latest publicly available experiences by turning on [preview features](preview.md).

## Related topics

- [Microsoft 365 Defender overview](microsoft-365-defender.md)
- [Turn on Microsoft 365 Defender](m365d-enable.md).
- [Licensing requirements and other prerequisites](prerequisites.md)
- [Deploy supported services](deploy-supported-services.md)
- [Setup guides for Microsoft 365 Defender](deploy-configure-m365-defender.md)
- [Turn on preview features](preview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
