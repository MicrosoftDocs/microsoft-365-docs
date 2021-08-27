---
title: Configure Directory Services account in Microsoft Defender for Identity
description: Learn how to configure the Microsoft Defender for Identity Directory Services account in Microsoft 365 Defender
ms.date: 08/15/2021
ms.topic: how-to
author: dcurwin
ms.author: dacurwin
ms.service: microsoft-defender-for-identity
manager: raynew
---

# Microsoft Defender for Identity Directory Services account in Microsoft 365 Defender

**Applies to:**

- Microsoft 365 Defender
- Defender for Identity

This article explains how to configure the [Microsoft Defender for Identity](/defender-for-identity) Directory Services account in [Microsoft 365 Defender](/microsoft-365/security/defender/overview-security-center).

>[!IMPORTANT]
>As part of the convergence with Microsoft 365 Defender, some options and details have changed from their location in the Defender for Identity portal. Please read the details below to discover where to find both the familiar and new features.

## Configure Directory Services account

To connect the [sensor](sensor-health.md#add-a-sensor) with your Active Directory domains, you'll need to configure Directory Services accounts.

1. In [Microsoft 365 Defender](https://security.microsoft.com/), go to **Settings** and then **Identities**.

    ![Go to Settings, then Identities.](../../media/defender-identity/settings-identities.png)

1. Select **Directory Service accounts**. You'll see which accounts are associated with which domains.

    ![Directory Service accounts.](../../media/defender-identity/directory-service-accounts.png)

1. If you select an account, a pane will open with the settings for that account.

    ![Account settings.](../../media/defender-identity/account-settings.png)

1. To add a new Directory Services account, select **Create new account** and fill in the **Account name**, **Domain**, and **Password**. You can also choose if it's a **Group managed service account** (gMSA), and if it belongs to a **Single label domain**.

    ![New Directory Service account.](../../media/defender-identity/new-directory-service-account.png)

1. Select **Save**.

## See also

- [Microsoft Defender for Identity sensor health and settings](sensor-health.md)
