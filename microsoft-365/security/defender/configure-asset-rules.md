---
title: Asset rule management - Dynamic rules 
description: You can use Microsoft Defender for Endpoint to configure dynamic tagging 
keywords: asset rule management, dynamic tagging, Microsoft Defender for Endpoint, devices, Microsoft 365 Defender, Defender
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 10/11/2022
---

# Asset rule management - Dynamic rules for devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

Maintaining an accurate inventory of devices in a constantly changing corporate environment is a critical task for security and IT teams. Failing to properly manage device context, such as device value and tags, which many organizations use in their security workflows can lead to security vulnerabilities.

Devices may require updates, replacements, or reconfigurations due to changing business needs. This can create a significant challenge for security and IT teams who are responsible for the ongoing management of the device inventory, and ensuring devices are effectively tracked and managed over time.

Dynamic rules can help manage device context by assigning tags and device values automatically based on certain criteria. This will save time and ensures accuracy. For example, tagging devices with a specific OS version or assigning a value to devices with a particular naming convention. Dynamic rules also ensure devices remain relevant by removing tags or updating values when criteria are no longer met.

## Create a new dynamic rule

A rule can be based on device name, domain, OS platform, internet facing status, onboarding status and manual device tags. You can choose one the following actions to perform based on the conditions you've set:

- **Apply a tag**: Select or create a tag that will be applied to the conditions you set.
- **Set the asset value**: Define an asset’s value to the organization as high, normal, or low.

The following steps guide you on how to create a new dynamic rule in Microsoft 365 Defender:

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as a user who can view and perform actions on all devices.
2. In the navigation pane, select **Settings** \> **Microsoft 365 Defender** \> **Asset Rule Management**.
3. Select **Create a new rule**.
4. Enter a **Rule name** and **Description** and select **Next**.
5. Select **Next** to choose the conditions you want to assign:

:::image type="content" source="../../media/defender/rule-conditions.png" alt-text="Screenshot of the Rule conditions page" lightbox="../../media/defender/rule-conditions.png":::
6. Select **Next** and choose the tag or asset value to apply to this rule.

:::image type="content" source="../../media/defender/rules-to-apply1.png" alt-text="Screenshot of the actions page" lightbox="../../media/defender/rules-to-apply1.png":::

8. Select **Next** to review and finish creating the rule and then select **Submit**.

>[!Note]
> It may take up to 1 hour for changes to be reflected in the portal.

### Dynamic tags in the Device Inventory

You can see the dynamic tags assigned in the Device Inventory view.

To see tags on individual devices:

1. Select **Devices** from the **Assets** navigation menu in the [Microsoft 365 Defender portal](https://security.microsoft.com).
2. In the **Device Inventory** page, select the device name that you want to view.
3. Select **Manage tags**.

:::image type="content" source="../../media/defender/manage-machine-tags.png" alt-text="Screenshot of the machine tags page" lightbox="../../media/defender/manage-machine-tags.png":::

### Updating rules

Dynamic tags and device value can't be manually updated. To edit, delete or turn off a rule, select the rule you'd like to edit and choose the action you wish to take:

:::image type="content" source="../../media/defender/update-rule.png" alt-text="Screenshot of the rule details page" lightbox="../../media/defender/update-rule.png":::
