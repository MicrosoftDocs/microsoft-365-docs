---
title: "Known issues with Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora
ms.date: 07/17/2023
audience: Admin
ms.topic: troubleshooting-known-issue
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
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
| **No data displays on the OneDrive tab in the user details pane** | When an MSP technician attempts to view OneDrive data on the OneDrive tab in the user details pane, they see the message: "OneDrive isn't set up for this user. Ask the person to go to portal.office.com/onedrive to set it up. It might take a while. If you still see this message 24 hours later, contact support." | The OneDrive tab doesn't support delegated authentication at this time. To work around the issue, MSP technicians should view OneDrive data in the Microsoft 365 admin center by signing in using the customer's credentials. |

## Threat management

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Threat name is missing** | When MSP technicians view the list of threats from the Threat management page, some threats may be missing the name of the threat. This will occur when the device that the threat was detected on was recently removed from Intune. | The issue will resolve within 48 hours. No additional steps are required. |

## Baselines

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Conflicting settings when comparing block legacy authentication and MFA deployment steps** | If a customer tenant has deployed block legacy authentication and one of the MFA deployment steps, a comparison test will erroneously describe these settings as conflicting. | No workaround is required. The settings don't actually conflict and users in the customer tenant aren't impacted. |

## Windows 365

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Retry provisioning error** | MSP technicians get a "You don't have permissions to do this" error message when attempting to retry provisioning of a Cloud PC. | To work around this issue, sign in to the customer tenant and then reprovision Cloud PCs from the Microsoft Endpoint Manger admin center. For instructions, see [Reprovision a Cloud PC](/windows-365/enterprise/reprovision-cloud-pc). |

## Delegated administrative privileges (DAP)

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Permissions delay when changing DAP roles** | If an MSP technician is added to or removed from the Admin Agent or Helpdesk Agent group, there may be a delay in reflecting the appropriate permissions within Lighthouse. | The issue will resolve within 30 minutes. No additional steps are required. |

## Granular delegated administrative privileges (GDAP)

Either granular delegated administrative privileges (GDAP) plus an indirect reseller relationship or a delegated administrative privileges (DAP) relationship is required to onboard customers to Lighthouse. If DAP and GDAP coexist in a customer tenant, GDAP permissions take precedence for MSP technicians in GDAP-enabled security groups. Customers with GDAP-only relationships (without indirect reseller relationships) currently can't onboard to Lighthouse, but will be able to onboard in a future release.<br><br>

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Various GDAP permission issues across Lighthouse** | Certain GDAP roles by themselves don't grant the same level of access to customer data in Lighthouse as they would in a single-tenant experience. If any of the following roles are assigned individually (that is, not in combination with other GDAP roles) to MSP technicians, they may encounter errors, including:<ul><li>GDAP Security Administrators are unable to view risky users, dismiss risks, or confirm compromised users within Lighthouse.</li><li>GDAP Security Readers are unable to view risky users within Lighthouse.</li><li>GDAP Global Administrators see an error message when trying to view service health within Lighthouse.</li><li>GDAP Global Administrators experience issues deploying deployment plan steps within Lighthouse.</li></ul> | The workaround is to assign a combination of GDAP roles to MSP technicians based on the level of access to customer data that they need. For a list of recommended GDAP roles to use Lighthouse, see [Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md).<br><br>For issues where even GDAP Global Administrator permissions won't allow usage of a feature in Lighthouse, the workaround is to access the appropriate admin center from the customer tenant to manage the customer (for example, access the Microsoft 365 admin center from the customer tenant to check service health). For instructions on how to modify a GDAP relationship, see [Obtain granular admin permissions to manage a customer's service - Partner Center](/partner-center/gdap-obtain-admin-permissions-to-manage-customer). |

## Localization

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Translation issues** | Users may experience language translation issues when the language of their browser, or their language selection in Lighthouse, is anything other than English. | To minimize translation issues in Lighthouse, make sure that the browser's language selection matches that of the language setting in the Lighthouse portal. To change the language selection in Lighthouse, sign in to Lighthouse and select the gear icon at the top of the page to open the Portal settings page, select **Language + region**, and then select the appropriate language and regional formats. |

## Sales Advisor

| Issue | Description | Solution |
| ---------------- | ---------------- | ---------------- |
| **Total tenants and total seats count mismatch with Partner Center** | Total seats and tenants displayed in the summary view of Customer acquisition, Customer retention, and Customer growth tabs are mismatched between the Lighthouse experience and Partner Center experience. | No workaround is required. This issue doesn't impact the number of opportunities visible in the recommendation table or the export. You still have access to the full list of opportunities available across your customer tenants. |
| **Filtering and sorting experience in Lighthouse is different than in Partner Center**| Column sorting, Recommendation filter, Product filter, and MPN ID filter are unavailable in the Lighthouse experience. | No workaround is required. You still have access to the full list of opportunities available across your customer tenants.  |

## Related content

[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)\
[Troubleshoot error messages and problems in Microsoft 365 Lighthouse](m365-lighthouse-troubleshoot.md) (article)\
[Get help and support for Microsoft 365 Lighthouse](m365-lighthouse-get-help-and-support.md) (article)
