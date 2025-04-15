---
title: "Overview of the Threat management page in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: prpath
ms.date: 10/27/2023
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-manage
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the Threat management page."
---

# Overview of the Threat management page in Microsoft 365 Lighthouse 

**Applies to:**

- Windows

Microsoft Defender Antivirus protects tenants, users, and devices from software threats including viruses, malware, and spyware. It's robust, ongoing protection that's built into Windows.  
  
To access the Threat management page in Microsoft 365 Lighthouse, select **Devices** > **Threat management** in the left navigation pane to view your customer tenants' security posture against threats. You'll see tenants, users, and devices that require your attention and recommendations that will help you reduce risk.  

> [!NOTE]
> This page provides the number of tenants for which data is unavailable because they do not have the required licenses.
  
## Overview tab  
  
On the Overview tab of the Threat management page, you can monitor the antivirus state across all your tenants to identify the areas that need attention.

:::image type="content" source="../media/m365-lighthouse-threat-management-page-overview/threatmanagement-overview-tab.png" alt-text="Screenshot of the Overview tab on the Threat management page." lightbox="../media/m365-lighthouse-threat-management-page-overview/threatmanagement-overview-tab.png":::

## Threats tab

On the Threats tab of the Threat management page, you can see the Active, Mitigated, Resolved, and Allowed threats across all your tenants. You can also remediate multiple threats at the same time across all your tenants by filtering and drilling down into each threat to learn which devices, users, or tenants are affected.

:::image type="content" source="../media/m365-lighthouse-threat-management-page-overview/threatmanagement-threats-tab.png" alt-text="Screenshot of the Threats tab on the Threat management page." lightbox="../media/m365-lighthouse-threat-management-page-overview/threatmanagement-threats-tab.png":::
  
You can filter threats by:

- Threat status
- Threat severity
- Threat type
- Date range

The following table lists the different threat statuses and their definition:<br><br>

| Threat status | Definition |
|---|---|
| Active | Threat is active on the device. |
| No status | Threat status is unavailable. Run a full scan on the device to have Microsoft Defender Antivirus redetect the threat. |
| Action failed | The device isn't at risk. An action has failed but a potential threat has been stopped and isn't active on the device. Run a full scan on the device. |
| Manual steps required | The threat has been stopped but it requires a manual step to be completed, such as a full scan or a reboot of the device. |
| Full scan required | A full scan of the device is required. |
| Reboot required | A reboot of the device is required. |
| Remediated with non-critical failures | The threat has been remediated and no further actions are needed. |
| Quarantined | The threat has been quarantined. No further actions are needed. |
| Removed | The threat has been successfully removed from the device. No further actions are needed. |
| Cleaned | Microsoft Defender Antivirus has recovered and disinfected files. No further actions are needed. |
| Allowed | The threat is allowed by an administrator to remain on the device. | 

## Antivirus protection tab

The Antivirus protection tab on the Threats management page shows the devices across all your tenants and their Microsoft Defender Antivirus protection state. You can assess the status and take action for one or more devices that may be vulnerable. You can also select a device to view more information, such as Device Overview, Current Threats, and Device Action statuses.

:::image type="content" source="../media/m365-lighthouse-threat-management-page-overview/threatmanagement-antivirus-tab.png" alt-text="Screenshot of the Antivirus protection tab on the Threat management page." lightbox="../media/m365-lighthouse-threat-management-page-overview/threatmanagement-antivirus-tab.png":::

## Related content

[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
