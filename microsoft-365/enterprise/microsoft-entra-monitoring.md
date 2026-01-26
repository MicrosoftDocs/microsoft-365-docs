---
title: "Microsoft Entra monitoring"
ms.author: nahomagize
author: Na-ho-m
manager: dansimp
ms.date: 05/05/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - scotvorg
  - Ent_O365
  - Strat_O365_Enterprise
  - must-keep
ms.custom: admindeeplinkMAC
f1.keywords:
  - NOCSH
description: "Use monitoring for information about incidents or advisories related to Microsoft Entra."
---

# Microsoft Entra monitoring

Microsoft Entra monitoring supports the following organizational scenarios with near real-time information:

:::image type="content" source="../media/microsoft-365-entra.png" alt-text="Screenshot that shows organization-level scenarios for Microsoft Entra monitoring." lightbox="../media/microsoft-365-entra.png":::

- **Sign-ins requiring Cloud Multifactor Authentication (Completion Volume)**. Amount of users successfully completing interactive MFA sign ins using Microsoft Entra ID MFA cloud service (not counting MFA server activity). Users abandoning or canceling MFA requests, refreshing MFA sessions without doing interactive MFA, or using passwordless methods do not count in this chart at this time.

- **Sign-ins requiring a Conditional Access Compliant Device**. Amount of devices over time in your organization that successfully satisfy a conditional access policy that requires devices compliance. Compliant devices are managed by Microsoft Intune and can be mobile iOS/Android devices, tablets or cloud Microsoft Entra ID joined computers (not hybrid).

- **Sign-ins requiring a Conditional Access Managed Device**. Amount of devices over time in your organization that successfully satisfy a conditional access policy that requires devices are managed. Managed devices are computers joined to and managed by your on-premises directory and hybrid joined to Microsoft Entra ID.

- **Sign-ins to applications using SAML**. This signal helps you find potential health issues with user authentications that rely on Security Assertion Markup Language (SAML) single sign-on (SSO). It includes SAML 2.0 authentication successfully processed by the Microsoft Entra cloud service for your tenant. It does not include WS-FED/SAML 1.1 apps integrated with Microsoft Entra ID. The data in the graph is aggregated every 60 minutes.

Admins can use the information to correlate any Microsoft-reported issues with the usage data to confirm any actual impact to their organization. Also, admins can view any usage from the last two weeks of usage data to identify any anomalies.

:::image type="content" source="../media/microsoft-365-entra-1.png" alt-text="Screenshot that shows example of Microsoft Entra monitoring." lightbox="../media/microsoft-365-entra-1.png":::

**More information**

[How to investigate sign-ins requiring Microsoft Entra multifactor authentication](/entra/identity/monitoring-health/scenario-health-sign-ins-mfa).

[How to investigate the sign-ins requiring a Compliant or Managed Device alert](/entra/identity/monitoring-health/scenario-health-sign-ins-compliant-managed-device).
