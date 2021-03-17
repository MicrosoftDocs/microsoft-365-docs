---
title: "Protect user and device access"
f1.keywords:
- NOCSH
ms.author: bcarter
author: brendacarter
manager: laurawi
ms.date: 4/17/2018
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: a6ef28a4-2447-4b43-aae2-f5af6d53c68e
description: Learn how to protect user and device access to Microsoft 365 data and services and defend against data loss.
ms.custom: seo-marvel-apr2020
---

# Protect user and device access

Protecting access to your Microsoft 365 data and services is crucial to defending against cyberattacks and guarding against data loss. The same protections can be applied to other SaaS applications in your environment and even to on-premises applications published with Azure Active Directory Application Proxy.
  
## Step 1: Review recommendations

Recommended capabilities for protecting identities and devices that access Office 365, other SaaS services, and on-premises applications published with Azure AD Application Proxy.
  
[PDF](https://go.microsoft.com/fwlink/p/?linkid=841656) | [Visio](https://go.microsoft.com/fwlink/p/?linkid=841657) | [More languages](https://www.microsoft.com/download/details.aspx?id=55032)
  
## Step 2: Protect administrator accounts and access
The administrative accounts you use to administer your Microsoft 365 environment include elevated privileges. These are valuable targets for hackers and cyberattackers. 

Begin by using administrator accounts only for administration. Admins should have a separate user account for regular, non-administrative use and only use their administrative account when necessary to complete a task associated with their job function.

Protect your administrator accounts with multi-factor authentication and conditional access. For more information, see [Protecting administrator accounts](../security/office-365-security/identity-access-prerequisites.md#protecting-administrator-accounts). 

Next, configure privileged access management in Office 365. Privileged access management allows granular access control over privileged admin tasks in Office 365. It can help protect your organization from breaches that may use existing privileged admin accounts with standing access to sensitive data or access to critical configuration settings.

- [Overview of privileged access management](privileged-access-management-overview.md)
- [Configure privileged access management](privileged-access-management-configuration.md)

Another top recommendation is to use workstations specifically configured for administrative work. These are dedicated devices that are only used for administrative tasks. See [Securing privileged access](/windows-server/identity/securing-privileged-access/securing-privileged-access).

Finally, you can mitigate the impact of inadvertent lack of administrative access by creating two or more emergency access accounts in your tenant. See [Manage emergency access accounts in Azure AD](/azure/active-directory/users-groups-roles/directory-emergency-access). 

## Step 3: Configure recommended identity and device access policies
Multi-factor authentication (MFA) and conditional access policies are powerful tools for mitigating against compromised accounts and unauthorized access. We recommend implementing a set of policies that have been tested together. For more information, including deployment steps, see [Identity and device access configurations](../security/office-365-security/microsoft-365-policies-configurations.md).

 These policies implement the following capabilities:
- Mult-factor authentication
- Conditional access
- Intune app protection (app and data protection for devices)
- Intune device compliance
- Azure AD Identity Protection

Implementing Intune device compliance requires device enrollment. Managing devices allows you to ensure that they are healthy and compliant before allowing them access to resources in your environment. See [Enroll devices for management in Intune](/intune-classic/deploy-use/enroll-devices-in-microsoft-intune)

## Step 4: Configure SharePoint device access policies

Microsoft recommends you protect content in SharePoint sites with sensitive and highly-regulated content with device access controls. For more information, see [Policy recommendations for securing SharePoint sites and files](../security/office-365-security/sharepoint-file-access-policies.md).



