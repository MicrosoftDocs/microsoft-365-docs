---
title: "Review audit logs in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ebamoh
ms.date: 09/20/2024
audience: Admin
ms.topic: how-to
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

To view audit logs, you must hold one of the following roles:

- Administrator in Lighthouse
- Admin agent in Partner Center
 
## Review audit logs

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Audit logs**.

    > [!NOTE]
    > It might take up to an hour to see new logs. Go to the respective service to see the most recent changes.

2. Select one of the following tabs to view specific logs: **Audit logs**, **Graph logs**, **Directory logs**, **Sign-in logs**.

2. Filter the logs, as needed, by using the following options:
    - Audit logs tab
        - **Tenants** - Tenant tags or customer tenant names.
        - **Time range** - Last day, last 7 days, last 30 days.
        - **Activity** - Microsoft 365 activity type that corresponds to the action taken. For more information, see the [Activities](#activities) table.
        - **Initiated by** - Who initiated the action.

    - Graph logs tab
        - **Tenants** - Tenant tags or customer tenant names.
        - **Time range** - Last day, last 7 days, last 30 days.
        - **Request type** - Type of request that the Microsoft Graph service received and processed for a tenant.
        - **Response code** - The HTTP response status code for the event.

    - Directory logs tab
        - **Tenants** - Tenant tags or customer tenant names.
        - **Time range** - Last day, last 7 days, last 30 days.
        - **Type** - User management, Group management, Device management, App management, Role management, Policy management
        - **Operation type** - Add, Assign, Update, Unassign, Delete Service API

    - Sign-in logs tab 
        - **Tenants** - Tenant tags or customer tenant names.
        - **Time range** - Last day, last 7 days, last 30 days.
        - **Is interactive** - Yes (by a user), No (by a client app or OS components on behalf of a user)
        - **Risk state** - None, Confirmed safe, Remediated, Confirmed compromised, Dismissed, At risk
        - **Risk level during sign-in** - Risk level of the sign-in session (likelihood that the sign-in is compromised)

3. Select a log from the list to see full details, including the **Request body**.

    To export log data to a comma-separated values (.csv) file, select **Export**.

## Activities

The following table lists activities captured within Lighthouse audit logs. The list is subject to change as new actions are created. You can use the activity listed in the audit log to see which action was initiated.<br><br>

| Activity name | Area in Lighthouse | Action initiated | Service impacted |
|--|--|--|--|
| **apply** or **deploy** | Tenants | Apply a deployment plan | Microsoft Entra ID, Microsoft Intune |
| **assignTag** | Tenants | Apply a tag from a customer | Lighthouse |
| **changeDeploymentStatus** or **assign** | Tenants | Update action plan status for deployment plan | Lighthouse |
| **offboardTenant** | Tenants | Inactivate a customer | Lighthouse |
| **resetTenantOnboardingStatus** | Tenants | Reactivate a customer | Lighthouse |
| **tenantTags** | Tenants | Create or delete a tag | Lighthouse |
| **tenantCustomizedInformation** | Tenants | Create, update, or delete a customer website or contact information | Lighthouse |
| **unassignTag** | Tenants | Remove a tag from a customer | Lighthouse |
| **validate** | Tenants | Test a deployment plan | Microsoft Entra ID |
| **blockUserSignin** | Users | Block sign-in | Microsoft Entra ID |
| **confirmUsersCompromised** | Users | Confirm a user is compromised | Microsoft Entra ID |
| **dismissUsersRisk** | Users | Dismiss user risk | Microsoft Entra ID |
| **resetUserPassword** | Users | Reset password | Microsoft Entra ID |
| **setCustomerSecurityDefaultsEnabledStatus** | Users | Enable multifactor authentication (MFA) with security defaults | Microsoft Entra ID |
| **restartDevice** | Devices | Restart | Microsoft Intune |
| **syncDevice** | Devices | Sync | Microsoft Intune |
| **rebootNow** | Threat management | Reboot | Microsoft Intune |
| **reprovision** | Windows 365 | Retry provisioning | Windows 365 |
| **windowsDefenderScanFull** | Threat management | Full scan | Microsoft Intune |
| **windowsDefenderScan** | Threat management | Quick scan | Microsoft Intune |
| **windowsDefenderUpdateSignatures** | Threat management | Update antivirus | Microsoft Intune |

## Next steps

Use the Microsoft Graph API to access more audit events, if needed. For more information, see [Use the Microsoft Graph API](/graph/use-the-api) and [Manage multiple customer tenants using the Microsoft 365 Lighthouse API](/graph/managedtenants-concept-overview).

## Related content

[Overview of the Alerts page](m365-lighthouse-alerts-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[View your Microsoft Entra roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)
