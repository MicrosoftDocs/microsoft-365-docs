---
title: "Microsoft Application and Protection Governance in Microsoft 365"
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
description: "Implement Microsoft Application and Protection Governance capabilities to govern your apps."
---

# Microsoft Application and Protection Governance in Microsoft 365 (in preview)

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Microsoft Application Protection and Governance (MAPG) is a security and compliance solution for business productivity applications built by third-party vendors and published on Microsoft 365 application platform. It delivers full visibility, oversight, and governance into how these publishers and apps access, use, and share customer data in the Microsoft 365 platform through automated app-specific services and open authentication Internet protocols.

The scale of ongoing cyber-attacks incidents affecting large enterprises and smaller businesses highlights the dangers of supply chain attacks and the need to strengthen the security and compliance posture of every large company. Accelerated cloud adoption and rich application ecosystem are in constant growth. Attackers are gaining organizational footholds through applications and users are generally unaware of the risks when consenting to applications.

At the same time, app developers and ISVs have not gained yet substantial Security Development Lifecycle (SDL) practices to address attacker techniques.

MAPG provides you with comprehensive:

- **Insights**: See a view of all of your Microsoft 365 applications in your tenant in a single dashboard. You can see all the applications’ activities and react or respond to them.
- **Governance**: Create proactive or reactive policies for application and user patterns and behaviors and protect your users from using non-compliant or malicious apps and limiting access to data through risky apps.
- **Detection**: Be alerted and notified when there are anomalies in app activity and when non-compliant, malicious, or risky apps are used. 
- **Remediation**: Along with automatic remediation capabilities, use remediation tools and controls in a timely manner to respond to anomalous app activity detections.

Unlike other application governance products in the marketplace, MAPG is a platform-based solution that is an integral part of the Microsoft 365 app ecosystem. MAPG’s service initial focus is on published to Microsoft 365 platform OAuth-enabled apps registered with Azure AD that access data with the Graph API.  For the initial release, MAPG does not support other, non-OAuth-enabled M365 Apps, add-ins (PowerBI), or other App vendor ecosystems such as Google, Facebook, Amazon Web Services, Workplace, and Salesforce. Its focus is on M365 application platform with 3rd party published Apps.

Today, Microsoft allows developers to build cloud applications using Azure AD, Microsoft’s cloud identity platform, and other resources and access to tenant data through the Microsoft Graph. Because of MAPG's visibility, insights, and control capabilities over apps, developers have incentive to comply with publisher verification, self-attestation and Microsoft certification, and can build high-quality productivity apps that are secure and compliant.


## Licensing for MAPG

TBD

## Administrator roles

One of the following administration roles are required to see MAPG pages and manage policies and settings:

- Security Administrator 
- Security Reader (read-only) 
- Security Operator 
- Compliance Administrator 
- Compliance Reader (read-only) 
- Global Administrator 
- Global Reader

REVIEWERS: I have plans to add the role/capabilities table from the onboarding guide.

## Using MAPG

Using MAPG to protect your tenant and its data from potentially malicious or ill-behaved apps falls into these three core capabilities:

| Capability | Description |
|:-------|:-----|
| App visibility and insights (add link to first article in **Visibility and insights** node) | Get a 360° view on traffic and activity of the Microsoft 365 applications in your tenant. |
| App policies for reinforced governance (add link to first article in **App policies** node) | Create proactive or reactive app policies, which will allow you to enforce governance for your Microsoft 3635 apps. |
| Detection and remediation (add link to first article in **Detection and remediation** node) | Based on the alerts generated through the settings on your app policies, monitor your apps for anomalous app behavior and remediate them, either automatically based on app policy settings or manually. |
|||
