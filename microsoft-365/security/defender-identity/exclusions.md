---
title: Microsoft Defender for Identity detection exclusions in Microsoft 365 Defender
description: Learn how to configure Microsoft Defender for Identity detection exclusions in Microsoft 365 Defender.
ms.date: 11/02/2021
ms.topic: how-to
author: batamig
ms.author: bagol
ms.service: microsoft-defender-for-identity
manager: raynew
ms.collection: m365-security
search.appverid: met150
---

# Configure Defender for Identity detection exclusions in Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This article explains how to configure [Microsoft Defender for Identity](/defender-for-identity) detection exclusions in [Microsoft 365 Defender](/microsoft-365/security/defender/overview-security-center).

> [!IMPORTANT]
> As part of the convergence with Microsoft 365 Defender, some options and details have changed from their location in the Defender for Identity portal. Please read the details below to discover where to find both the familiar and new features.

[!INCLUDE [Product long](includes/product-long.md)] enables the exclusion of specific IP addresses, computers, domains, or users from a number of detections.

For example, a **DNS Reconnaissance** alert could be triggered by a security scanner that uses DNS as a scanning mechanism. Creating an exclusion helps Defender for Identity ignore such scanners and reduce false positives.

> [!NOTE]
> Of the most common domains with [Suspicious communication over DNS](/defender-for-identity/exfiltration-alerts#suspicious-communication-over-dns-external-id-2031) alerts opened on them, we observed the domains that customers most excluded from the alert. These domains are added to the exclusions list by default, but you have the option to easily remove them.

## How to add detection exclusions

1. In [Microsoft 365 Defender](https://security.microsoft.com/), go to **Settings** and then **Identities**.

   :::image type="content" source="../../media/defender-identity/settings-identities.png" alt-text="The Identities option in the Name column" lightbox="../../media/defender-identity/settings-identities.png":::

1. You'll then see **Excluded entities** in the left-hand menu.

   :::image type="content" source="../../media/defender-identity/excluded-entities.png" alt-text="The Excluded entities pane" lightbox="../../media/defender-identity/excluded-entities.png":::

You can then set exclusions by two methods: **Exclusions by detection rule** and **Global excluded entities**.

## Exclusions by detection rule

1. In the left-hand menu, select **Exclusions by detection rule**. You'll see a list of detection rules.

   :::image type="content" source="../../media/defender-identity/exclusions-by-detection-rule.png" alt-text="The Exclusions by detection rule option in the Excluded entities item in the left pane" lightbox="../../media/defender-identity/exclusions-by-detection-rule.png":::

1. For each detection you want to configure, do the following steps:

    1. Select the rule. You can search for detections using the search bar. Once selected, a pane will open with the detection rule details.

       :::image type="content" source="../../media/defender-identity/detection-rule-details.png" alt-text="The details of a detection rule" lightbox="../../media/defender-identity/detection-rule-details.png":::

    1. To add an exclusion, select the **Excluded entities** button, and then choose the exclusion type. Different excluded entities are available for each rule. They include users, devices, domains and IP addresses. In this example, the choices are **Exclude devices** and **Exclude IP addresses**.

       :::image type="content" source="../../media/defender-identity/exclude-devices-or-ip-addresses.png" alt-text="The option to exclude devices or IP addresses" lightbox="../../media/defender-identity/exclude-devices-or-ip-addresses.png":::

    1. After choosing the exclusion type, you can add the exclusion. In the pane that opens, select the **+** button to add the exclusion.

       :::image type="content" source="../../media/defender-identity/add-exclusion.png" alt-text="The option to add an exclusion" lightbox="../../media/defender-identity/add-exclusion.png":::

    1. Then add the entity to be excluded. Select **+ Add** to add the entity to the list.

       :::image type="content" source="../../media/defender-identity/add-excluded-entity.png" alt-text="The option to add entity that is to be excluded" lightbox="../../media/defender-identity/add-excluded-entity.png":::

    1. Then select **Exclude IP addresses** (in this example) to complete the exclusion.

       :::image type="content" source="../../media/defender-identity/exclude-ip-addresses.png" alt-text="The option to exclude IP addresses" lightbox="../../media/defender-identity/exclude-ip-addresses.png":::

    1. Once you've added exclusions, you can export the list or remove the exclusions by returning to the **Excluded entities** button. In this example, we've returned to **Exclude devices**. To export the list, select the down arrow button.

       :::image type="content" source="../../media/defender-identity/return-to-exclude-devices.png" alt-text="The Return to Exclude devices option" lightbox="../../media/defender-identity/return-to-exclude-devices.png":::

    1. To delete an exclusion, select the exclusion and select the trash icon.

       :::image type="content" source="../../media/defender-identity/delete-exclusion.png" alt-text="The Delete an exclusion option" lightbox="../../media/defender-identity/delete-exclusion.png":::

## Global excluded entities

You can now also configure exclusions by **Global excluded entities**. Global exclusions allow you to define certain entities (IP addresses, subnets, devices, or domains) to be excluded across all of the detections Defender for Identity has. So for example, if you exclude a device, it will only apply to those detections that have device identification as part of the detection.

1. In the left-hand menu, select **Global excluded entities**. You'll see the categories of entities that you can exclude.

   :::image type="content" source="../../media/defender-identity/global-excluded-entities.png" alt-text="The Global excluded entities submenu item" lightbox="../../media/defender-identity/global-excluded-entities.png":::

1. Choose an exclusion type. In this example, we selected **Exclude domains**.

   :::image type="content" source="../../media/defender-identity/exclude-domains.png" alt-text="The Domains tab" lightbox="../../media/defender-identity/exclude-domains.png":::

1. A pane will open where you can add a domain to be excluded. Add the domain you want to exclude.

   :::image type="content" source="../../media/defender-identity/add-excluded-domain.png" alt-text="The option to add a domain to be excluded" lightbox="../../media/defender-identity/add-excluded-domain.png":::

1. The domain will be added to the list. Select **Exclude domains** to complete the exclusion.

   :::image type="content" source="../../media/defender-identity/select-exclude-domains.png" alt-text="The option to Select domains to be excluded" lightbox="../../media/defender-identity/select-exclude-domains.png":::

1. You'll then see the domain in the list of entities to be excluded from all detection rules. You can export the list, or remove the entities by selecting them and clicking the **Remove** button.

   :::image type="content" source="../../media/defender-identity/global-excluded-entries-list.png" alt-text="The list of global excluded entries" lightbox="../../media/defender-identity/global-excluded-entries-list.png":::

## See also

- [Manage Defender for Identity security alerts](manage-security-alerts.md)
