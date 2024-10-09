---
title: "Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ebamoh
ms.date: 06/21/2023
audience: Admin
ms.topic: conceptual
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Windows 365 (Cloud PCs) page."
---

# Overview of the Windows 365 (Cloud PCs) page in Microsoft 365 Lighthouse  
  
Windows 365 is a cloud-based service that lets Microsoft Intune admins provision and manage Cloud PCs for their users who have a Windows 365 license. Windows 365 is fully integrated with Intune for device management, and with Microsoft 365 Lighthouse for Managed Service Provider (MSP) management of Cloud PCs across all their customer tenants.

For more information about Windows 365, see [What is Windows 365?](/windows-365/overview) For a list of Windows 365 requirements, see [Requirements for Windows 365](/windows-365/enterprise/requirements).

> [!IMPORTANT]
> You must go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/p/?linkid=2150463) to provision Cloud PCs for each customer tenant before you can manage them in Lighthouse. You can't provision from within Lighthouse.

Once you've provisioned Cloud PCs for your customer tenant, the Windows 365 card on the Microsoft 365 Lighthouse Home page provides a brief alert on the Cloud PCs in need of action, such as the number of Cloud PCs that failed to provision and Azure network connection failures. To get a detailed status, select the button on the Windows 365 card (or select **Devices** > **Windows 365** in the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com)) to open the Windows 365 page. From this page, you can get a status overview of the Cloud PCs assigned to your customer tenants, view a list of all the Cloud PCs you manage and the tenants they're assigned to, and view the Azure network connections between your customer tenants and Microsoft Entra ID and their status.

## Overview tab

On the Overview tab, the colored count-annotation bar displays the total number of Cloud PCs or Azure network connections across all your customer tenants that have the following statuses: Failed network connections, Not provisioned, Provisioning failed, and Deprovisioning soon.

You can see a breakdown of Cloud PC statuses for each customer tenant in the list below the count-annotation bar. To see which tenants have Cloud PCs with a specific status, select that status from the count-annotation bar to filter the list. To see Cloud PC statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

To get detailed status information for a particular customer tenant, select a value under any of the status columns for that tenant. Depending on which column the value is in, the **Azure network connections** or **All Cloud PCs** tab will open and show more information.

The Overview tab also includes the following options:

- **Refresh:** Select to retrieve the most current Cloud PC data.
- **Export:** Select to export Cloud PC data to an Excel comma-separated values (.csv) file.
- **Search:** Enter keywords to quickly locate a specific Cloud PC in the list.

:::image type="content" source="../media/m365-lighthouse-win365-page-overview/win365-overview-tab.png" alt-text="Screenshot of the Overview tab on the Windows 365 page." lightbox="../media/m365-lighthouse-win365-page-overview/win365-overview-tab.png":::

## All Cloud PCs tab

On the All Cloud PCs tab, the colored count-annotation bar displays the total number of Cloud PCs across all your customer tenants that have the following statuses: Provisioned, Not provisioned, Provisioning failed, and Deprovisioning soon.

You can view all Cloud PCs and their provisioning status in the list below the count-annotation bar. The following information is provided:

- **Cloud PC name:** Name assigned to the Cloud PC.
- **User:** User for whom a Cloud PC has been provisioned or attempted to be provisioned.
- **Device name:** Intune device name—a unique identifier for a Cloud PC.
- **Tenant:** Customer tenant in which a Cloud PC was provisioned.
- **Status:** Provisioning status of the Cloud PC.
- **License type:** Enterprise or Business.
- **Specifications:** Cloud PC hardware configuration.

To see which tenants have Cloud PCs with a specific provisioning status, select that status from the count-annotation bar to filter the list. To see Cloud PC provisioning statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

Select any Cloud PC in the list to view more details and execute management actions such as:
- **Restart:** Select to reboot the device. 
- **Reprovision:** Select to reset the device. You can also view the provisioning policy in the Microsoft Intune link.
- **Rename:** Select to rename the device assigned to a user.
- **Change account type:** Select the account type for the user: Standard user (recommended) or Local administrator.

The All Cloud PCs tab also includes the following options:

- **Export:** Select to export Cloud PC data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current Cloud PC data.
- **Search:** Enter keywords to quickly locate a specific Cloud PC in the list.

To see a complete list of Cloud PC provisioning statuses and what they mean, see [Device management overview for Cloud PCs](/windows-365/enterprise/device-management-overview#column-details) in the Windows 365 documentation library.

:::image type="content" source="../media/m365-lighthouse-win365-page-overview/all-cloud-pcs-tab.png" alt-text="Screenshot of the All Cloud PCs tab on the Windows 365 page." lightbox="../media/m365-lighthouse-win365-page-overview/all-cloud-pcs-tab.png":::

## Azure network connections tab

On the Azure network connections tab, the colored count-annotation bar displays the total number of Azure network connections across all your customer tenants that have Windows 365 Enterprise Cloud PCs and may have the following statuses: Successful connections and Failed connections.

In the list below the count-annotation bar, you can view all Azure network connections and their connection status.

To see connections with a specific provisioning status, select that status from the count-annotation bar to filter the list. To see connection statuses for one or more specific customer tenants, use the **Tenants** dropdown menu to filter the list.

If you need to take action or troubleshoot a connection in the list, select **View connection details in Microsoft Endpoint Manager**.

The Azure network connections tab also includes the following options:

- **Export:** Select to export connection data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current connection data.
- **Search:** Enter keywords to quickly locate a specific connection.

:::image type="content" source="../media/m365-lighthouse-win365-page-overview/azure-network-connections-tab.png" alt-text="Screenshot of the Azure network connections tab on the Windows 365 page." lightbox="../media/m365-lighthouse-win365-page-overview/azure-network-connections-tab.png":::

## Related content

[What is Windows 365?](/windows-365/overview) (article)\
[Windows 365 device management overview for Cloud PCs](/windows-365/enterprise/device-management-overview) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
