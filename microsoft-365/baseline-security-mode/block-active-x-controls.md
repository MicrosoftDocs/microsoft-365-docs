---  
title: "Block ActiveX controls in Microsoft 365 apps"  
description: Use the Microsoft 365 admin center, Office Group policies or registry keys to block ActiveX controls from running in your Microsoft 365 organization.
author: kwekuako
ms.author: kwekua  
manager: dansimp
ms.date: 12/10/2025  
ms.topic: how-to
ms.service: microsoft-365-admin
ms.localizationpriority: medium
ms.collection: RestrictedMode
ms.custom: QuickDraft
ms.reviewer: kwekua
audience: admin
ai-usage: ai-assisted 
ROBOTS: NOINDEX, NOFOLLOW
---

# Block ActiveX controls in Microsoft 365 apps

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

ActiveX controls are small programs used to add interactive features to Microsoft 365 documents and web pages. Due to their history of security vulnerabilities, ActiveX controls are highly susceptible to exploitation by malicious actors. These controls can be used to run harmful code, install malware, or take control of a system when users open compromised files or visit unsafe websites. Consequently, ActiveX is now blocked by default in Microsoft 365 apps.

When this setting is turned on, users in your environment won’t be able to override the default configuration using **Trust Center**.

If you have turned on this setting but need to return to the default behavior (allow users to override ActiveX blocking using Trust Center), you can turn this setting off directly in the Microsoft 365 admin center.

## Turn off setting in the Microsoft 365 admin center

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select **Org settings**.
1. Select Baseline Security Mode, find the **Block ActiveX controls in the Microsoft 365 apps** setting, and switch the toggle to **Off**.

## Use Office Cloud Policy service

**You can use Office Cloud Policy service to exclude certain users or groups from this setting**.  Follow the steps in the [Steps for creating a policy configuration](/microsoft-365-apps/admin-center/overview-cloud-policy) topic to create a new policy configuration.

- In **Step 4**, select the users or group(s) to exclude from this setting. Only individuals and Microsoft Entra groups can be excluded. For more information on groups, see [Microsoft Entra groups requirements](/microsoft-365-apps/admin-center/overview-cloud-policy).
- In **Step 7**, find the **Disable All ActiveX** policy and set it to **Enabled**. Make sure this new policy configuration is a **higher** priority than the **Tenant** policy configuration to make sure it takes precedence. You can verify and update this in the main [Policy configurations](https://config.office.com/officeSettings/officePolicies) page.

> [!TIP]
> You can download a detailed report under the Baseline Security Mode **Block ActiveX controls in the Microsoft 365 apps** setting to identify users who are opening files which contain ActiveX controls and have ActiveX controls currently enabled.

If you have turned on this setting but need to return to the default behavior, you can set the **Disable All ActiveX** policy to **Not configured**.
