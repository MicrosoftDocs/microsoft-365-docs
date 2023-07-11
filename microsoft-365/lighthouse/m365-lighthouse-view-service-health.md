---
title: "View tenant service health in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: chboyd
ms.date: 06/21/2023
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
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view tenant service health."
---

# View tenant service health in Microsoft 365 Lighthouse

You can view service health for the tenants you manage in Microsoft 365 Lighthouse. Service health includes incidents and advisories for several services, including Microsoft Intune, Azure Active Directory (Azure AD) identity services, and mobile device management (MDM) cloud services. You can also see how many of your managed tenants are affected by incidents. For example, if one of your tenants is experiencing problems, you can check the Service health page to determine whether it's a known issue with a resolution in progress or whether a recent change may be impacting them. This could save you time troubleshooting and reduce support calls.

If you can't sign in to Lighthouse, you can use the [Microsoft 365 service health status page](https://status.office365.com/) to check for known issues preventing you from logging in to your partner tenant. Also, sign up to follow [@MSFT365status](https://twitter.com/MSFT365Status) on Twitter to see information on specific service incidents.

## Before you begin

To view service health, you'll need an Azure AD role in the partner tenant with the following property set: **microsoft.office365.serviceHealth/allEntities/allTasks**. For a list of Azure AD roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).

## View service health status for all tenants

1. In the left navigation pane in Lighthouse, select **Service health**.

2. On the **Service health** page, review the current service health status, including:

   - Total number of incidents
   - Total number of advisories affecting any of the managed tenants
   - Number of services with active incidents.

3. On the **All services** tab, review issues by service.

4. On the **All issues** tab, review all current issues.

## Review issue details

1. In the left navigation pane in Lighthouse, select **Service health**.

2. On the **Service health** page, select the **All services** or **All issues** tab.

3. Select an issue from the list.

4. In the issue details pane, review detailed information, including issue type, tenants affected, user impact, and issue history.

On the **Tenants affected** tab, you can export a list of affected tenants to a comma-separated values (.csv) file so you can share it with your support teams.

## Related content

[How to check Microsoft 365 service health](/microsoft-365/enterprise/view-service-health) (article)\
[Known issues with Microsoft 365 Lighthouse](m365-lighthouse-known-issues.md) (article)\
[View your Azure Active Directory roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)
