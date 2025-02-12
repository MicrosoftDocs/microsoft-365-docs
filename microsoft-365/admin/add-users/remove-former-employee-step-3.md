---
title: "Step 3 - Wipe and block a former employee's mobile device"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 01/06/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- SPO_Content
ms.custom:
- MSStore_Link
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- m365solution-removeemployee
- admindeeplinkEXCHANGE
description: "Use the Exchange admin center to wipe and block a former employee's device so that all organization data is removed and it no longer connects to Microsoft 365."
---

# Step 3 - Wipe and block a former employee's mobile device

If your former employee had an organization phone, you can use the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a> to wipe and block that device so that all organization data is removed from the device and it can no longer connect to Microsoft 365. If your organization uses Basic Mobility and Security to manage mobile devices, you can wipe and block those devices [using Basic Mobility and Security](../basic-mobility-security/wipe-mobile-device.md).

## Wipe mobile device using the Exchange admin center

1. Go to the Exchange admin center > **Recipients** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2183135" target="_blank">Mailboxes</a>.
1. Select the user, and under **Email apps & mobile devices**, select **Manage mobile devices**.
1. On the **Mobile Device Details** page, under **Mobile devices**, select the mobile device, select **Wipe company data**![Wipe Device.](../../media/1c113a36-53cb-4974-884f-3ecd9535506e.png), and then select **Block access**.
1. Select **Save**.
   > [!TIP]
   > Be sure you remove or disable the user from your on-premises Blackberry Enterprise Service. You should also disable any Blackberry devices for the user. Refer to the Blackberry Business Cloud Services Administration Guide if you need specific steps on how to disable the user.

## Related content

[Exchange admin center in Exchange Online](/exchange/exchange-admin-center)
