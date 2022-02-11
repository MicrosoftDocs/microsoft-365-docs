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

- Azure AD role - Global Administrator of partner tenant

- Partner Center role - Admin Agent

## Review logs

1. In the left navigation pane in Lighthouse, select **Audit logs**.

    > [!NOTE]
    > It might take up to 1 hour to see new logs. Go to the respective service to see the most recent changes.

2. To filter the logs, refine the list using the following options:

    - **Date range** - Previous month, week, or day.
    - **Tenants** - Tenant tags or customer tenant names.
    - **Activity** - Microsoft 365 activity type that corresponds to the action taken. For more information, see Activity Types table.
    - **Initiated by** -  Who initiated the action.

3. Select a log from the list to see full details including the **Request** body.

Select **Export**, to export log data to a comma-separated values (.csv) file.

## Activity Types

The following table is a list of activity types captured within Lighthouse audit logs. The list is subject to change as new actions are created. You can use the activity value from the audit log to see what action was initiated.

| Activity name    | Area in Microsoft 365 Lighthouse | Action initiated  | Service impacted           |
|------------------|----------------------------------|-------------------|----------------------------|
|**apply**                                   | Tenants                          | Apply deployment plan                                           | Azure AD, Microsoft Endpoint Manager                   |
|**assignTag**                                | Tenants                          | Apply a tag from a customer                                      | Microsoft 365 Lighthouse   |
|**changeDeploymentStatus**                   | Tenants                          | Action plan status for deployment plan                        | Microsoft 365 Lighthouse   |
|**offboardTenant**                            | Tenants                          | Inactivate a customer                                          | Microsoft 365 Lighthouse   |
|**resetTenantOnboardingStatus**              | Tenants                          | Reactive a customer                                              | Microsoft 365 Lighthouse   |
|**tenantTags**                               | Tenants                          | Create or delete a tag                                           | Microsoft 365 Lighthouse   |
|**tenantCustomizedInformation**              | Tenants                          | Create, update, or delete customer website or contact information | Microsoft 365 Lighthouse   |
|**unassignTag**                              | Tenants                          | Remove a tag from a customer                                    | Microsoft 365 Lighthouse   |
| **blockUserSignin**                          | Users                            | Block sign-in                                                     | Azure AD                   |
| **confirmUsersCompromised**                  | Users                            | Confirm user compromised                                        | Azure AD                   |
| **dismissUsersRisk**                         | Users                            | Dismiss user risk                                                | Azure AD                   |
| **resetUserPassword**                        | Users                            | Reset password                                                   | Azure AD                   |
| **setCustomerSecurityDefaultsEnabledStatus** | Users                            | Enable MFA with Security Defaults                               | Azure AD                   |
|**restartDevice**                            | Devices                          | Restart                                                          | Microsoft Endpoint Manager |
| **syncDevice**                               | Devices                          | Sync                                                             | Microsoft Endpoint Manager |
| **rebootNow**                                | Threat management                | Reboot                                                           | Microsoft Endpoint Manager |
| **reprovision**                              | Windows 365     | Retry Provisioning                                               | Windows 365                |
| **windowsDefenderScanFull**                  | Threat management                | Full scan                                                       | Microsoft Endpoint Manager |
| **windowsDefenderScan**                      | Threat management                | Quick scan                                                       | Microsoft Endpoint Manager |
| **windowsDefenderUpdateSignatures**          | Threat management                | Update antivirus                                                | Microsoft Endpoint Manager |

## Next steps

If you need more information, you can use Microsoft Graph API to access more audit events. For more information, see [Overview for multi-tenant management using the Microsoft 365 Lighthouse API](/graph/managedtenants-concept-overview).

## Related content

[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
