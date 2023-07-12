---
title: "Review audit logs in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: magarlan
ms.date: 07/03/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to review audit logs."
---

# Review audit logs in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse audit logs record actions that generate a change in Lighthouse or other Microsoft 365 services. Create, edit, delete, assign, and remote actions all create audit events that you can review. By default, auditing is enabled for all customers. It can't be disabled.

## Before you begin

To view audit logs, you must have one of the following permissions:

- Azure Active Directory (Azure AD) role - Global Administrator of partner tenant

- Microsoft Partner Center role - Admin Agent

## Review audit logs

1. In the left navigation pane in Lighthouse, select **Audit logs**.

    > [!NOTE]
    > It might take up to 1 hour to see new logs. Go to the respective service to see the most recent changes.

2. Filter the logs, as needed, by using the following options:

    - **Date range** - Previous month, week, or day.
    - **Tenants** - Tenant tags or customer tenant names.
    - **Activity** - Microsoft 365 activity type that corresponds to the action taken. For more information, see the [Activities](#activities) table.
    - **Initiated by** -  Who initiated the action.

3. Select a log from the list to see full details, including the **Request** body.

    To export log data to a comma-separated values (.csv) file, select **Export**.

## Activities

The following table lists activities captured within Lighthouse audit logs. The list is subject to change as new actions are created. You can use the activity listed in the audit log to see which action was initiated.<br><br>

| Activity name | Area in Lighthouse | Action initiated | Service impacted |
|--|--|--|--|
| **apply** or **deploy** | Tenants | Apply a deployment plan | Azure AD, Microsoft Intune |
| **assignTag** | Tenants | Apply a tag from a customer | Lighthouse |
| **changeDeploymentStatus** or **assign** | Tenants | Update action plan status for deployment plan | Lighthouse |
| **offboardTenant** | Tenants | Inactivate a customer | Lighthouse |
| **resetTenantOnboardingStatus** | Tenants | Reactivate a customer | Lighthouse |
| **tenantTags** | Tenants | Create or delete a tag | Lighthouse |
| **tenantCustomizedInformation** | Tenants | Create, update, or delete a customer website or contact information | Lighthouse |
| **unassignTag** | Tenants | Remove a tag from a customer | Lighthouse |
| **validate** | Tenants | Test a deployment plan | Azure AD |
| **blockUserSignin** | Users | Block sign-in | Azure AD |
| **confirmUsersCompromised** | Users | Confirm a user is compromised | Azure AD |
| **dismissUsersRisk** | Users | Dismiss user risk | Azure AD |
| **resetUserPassword** | Users | Reset password | Azure AD |
| **setCustomerSecurityDefaultsEnabledStatus** | Users | Enable multifactor authentication (MFA) with security defaults | Azure AD |
| **restartDevice** | Devices | Restart | Microsoft Intune |
| **syncDevice** | Devices | Sync | Microsoft Intune |
| **rebootNow** | Threat management | Reboot | Microsoft Intune |
| **reprovision** | Windows 365 | Retry provisioning | Windows 365 |
| **windowsDefenderScanFull** | Threat management | Full scan | Microsoft Intune |
| **windowsDefenderScan** | Threat management | Quick scan | Microsoft Intune |
| **windowsDefenderUpdateSignatures** | Threat management | Update antivirus | Microsoft Intune |

## Next steps

Use Microsoft Graph API to access more audit events, if needed. For more information, see [Overview for multi-tenant management using the Microsoft 365 Lighthouse API](/graph/managedtenants-concept-overview).

## Related content

[Overview of the Alerts page](m365-lighthouse-alerts-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[View your Azure Active Directory roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)
