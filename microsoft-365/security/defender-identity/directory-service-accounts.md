---
title: Configure Directory Services account in Microsoft Defender for Identity
description: Learn how to configure the Microsoft Defender for Identity Directory Services account in Microsoft 365 Defender
ms.date: 08/15/2021
ms.topic: how-to
author: batamig
ms.author: bagol
ms.service: microsoft-defender-for-identity
ms.custom: admindeeplinkDEFENDER
manager: raynew
ms.collection: m365-security
search.appverid: met150
---

# Microsoft Defender for Identity Directory Services account in Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This article explains how to configure the [Microsoft Defender for Identity](/defender-for-identity) Directory Services account in [Microsoft 365 Defender](/microsoft-365/security/defender/overview-security-center).

> [!IMPORTANT]
> As part of the convergence with Microsoft 365 Defender, some options and details have changed from their location in the Defender for Identity portal. Please read the details below to discover where to find both the familiar and new features.

## Configure Directory Services account

To connect the [sensor](sensor-health.md#add-a-sensor) with your Active Directory domains, you'll need to configure Directory Services accounts.

1. In <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a>, go to **Settings** and then **Identities**.

   :::image type="content" source="../../media/defender-identity/settings-identities.png" alt-text="The Identities option in the Settings page" lightbox="../../media/defender-identity/settings-identities.png":::

1. Select **Directory Service accounts**. You'll see which accounts are associated with which domains.

   :::image type="content" source="../../media/defender-identity/directory-service-accounts.png" alt-text="The Directory Service accounts menu item" lightbox="../../media/defender-identity/directory-service-accounts.png":::

1. If you select an account, a pane will open with the settings for that account.

   :::image type="content" source="../../media/defender-identity/account-settings.png" alt-text="The Account settings page" lightbox="../../media/defender-identity/account-settings.png":::

1. To add a new Directory Services account, select **Create new account** and fill in the **Account name**, **Domain**, and **Password**. You can also choose if it's a **Group managed service account** (gMSA), and if it belongs to a **Single label domain**.

   :::image type="content" source="../../media/defender-identity/new-directory-service-account.png" alt-text="The Create new account option" lightbox="../../media/defender-identity/new-directory-service-account.png":::

1. Select **Save**.

## See also

- [Microsoft Defender for Identity sensor health and settings](sensor-health.md)
