---
title: "Known issues with Microsoft 365 Lighthouse"
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
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, see a list of known issues for Lighthouse by feature area."
---

# Known issues with Microsoft 365 Lighthouse

This article lists the known issues for Microsoft 365 Lighthouse by feature area. For more information about Lighthouse, see [Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md).

## Users

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Helpdesk Agent is unable to reset a user password** | Managed Service Provider (MSP) technicians who are members of the Helpdesk Agent group are unable to reset passwords for users in customer tenants. When they try to reset the password for a user, they get the following error message: "You don't have permission to do this. [Learn more](m365-lighthouse-configure-portal-security.md)" | To work around the permissions issue, Helpdesk Agents should reset passwords by using the Microsoft 365 admin center or Azure Active Directory. |

## Devices

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Deleted policy appears** | After a device compliance policy has been deleted from Intune, it will temporarily continue to be visible in Lighthouse. If MSP technicians attempt to do a policy comparison that includes a policy that's been deleted, the technicians get the following error: "Something went wrong. Please refresh the page and try again." | To resolve the error, clear the deleted policy from the policy comparison and compare only existing policies. |

## Threat management

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Threat name is missing** | When MSP technicians view the list of threats from the Threat Management page, some threats may be missing the name of the threat. This will occur when the device that the threat was detected on was recently removed from Intune. | The issue will resolve within 48 hours. No additional steps are required. |

## Baselines

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Conflicting settings when comparing block legacy authentication and MFA deployment steps** | If a customer tenant has deployed block legacy authentication and one of the MFA deployment steps, a comparison test will erroneously describe these settings as conflicting. | No workaround is required. The settings don't actually conflict and users in the customer tenant aren't impacted. |

## Windows 365

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Retry provisioning error** | MSP technicians get a "You don't have permissions to do this" error message when attempting to retry provisioning of a Cloud PC. | To work around this issue, sign in to the customer tenant and then reprovision Cloud PCs from the Microsoft Endpoint Manger admin center. For instructions, see [Reprovision a Cloud PC](/windows-365/enterprise/reprovision-cloud-pc). |

## Audit logs


| Issue | Description | Solution |
|--|--|--|
| **Deactivate and Reactivate actions are not listed in audit logs** | The following activities are currently not reported on the Audit logs page in  Lighthouse: <ul><li>Name: offboardTenant \| Action: Inactivate a customer</li> <li>Name: resetTenantOnboardingStatus \| Action: Reactive customer</li></ul> | There's no workaround, but we're working on a fix. These activities will appear in audit logs once the fix is deployed in the service. |
| **Filter is not showing all users** | When MSP technicians try to filter by using **Initiated By**, the list of all User Principal Names (UPNs) – corresponding to email IDs of the technicians who initiated actions generating audit logs – isn't fully displayed under the filter.<br><br>Note that the audit logs themselves will be fully displayed; only the ability to filter them by using **Initiated By** is impacted. | There's no workaround, but we're working on a fix. The filter will revert to its expected behavior – displaying the full list of UPNs to filter by – once the fix is deployed in the service. |

## Delegated Admin Permissions (DAP)

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Permissions delay when changing DAP roles** | If an MSP technician is added to or removed from the Admin Agent or Helpdesk Agent group, there may be a delay in reflecting the appropriate permissions within Lighthouse. | The issue will resolve within 30 minutes. No additional steps are required. |

## Granular Delegated Admin Permissions (GDAP)

> [!NOTE]
> GDAP is currently in [technical preview](/partner-center/announcements/2022-february#6) (public preview) to allow partners to assign granular permissions before GDAP is generally available.

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Various GDAP permission issues across Lighthouse** | <ul><li>GDAP Security Administrators are unable to view risky users, dismiss risks, or confirm compromised users.</li><li>GDAP Security Readers are unable to view risky users.</li><li>GDAP Global Administrators see an error message when trying to view service health.</li></ul> | Before GDAP General Availability, the workaround is to assign the user a Global Administrator GDAP role or Admin Agent DAP role. For instructions on how to assign the Global Administrator GDAP role, see [Obtain granular admin permissions to manage a customer's service](/partner-center/gdap-obtain-admin-permissions-to-manage-customer). For instructions on how to assign the Admin Agent DAP role, see [Assign roles and permissions to users](/partner-center/permissions-overview). For a list of actions in Lighthouse that require certain Azure Active Directory roles in the partner tenant, see [Configure Microsoft 365 Lighthouse portal security](/microsoft-365/lighthouse/m365-lighthouse-configure-portal-security).

## Localization

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Translation issues** | Users may experience language translation issues when the language of their browser, or their language selection in Lighthouse, is anything other than English. | To minimize translation issues in Lighthouse, make sure that the browser's language selection matches that of the language setting in the Lighthouse portal. To change the language selection in Lighthouse, sign in to Lighthouse and select the gear icon at the top of the page to open the Portal settings page, select **Language + region**, and then select the appropriate language and regional formats. |

## Related content

[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Troubleshoot and resolve problems and error messages in Microsoft 365 Lighthouse](m365-lighthouse-troubleshoot.md) (article)\
[Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md) (article)