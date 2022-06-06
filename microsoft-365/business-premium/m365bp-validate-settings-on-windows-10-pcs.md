---
title: "Validate app protection settings for Windows 10 PCs"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- Adm_O365
- M365-subscription-management
- M365-identity-device-management
- Adm_TOC
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: fae8819d-7235-495f-9f07-d016f545887f
description: "Learn how to verify that Microsoft 365 Business Premium app protection settings took effect on your users' Windows 10 devices."
---

# Validate device protection settings for Windows 10 or 11 PCs

> [!NOTE]
> Microsoft Defender for Business is rolling out to Microsoft 365 Business Premium customers, beginning March 1, 2022. This offering provides additional security features for devices. [Learn more about Defender for Business](../security/defender-business/mdb-overview.md).

## Verify that Windows 10 or 11 device policies are set

After you [set up device policies](../business-premium/m365bp-protection-settings-for-windows-10-devices.md), it may take up to a few hours for the policy to take effect on users' devices. You can confirm that the policies took effect by looking at various Windows Settings screens on the users' devices. Because the users won't be able to modify the Windows Update and Microsoft Defender Antivirus settings on their Windows 10 or 11 devices, many options will be grayed out.
  
1. Go to **Settings** \> **Update &amp; security** \> **Windows Update** \> **Restart options** and confirm that all settings are grayed out.

    ![All the Restart options are grayed out.](../business-premium/media/31308da9-18b0-47c5-bbf6-d5fa6747c376.png)
  
2. Go to **Settings** \> **Update &amp; security** \> **Windows Update** \> **Advanced options** and confirm that all settings are grayed out.

    ![Windows Advanced updates options are all grayed out.](../business-premium/media/049cf281-d503-4be9-898b-c0a3286c7fc2.png)
  
3. Go to **Settings** \> **Update &amp; security** \> **Windows Update** \> **Advanced options** \> **Choose how updates are delivered**.

    Confirm that you can see the message (in red) that some settings are hidden or managed by your organization, and all the options are grayed out.

    ![Choose how updates are delivered page indicates settings are hidden or managed by your organization.](../business-premium/media/6b3e37c5-da41-4afd-9983-b4f406216b59.png)
  
4. To open the Windows Defender Security Center, go to **Settings** \> **Update &amp; security** \> **Windows Defender** \> click **Open Windows Defender Security Center** \> **Virus &amp; thread protection** \> **Virus &amp; threat protection settings**.

5. Verify that all options are grayed out.

    ![The Virus and threat protection settings are grayed out.](../business-premium/media/9ca68d40-a5d9-49d7-92a4-c581688b5926.png)
  
## Related content

[Microsoft 365 for business documentation and resources](/admin)

[Set device configurations for Windows 10 PCs](../business-premium/m365bp-protection-settings-for-windows-10-devices.md)
[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)

## Next objective

[Review and edit protection policies](m365bp-view-edit-create-mdb-policies.md)
