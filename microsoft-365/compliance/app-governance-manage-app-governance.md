---
title: "App governance in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: v-tophillips
author: v-tophillips
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Implement Microsoft app governance capabilities to govern your apps."
---

# App governance add-on to Microsoft Cloud App Security (in preview)

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

:::image type="content" source="../media/manage-app-protection-governance/large-app-governance-banner.png" alt-text="Sign up for the free trial of app governance":::

[![Sign up for the free trial of app governance](../media/manage-app-protection-governance/large-app-governance-banner.png)](https://admin.microsoft.com/Commerce/Trial.aspx?OfferId=20be85b6-b196-402c-82b4-36b4e72862dc)

> [!NOTE]
> To sign up for app governance, see [Get started with app governance (in preview)](app-governance-get-started.md).

Cyberattacks have become increasingly sophisticated in the ways they exploit the apps you have deployed in your on-premises and cloud infrastructures, establishing a starting point for privilege escalation, lateral movement, and exfiltration of your data. To understand the potential risks and stop these types of attacks, you need to gain clear visibility into your organization’s app compliance posture to quickly identify when an app exhibits anomalous behaviors and to respond when these behaviors present risks to your environment, data, and users.

The app governance add-on feature to Microsoft Cloud App Security is a security and policy management capability designed for OAuth-enabled apps that access Microsoft 365 data through Microsoft Graph APIs. App governance delivers full visibility, remediation, and governance into how these apps and their users access, use, and share your sensitive data stored in Microsoft 365 through actionable insights and automated policy alerts and actions.

<!--
The scale of ongoing cybersecurity incidents affecting large enterprises and smaller businesses highlights the dangers of supply chain attacks and the need to strengthen the security and compliance posture of every organization. Accelerated cloud adoption with Microsoft 365 and its rich application ecosystem are constantly growing. Attackers are gaining organizational footholds through applications because:

- Users are typically unaware of the risks when consenting to the use of applications. 
- App developers and independent software vendors (ISVs) do not yet have Security Development Lifecycle (SDL) best practices in place to address attacker techniques.
-->

App governance provides you with comprehensive:

- **Insights**: See a view of all the third-party apps for the Microsoft 365 platform in your tenant on a single dashboard. You can see all the apps’ status and alert activities and react or respond to them.
- **Governance**: Create proactive or reactive policies for app and user patterns and behaviors and protect your users from using non-compliant or malicious apps and limiting the access of risky apps to your data.
- **Detection**: Be alerted and notified when there are anomalies in app activity and when non-compliant, malicious, or risky apps are used.
- **Remediation**: Along with automatic remediation capabilities, use remediation controls in a timely manner to respond to anomalous app activity detections.

App governance is a platform-based solution that is an integral part of the Microsoft 365 app ecosystem. App governance oversees and governs OAuth-enabled apps that are registered with Azure Active Directory (Azure AD) and access data through the Microsoft Graph API. App governance provides you with application behavior controls to help strengthen the security and compliance posture of your IT infrastructure.

## A first glimpse at app governance

To see the app governance dashboard, go to [https://compliance.microsoft.com/appgovernance](https://compliance.microsoft.com/appgovernance). Note that your sign-in account must have one of the [administrator roles](app-governance-get-started.md#administrator-roles) to view any app governance data.

## App governance integration with Azure AD and Microsoft Cloud App Security

App governance, Azure AD, and Microsoft Cloud App Security collect and provide different data sets:

- App governance provides detailed information about an app’s activity at the API level.
- Azure AD provides foundational app metadata and detailed information on sign-ins to apps.
- Microsoft Cloud App Security provides app risk information.

By sharing information across app governance, Azure AD, and Microsoft Cloud App Security, you can display aggregate information in one portal and easily link to another portal for more information. Here are some examples:

- App sign-in information in app governance:

  From the app governance portal, you can see the aggregated sign-in activity for each app and link back to the Azure Active Directory admin center for the details of sign-in events.

<!--
- App API usage information in the Azure Active Directory admin center:

  From the Azure Active Directory admin center, you can see the aggregated app usage information and link to the app governance portal for the details of app usage.
-->
- API usage information in the Microsoft Cloud App Security portal:

  From the Microsoft Cloud App Security portal, you can see API usage level and aggregate data transfer and link to the app governance portal for the details.

Here's a summary of the integration.

![The integration of app governance with Azure AD and Microsoft Cloud App Security.](..\media\manage-app-protection-governance\mapg-integration.png)

App governance sends its alerts to Microsoft Cloud App Security and Microsoft 365 Defender, and receives alerts from Microsoft Cloud App Security, to enable more detailed analysis of app-based security incidents.
- App governance alerts show up in Microsoft 365 Defender alerts list as alerts with the Detection source field set to "App Governance"
- App governance alerts show up in the MCAS alerts list as alerts with the Policy field set to one of the following:
  - Microsoft 365 OAuth App Governance
  - Microsoft 365 OAuth Phishing Detection
  - Microsoft 365 OAuth App Reputation
- MCAS alerts appear in the app governance alerts list as alerts with Source set to MCAS

> [!NOTE]
> Alert status is currently not being synced between app governance and Microsoft Cloud App Security.
