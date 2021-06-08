---
title: "Microsoft App Governance in Microsoft 365"
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
description: "Implement Microsoft app governance capabilities to govern your apps."
---

# App governance for Microsoft 365 platform

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Cyberattacks have become increasingly sophisticated in the ways they exploit the apps you have deployed in your on-premises and cloud infrastructures to establish a starting point for privilege escalation, lateral movement, and exfiltration of your data. To understand the potential risks and stop these types of attacks, you need to gain clear visibility into your organization’s app compliance posture to quickly identify when an app exhibits anomalous behaviors and to respond when these behaviors present risks to your environment, data, and users.

Microsoft app governance is a security and compliance solution for business productivity and line of business apps built by third-party vendors and published for the Microsoft 365 application platform. App governance delivers full visibility, oversight, and governance into how these publishers and apps access, use, and share your sensitive data stored in Microsoft 365 through automated app-specific services and open Internet authentication protocols.

<!--
The scale of ongoing cybersecurity incidents affecting large enterprises and smaller businesses highlights the dangers of supply chain attacks and the need to strengthen the security and compliance posture of every organization. Accelerated cloud adoption with Microsoft 365 and its rich application ecosystem are constantly growing. Attackers are gaining organizational footholds through applications because:

- Users are typically unaware of the risks when consenting to the use of applications. 
- App developers and independent software vendors (ISVs) do not yet have Security Development Lifecycle (SDL) best practices in place to address attacker techniques.
-->

App governance provides you with comprehensive:

- **Insights**: See a view of all the third-party apps for the Microsoft 365 platform in your tenant on a single dashboard. You can see all the apps’ status and alert activities and react or respond to them.
- **Governance**: Create proactive or reactive policies for app and user patterns and behaviors and protect your users from using non-compliant or malicious apps and limiting the access of risky apps to your data.
- **Detection**: Be alerted and notified when there are anomalies in app activity and when non-compliant, malicious, or risky apps are used.
- **Remediation**: Along with automatic remediation capabilities, use remediation tools and controls in a timely manner to respond to anomalous app activity detections.

Unlike other application governance products in the marketplace, app governance is a platform-based solution that is an integral part of the Microsoft 365 app ecosystem. App governance oversees and governs OAuth-enabled apps that are registered with Azure Active Directory (Azure AD) and accessing data through the Microsoft Graph API. App governance provides you with application behavior controls to help strengthen the security and compliance posture of your IT infrastructure.

<!--
Unlike other application governance products in the marketplace, MAPG is a platform-based solution that is an integral part of the Microsoft 365 application ecosystem. MAPG's initial focus is on OAuth-enabled apps published to the Microsoft 365 platform that are registered with Azure AD and access data through the Graph API. For the initial release, MAPG does not support other, non-OAuth-enabled M365 apps, add-ins (such as PowerBI), or other app vendor ecosystems such as Google, Facebook, Amazon Web Services, Workplace, and Salesforce. MAPG’s focus is on third-party published apps for the Microsoft 365 application platform.

Microsoft allows developers to build cloud applications using Azure Active Directory (Azure AD), Microsoft’s cloud identity platform, and other resources and access to tenant data through the Microsoft Graph. Because of MAPG's visibility, insights, and control capabilities, app developers have the incentive to comply with publisher verification, self-attestation, and Microsoft certification, and can build high-quality productivity apps that are secure and compliant.
-->

## Licensing for app governance

TBD

## Administrator roles

One of the following administrator roles are required to see app governance pages or manage policies and settings:

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

## A first glimpse at app governance

To see the App Governance dashboard, go to [https://compliance.microsoft.com/m365appprotection](https://compliance.microsoft.com/m365appprotection). Note that your sign-in account must have one of the above administrator roles to view any app governance data.

## App governance integration with Azure Active Directory and Microsoft Cloud App Security

App governance, Azure Active Directory (Azure AD), and Microsoft Cloud App Security collect and provide different data sets:

- Azure AD provides foundational app metadata and detailed information on sign-ins to apps.
- App governance provides detailed information about an app’s activity at the API level.
- Microsoft Cloud App Security provides app risk information.

By sharing information across app governance, Azure AD, and Microsoft Cloud App Security, you can display aggregate information in one portal and easily link to another portal for more information. Here are some examples:

- App sign-in information in app governance:

  From the App Governance portal, you can see the aggregated sign-in activity for each app and link back to the Azure Active Directory admin center for the details of sign-in events.

- App API usage information in the Azure Active Directory admin center:

  From the Azure Active Directory admin center, you can see the aggregated app usage information and link to the App Governance portal for the details of app usage.

- API usage information in the Microsoft Cloud App Security portal:

  From the Microsoft Cloud App Security portal, you can see API usage level and aggregate data transfer and link to the App Governance portal for the details.

Here's a summary of the integration.

![The integration of app governance with Azure AD and Microsoft Cloud App Security](..\media\manage-app-protection-governance\mapg-integration.png)

Additionally, app governance sends its alerts as signals to Microsoft Cloud App Security and Microsoft 365 Defender for more detailed analysis of app-based security incidents.

<!--
Integration of alerts with MCAS and M365 Defender
Azure AD IP detections in progress to surface in M365 Defender

## Integration with Azure AD

**Feedback from Anand:** We should add some details on how MAPG works with M365 Defender (previously MTP). Also, we should highlight the integration with MCAS and AAD.

Key cross-reference resources:

- [What is application management in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/manage-apps/what-is-application-management)
- [Common application management scenarios for Azure Active Directory (especially scenarios 3-4)](https://docs.microsoft.com/cloud-app-security/monitor-alerts)
- [Azure Active Directory Identity Governance documentation](https://docs.microsoft.com/azure/active-directory/governance/)
- [Managing access to apps using Azure AD](https://docs.microsoft.com/azure/active-directory/manage-apps/what-is-access-management)

## Integration with Microsoft Cloud App Security

Key cross-reference resources:

- [Cloud App Security anomaly detection alerts investigation guide](https://docs.microsoft.com/cloud-app-security/investigate-anomaly-alerts#unusual-addition-of-credentials-to-an-oauth-app)
- [Monitor alerts raised in Cloud App Security](https://docs.microsoft.com/cloud-app-security/monitor-alerts)
- [Control which third-party cloud OAuth apps get permissions](https://docs.microsoft.com/cloud-app-security/manage-app-permissions)

-->

## Using app governance

Using app governance to protect your tenant and its data from potentially malicious or ill-behaved apps falls into these three core capabilities:

| Capability | Description |
|:-------|:-----|
| [App visibility and insights](mapg-visibility-insights-overview.md) | Get a 360° view on traffic and activity of the Microsoft 365 applications in your tenant. |
| [App policies for reinforced governance](mapg-app-policies-overview.md) | Create proactive or reactive app policies, which will allow you to enforce governance for your Microsoft 3635 apps. |
| [Detection and remediation](mapg-detect-remediate-overview.md) | Based on platform detection alerts or policy-generated detection alerts, monitor your apps for anomalous app behavior and remediate them, either automatically based on app policy settings or manually. |
|||
