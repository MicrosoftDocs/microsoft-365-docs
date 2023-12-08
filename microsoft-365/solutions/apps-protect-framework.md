---
title: "Use the app protection framework with Microsoft Intune"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Use the app protection framework with Microsoft Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Use the app protection framework

Your organization's data protection requirements may differ from other organizations. For this reason, you can tailor the app protection that you deploy from Intune based on your organization's specific needs. You can use the App protection policy (APP) data protection framework to apply app protection across your organization. The APP data protection framework is organized into three distinct configuration levels, with each consecutive level building off the previous level.

| Protection   level | Description |
|---|---|
| Enterprise basic data protection<br>(Level 1) | This is an entry level configuration that provides similar data protection control in Exchange Online mailbox policies and introduces you and your IT admins APP. Microsoft recommends this configuration as the minimum data protection configuration for an enterprise device. |
| Enterprise enhanced data protection<br>(Level 2)  | This protection level, which builds on the previous level, is applicable to most mobile users accessing work or school data. Microsoft recommends this configuration for devices where users access sensitive or confidential information.  |
| Enterprise high data protection<br>(Level 3) | This protection level, which also builds on the previous level, is desirable for users that are accessing high risk data.  Microsoft recommends this configuration for devices run by an organization with a larger or more sophisticated security team, or for specific users or groups who are at uniquely high risk (users who handle highly sensitive data where unauthorized disclosure causes considerable material loss to the organization). An organization likely to be targeted by well-funded and sophisticated adversaries should aspire to this configuration. |

> [!IMPORTANT]
> Because each protection level builds on the previous, you should consider implementing them in order.



<!--
https://learn.microsoft.com/mem/intune/apps/app-protection-policy#app-protection-policy-data-protection-framework
-->