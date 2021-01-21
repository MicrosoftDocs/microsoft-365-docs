---
title: App monitoring & reporting - Security center
description: Learn how to gain more insight into cloud app use in your organization. Includes different kinds of apps, their level of risk, and alerts.
keywords: security, malware, Microsoft 365, M365, security center, monitor, report, apps
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords: 
  - NOCSH
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
search.appverid: met150
ms.custom: seo-marvel-apr2020
ms.technology: m365d
---

# App monitoring and reporting in the Microsoft 365 security center

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


These reports provide more insight into how cloud apps are being used in your organization. Includes different kinds of apps, their level of risk, and alerts.

## Monitor email accounts at risk

**Email protection** shows email accounts at risk. You can select an account to investigate further in Microsoft Defender Security Center.

![Email protection card](../../media/email-protection.png)

## Monitor app permissions granted by users

**Cloud App Security - OAuth apps** lists apps discovered by Cloud App Security that have been granted permissions by users. Cloud App Security's risk catalog includes over 16,000 apps that are assessed using over 70 risk factors.

The risk factors start from general information, such as the app publisher. It then moves to security measures and controls, such as whether the app supports encryption at rest or provides an audit log of user activity.

![Cloud App Security OAuth apps card](../../media/cloud-app-security-oauth-apps.png)

## Monitor cloud app user accounts

**Cloud app accounts for review** lists accounts that may require attention.

![Cloud App accounts for review card](../../media/cloud-app-accounts-for-review.png)

## Understand which cloud apps are used

**Discovered cloud apps (categories)** show what kinds of apps are being used in your organization. It links to the Cloud Discovery dashboard in Cloud App Security. For more information, see [Quickstart: Work with discovered apps](https://docs.microsoft.com/cloud-app-security/discovered-apps).  

![Discovered cloud apps categories card](../../media/discovered-cloud-apps-categories.png)

## Monitor where users access cloud apps

**Cloud app activity locations** show where users are accessing cloud apps.

![Cloud App activity locations card](../../media/cloud-app-activity-locations.png)

## Monitor health for infrastructure workloads

**Infrastructure health** shows health status alerts for infrastructure workloads in Azure Defender.

Azure Defender provides unified security management and Defender for Office 365 across on-premises and cloud workloads. You can collect, search, and analyze security data from different sources, including firewalls and other partner solutions.

For more information, see [Azure Defender Documentation](https://docs.microsoft.com/azure/security-center/).

![Infrastructure health card](../../media/infrastructure-health.png)
