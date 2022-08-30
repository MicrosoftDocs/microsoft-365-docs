---
title: Insider risk management
description: Learn how to configure insider risk management.
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- m365-security-compliance
- m365solution-insiderrisk
- m365initiative-compliance
- m365solution-scenario
---

# Insider risk management

Increasingly, employees have more access to create, manage, and share data across a broad spectrum of platforms and services. In most cases, organizations have limited resources and tools to identify and mitigate organization-wide risks while also meeting compliance requirements and employee privacy standards. These risks may include data theft by departing employees and data leaks of information outside your organization by accidental oversharing or malicious intent.

Microsoft Purview Insider Risk Management uses the full breadth of service and 3rd-party indicators to help you quickly identify, triage, and act on risky user activity. By using logs from Microsoft 365 and Microsoft Graph, insider risk management allows you to define specific policies to identify risk indicators. After identifying the risks, you can take action to mitigate these risks.

Watch the videos below to learn how insider risk management can help your organization prevent, detect, and contain risks:
<br>
<br>

**Insider risk management solution & development**:
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4j9CN]
<br>

**Insider risk management workflow**:
>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4OUXB]

## Subscriptions and licensing

Before you get started with insider risk management, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) and any add-ons. To access and use insider risk management, your organization must have one of the following subscriptions or add-ons:

- Microsoft 365 E5/A5/F5/G5 subscription (paid or trial version)
- Microsoft 365 E3/A3/F3/G3 subscription + the Microsoft 365 E5/A5/F5/G5 Compliance add-on
- Microsoft 365 E3/A3/F3/G3 subscription + the Microsoft 365 E5/A5/F5/G5 Insider Risk Management add-on
- Office 365 E3 subscription + Enterprise Mobility and Security E3 + the Microsoft 365 E5 Compliance add-on

Users included in insider risk management policies must be assigned one of the licenses above.

> [!IMPORTANT]
> Insider risk management is currently available in tenants hosted in geographical regions and countries supported by Azure service dependencies. To verify that insider risk management is supported for your organization, see [Azure dependency availability by country/region](/troubleshoot/azure/general/dependency-availability-by-country).

If you don't have an existing Microsoft 365 Enterprise E5 plan and want to try insider risk management, you can [add Microsoft 365](/office365/admin/try-or-buy-microsoft-365) to your existing subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 Enterprise E5.

## Configure insider risk management

Use the following steps to configure insider risk management for your organization:

![Insider risk solution insider risk management steps.](../media/ir-solution-ir-steps.png)

1. Learn about [insider risk management](insider-risk-management.md)
2. Plan for [insider risk management and verify licensing](insider-risk-management-plan.md)
3. Configure [insider risk management settings](insider-risk-management-settings.md)
4. Configure [permissions](insider-risk-management-configure.md#step-1-required-enable-permissions-for-insider-risk-management) and [policy prerequisites & connectors](insider-risk-management-configure.md#step-4-recommended-configure-prerequisites-for-policies)
5. Create and configure [insider risk management policies](insider-risk-management-configure.md#step-6-required-create-an-insider-risk-management-policy)

## More information about insider risk management

- [Manage insider risk policies](insider-risk-management-policies.md)
- [Investigate insider risk activities](insider-risk-management-activities.md)
- [Act on insider risk cases](insider-risk-management-cases.md)
