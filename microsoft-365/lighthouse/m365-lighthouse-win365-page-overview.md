---
title: "Microsoft 365 Lighthouse Windows 365 (Cloud PCs) page overview"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Windows 365 (Cloud PCs) page."
---

# Windows 365 (Cloud PCs) page overview  

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).
  
Windows 365 is a cloud-based service that lets Microsoft Endpoint Manager (MEM) admins provision and manage Cloud PCs for their users who have a Windows 365 license. Windows 365 is fully integrated with MEM for device management, and with Microsoft 365 Lighthouse for partner management of Cloud PCs across all their customer tenants.

For more information about Windows 365, see [What is Windows 365?](/windows-365/overview) For a list of Windows 365 requirements, see [Requirements for Windows 365](/windows-365/enterprise/requirements).

> [!IMPORTANT]
> You must go to [MEM](https://go.microsoft.com/fwlink/p/?linkid=2150463) to provision Cloud PCs for each customer tenant before you can manage them in Lighthouse. You can't provision from within Lighthouse.

Once you've provisioned Cloud PCs for your customer tenant, the Windows 365 card on the Microsoft 365 Home page provides a brief alert on the Cloud PCs in need of action, such as the number of Cloud PCs that failed to provision and on-premises network connection failures. To get a detailed status, select the button on the Windows 365 card (or select **Windows 365** in the left navigation pane) to open the Windows 365 page. From this page, you can get a status overview of the Cloud PCs assigned to your customer tenants, view a list of all the Cloud PCs you manage and the tenants they're assigned to, and view the on-premises network connections between your customer tenants and Azure Active Directory (Azure AD) and their status.

## Overview tab

On the Overview tab, the colored count-annotation bar displays the total number of Cloud PCs or on-premises network connections across all your customer tenants that have the following statuses: Failed network connections, Not provisioned, Provisioning failed, and Deprovisioning soon.

You can see a breakdown of Cloud PC statuses for each customer tenant in the list below the annotation bar. To see which tenants have Cloud PCs with a specific status, select that status from the count-annotation bar to filter the list. To see Cloud PC statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

To get detailed status information for a particular customer tenant, select a value under any of the status columns for that tenant. Depending on which column the value is in, the **On-premises network connections** or **All cloud PCs** tab will open and show more information.

The Overview tab also includes the following options:

- **Refresh:** Select to retrieve the most current Cloud PC data.
- **Export:** Select to export Cloud PC data to an Excel comma-separated values (.csv) file.
- **Search:** Enter keywords to quickly locate a specific Cloud PC in the list.

:::image type="content" source="../media/m365-lighthouse-win365-page-overview/win365-overview-tab.png" alt-text="Screenshot of the Windows 365 Overview tab.":::

## All Cloud PCs tab

On the All Cloud PCs tab, the colored count-annotation bar displays the total number of Cloud PCs across all your customer tenants that have the following statuses: Provisioned, Not provisioned, Provisioning failed, and Deprovisioning soon.

You can view all Cloud PCs and their provisioning status in the list below the annotation bar. The following information is provided:

- **Cloud PC name:** Name assigned to the Cloud PC.
- **Tenant:** Customer tenant in which a Cloud PC was provisioned.
- **Device name:** Intune device name—a unique identifier for a Cloud PC.
- **PC type:** Type of Cloud PC according to standard SKUs.
- **Status:** Provisioning status of the Cloud PC.
- **User:** User for whom a Cloud PC has been provisioned or attempted to be provisioned.

To see which tenants have Cloud PCs with a specific provisioning status, select that status from the count-annotation bar to filter the list. To see Cloud PC provisioning statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

Select any Cloud PC in the list to view more details. If you need to take action on the Cloud PC, there are options to view tenant provisioning policies and device details in Microsoft Endpoint Manager.

The All Cloud PCs tab also includes the following options:

- **Refresh:** Select to retrieve the most current Cloud PC data.
- **Export:** Select to export Cloud PC data to an Excel comma-separated values (.csv) file.
- **Search:** Enter keywords to quickly locate a specific Cloud PC in the list.
- **Retry provisioning:** Select 1 to 20 Cloud PCs from the list that have a status of **Provisioning failed**, and then select this option to retry provisioning for those Cloud PCs.

To see a complete list of Cloud PC provisioning statuses and what they mean, see [Device management overview for Cloud PCs](/windows-365/enterprise/device-management-overview#column-details) in the Windows 365 documentation library.

:::image type="content" source="../media/m365-lighthouse-win365-page-overview/all-cloud-pcs-tab.png" alt-text="Screenshot of the Windows 365 All Cloud PCs tab.":::

## On-premises network connections tab

On the On-premises network connections tab, the colored count-annotation bar displays the total number of on-premises network connections across all your customer tenants that have the following statuses: Successful connections and Failed connections.

In the list below the count-annotation bar, you can view all on-premises network connections and their connection status.

To see connections with a specific provisioning status, select that status from the count-annotation bar to filter the list. To see connection statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

If you need to take action or troubleshoot a connection in the list, select **View connection details in Microsoft Endpoint Manager**.

The On-premises network connections tab also includes the following options:

- **Refresh:** Select to retrieve the most current connection data.
- **Export:** Select to export connection data to an Excel comma-separated values (.csv) file.
- **Search:** Enter keywords to quickly locate a specific connection.

:::image type="content" source="../media/m365-lighthouse-win365-page-overview/on-prem-network-connections-tab.png" alt-text="Screenshot of the Windows 365 On-premises network connections tab.":::

## Related content

[What is Windows 365?](/windows-365/overview) (article)\
[Windows 365 device management overview for Cloud PCs](/windows-365/enterprise/device-management-overview) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)