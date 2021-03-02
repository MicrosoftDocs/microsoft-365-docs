---
title: "Microsoft Application Protection and Governance in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Implement Microsoft Application Protection and Governance capabilities to govern your apps."
---

# Microsoft Application Protection and Governance in Microsoft 365 (in preview)

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Microsoft Application Protection and Governance (MAPG) is a security and compliance solution for business productivity and line of business apps built by third-party vendors and published for the Microsoft 365 application platform. MAPG delivers full visibility, oversight, and governance into how these publishers and apps access, use, and share your sensitive data stored in Microsoft 365 through automated app-specific services and open Internet authentication protocols.

<!--
The scale of ongoing cybersecurity incidents affecting large enterprises and smaller businesses highlights the dangers of supply chain attacks and the need to strengthen the security and compliance posture of every organization. Accelerated cloud adoption with Microsoft 365 and its rich application ecosystem are constantly growing. Attackers are gaining organizational footholds through applications because:

- Users are typically unaware of the risks when consenting to the use of applications. 
- App developers and independent software vendors (ISVs) do not yet have Security Development Lifecycle (SDL) best practices in place to address attacker techniques.
--> 

MAPG provides you with comprehensive:

- **Insights**: See a view of all the third-party apps for the Microsoft 365 platform in your tenant on a single dashboard. You can see all the apps’ status and alert activities and react or respond to them.
- **Governance**: Create proactive or reactive policies for app and user patterns and behaviors and protect your users from using non-compliant or malicious apps and limiting the access of risky apps to your data.
- **Detection**: Be alerted and notified when there are anomalies in app activity and when non-compliant, malicious, or risky apps are used. 
- **Remediation**: Along with automatic remediation capabilities, use remediation tools and controls in a timely manner to respond to anomalous app activity detections.

Unlike other application governance products in the marketplace, MAPG is a platform-based solution that is an integral part of the Microsoft 365 app ecosystem. MAPG oversees and governs OAuth-enabled apps that are registered with Azure Active Directory (Azure AD) and accessing data through the Microsoft Graph API. MAPG provides you with application behavior controls to help strengthen the security and compliance posture of your IT infrastructure.

<!--
Unlike other application governance products in the marketplace, MAPG is a platform-based solution that is an integral part of the Microsoft 365 application ecosystem. MAPG's initial focus is on OAuth-enabled apps published to the Microsoft 365 platform that are registered with Azure AD and access data through the Graph API. For the initial release, MAPG does not support other, non-OAuth-enabled M365 apps, add-ins (such as PowerBI), or other app vendor ecosystems such as Google, Facebook, Amazon Web Services, Workplace, and Salesforce. MAPG’s focus is on third-party published apps for the Microsoft 365 application platform.

Microsoft allows developers to build cloud applications using Azure Active Directory (Azure AD), Microsoft’s cloud identity platform, and other resources and access to tenant data through the Microsoft Graph. Because of MAPG's visibility, insights, and control capabilities, app developers have the incentive to comply with publisher verification, self-attestation, and Microsoft certification, and can build high-quality productivity apps that are secure and compliant.
--> 

## Licensing for MAPG

TBD

## Administrator roles

One of the following administrator roles are required to see MAPG pages or manage policies and settings:

- Security Administrator 
- Security Reader (read-only) 
- Security Operator 
- Compliance Administrator 
- Compliance Reader (read-only) 
- Global Administrator 
- Global Reader

Here are the capabilities for each role.

| Role | Read the dashboard | Read all apps |Read policies | Create, update, or delete policies | Read alerts | Update alerts | Read settings | Update settings |
|:-------|:-----|:-------|:-------|:-------|:-------|:-------|:-------|:-------|
| Compliance Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Compliance Reader | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |  | ![Check mark](..\media\checkmark.png) |  | ![Check mark](..\media\checkmark.png) |  |
| Global Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Global Reader  | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |  | ![Check mark](..\media\checkmark.png) |  | ![Check mark](..\media\checkmark.png) |  |
| Security Administrator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
| Security Reader  | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |  | ![Check mark](..\media\checkmark.png) |  | ![Check mark](..\media\checkmark.png) |  |
| Security Operator | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) | ![Check mark](..\media\checkmark.png) |
||||||||||

For additional information about each role, see [Administrator role permissions](https://docs.microsoft.com/azure/active-directory/roles/permissions-reference). 

## A first glimpse at MAPG

To see the MAPG dashboard, go to [https://compliance.microsoft.com/m365appprotection](https://compliance.microsoft.com/m365appprotection).

## Using MAPG

Using MAPG to protect your tenant and its data from potentially malicious or ill-behaved apps falls into these three core capabilities:

| Capability | Description |
|:-------|:-----|
| [App visibility and insights](mapg-visibility-insights-overview.md) | Get a 360° view on traffic and activity of the Microsoft 365 applications in your tenant. |
| [App policies for reinforced governance](mapg-app-policies-overview.md) | Create proactive or reactive app policies, which will allow you to enforce governance for your Microsoft 3635 apps. |
| [Detection and remediation](mapg-detect-remediate-overview.md) | Based on platform detection alerts or policy-generated detection alerts, monitor your apps for anomalous app behavior and remediate them, either automatically based on app policy settings or manually. |
|||
