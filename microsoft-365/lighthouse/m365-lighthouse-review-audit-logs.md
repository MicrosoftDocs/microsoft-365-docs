---
title: "Review audit logs"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to review audit logs."
---

# Review audit logs

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

Microsoft 365 Lighthouse audit logs record actions that generate a change in Lighthouse or other Microsoft 365 services. Create, edit, delete, assign, and remote actions all create audit events that you can review. By default, auditing is enabled for all customers. It can't be disabled.

## Before you begin

To view audit logs, you must have one of the following permissions:

- Azure Active Directory (Azure AD) role - Global Administrator of partner tenant

- Microsoft Partner Center role - Admin agent

## Review audit logs

1. In the left navigation pane in Lighthouse, select **Audit logs**.

    > [!NOTE]
    > It might take up to 1 hour to see new logs. Go to the respective service to see the most recent changes.

2. Filter the logs, as needed, by using the following options:

    - **Date range** - Previous month, week, or day.
    - **Tenants** - Tenant tags or customer tenant names.
    - **Activity** - Microsoft 365 activity type that corresponds to the action taken. For more information, see the [Activity types](#activities) table.
    - **Initiated by** -  Who initiated the action.

3. Select a log from the list to see full details, including the **Request** body.

To export log data to a comma-separated values (.csv) file, select **Export**.

## Activities

The following table lists activities captured within Lighthouse audit logs. The list is subject to change as new actions are created. You can use the activity listed in the audit log to see which action was initiated.<br><br>

| Activity name | Area in Lighthouse | Action initiated | Service impacted |
|--|--|--|--|
| **apply** | Tenants | Apply deployment plan | Azure AD, Microsoft Endpoint Manager (MEM) |
| **assignTag** | Tenants | Apply a tag from a customer | Lighthouse |
| **changeDeploymentStatus** | Tenants | Action plan status for deployment plan | Lighthouse |
| **offboardTenant** | Tenants | Inactivate a customer | Lighthouse |
| **resetTenantOnboardingStatus** | Tenants | Reactive a customer | Lighthouse |
| **tenantTags** | Tenants | Create or delete a tag | Lighthouse |
| **tenantCustomizedInformation** | Tenants | Create, update, or delete a customer website or contact information | Lighthouse |
| **unassignTag** | Tenants | Remove a tag from a customer | Lighthouse |
| **blockUserSignin** | Users | Block sign-in | Azure AD |
| **confirmUsersCompromised** | Users | Confirm a user is compromised | Azure AD |
| **dismissUsersRisk** | Users | Dismiss user risk | Azure AD |
| **resetUserPassword** | Users | Reset password | Azure AD |
| **setCustomerSecurityDefaultsEnabledStatus** | Users | Enable multifactor authentication (MFA) with security defaults | Azure AD |
| **restartDevice** | Devices | Restart | MEM |
| **syncDevice** | Devices | Sync | MEM |
| **rebootNow** | Threat management | Reboot | MEM |
| **reprovision** | Windows 365 | Retry provisioning | Windows 365 |
| **windowsDefenderScanFull** | Threat management | Full scan | MEM |
| **windowsDefenderScan** | Threat management | Quick scan | MEM |
| **windowsDefenderUpdateSignatures** | Threat management | Update antivirus | MEM |

## Next steps

If you need more information, use Microsoft Graph API to access more audit events. For more information, see [Overview for multi-tenant management using the Microsoft 365 Lighthouse API](/graph/managedtenants-concept-overview).

## Related content

[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
