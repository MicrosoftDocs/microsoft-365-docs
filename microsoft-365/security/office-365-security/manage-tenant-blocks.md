---
title: Manage your blocks in the Tenant Allow/Block List
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
description: Admins can learn how to configure blocks in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Manage the Tenant Block List

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

## Use the Microsoft 365 Defender portal to create block URL entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, verify that the **URLs** tab is selected, and then click ![Block icon](../../media/m365-cc-sc-create-icon.png) **Block**.

3. In the **Block URLs** flyout that appears, configure the following settings:
   - **Add URLs with wildcards**: Enter one URL per line, up to a maximum of 20. For details about the syntax for URL entries, see the URL syntax section in [Manage the Tenant Allow/Block List](tenant-allow-block-list.md).
   - **Never expire**: Do one of the following steps:
     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Remove on** box to specify the expiration date for the entries.

       or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on](../../media/scc-toggle-on.png).
   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

## Use the Microsoft 365 Defender portal to create block file entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, select the **Files** tab, and then click ![Block icon](../../media/m365-cc-sc-create-icon.png) **Block**.

3. In the **Block files** flyout that appears, configure the following settings:
   - **Add file hashes**: Enter one SHA256 hash value per line, up to a maximum of 20.
   - **Never expire**: Do one of the following steps:
     - Verify the setting is turned off (![Toggle off](../../media/scc-toggle-off.png)) and use the **Remove on** box to specify the expiration date for the entries.

     or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on](../../media/scc-toggle-on.png).
   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

## Use the Microsoft 365 Defender portal to create allow or block spoofed sender entries in the Tenant Allow/Block List

**Notes**:

- Only the _combination_ of the spoofed user _and_ the sending infrastructure as defined in the domain pair is specifically allowed or blocked from spoofing.
- When you configure an allow or block entry for a domain pair, messages from that domain pair no longer appear in the spoof intelligence insight.
- Entries for spoofed senders never expire.

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. On the **Tenant Allow/Block List** page, select the **Spoofing** tab, and then click ![Block icon](../../media/m365-cc-sc-create-icon.png) **Add**.

3. In the **Add new domain pairs** flyout that appears, configure the following settings:
   - **Add new domain pairs with wildcards**: Enter one domain pair per line, up to a maximum of 20. For details about the syntax for spoofed sender entries, see [Manage the Tenant Allow/Block List](tenant-allow-block-list.md).
   - **Spoof type**: Select one of the following values:
     - **Internal**: The spoofed sender is in a domain that belongs to your organization (an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)).
     - **External**: The spoofed sender is in an external domain.
   - **Action**: Select **Allow** or **Block**.

4. When you're finished, click **Add**.

## Use the Microsoft 365 Defender portal to view entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab you want. The columns that are available depend on the tab you selected:

   - **URLs**:
     - **Value**: The URL.
     - **Action**: The value **Block**.
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Files**
     - **Value**: The file hash.
     - **Action**: The value **Block**.
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Spoofing**
     - **Spoofed user**
     - **Sending infrastructure**
     - **Spoof type**: The value **Internal** or **External**.
     - **Action**: The value **Block** or **Allow**.

   You can click on a column heading to sort in ascending or descending order.

   You can click **Group** to group the results. The values that are available depend on the tab you selected:

   - **URLs**: You can group the results by **Action**.
   - **Files**: You can group the results by **Action**.
   - **Spoofing**: You can group the results by **Action** or **Spoof type**.

   Click **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click **Filter** to filter the results. The values that are available in **Filter** flyout that appears depend on the tab you selected:

   - **URLs**
     - **Action**
     - **Never expire**
     - **Last updated date**
     - **Remove on**
   - **Files**
     - **Action**
     - **Never expire**
     - **Last updated**
     - **Remove on**
   - **Spoofing**
     - **Action**
     - **Spoof type**

   When you're finished, click **Apply**. To clear existing filters, click **Filter**, and in the **Filter** flyout that appears, click **Clear filters**.

## Use the Microsoft 365 Defender portal to modify entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab that contains the type of entry that you want to modify:
   - **URLs**
   - **Files**
   - **Spoofing**

3. Select the entry that you want to modify, and then click ![Edit icon](../../media/m365-cc-sc-edit-icon.png) **Edit**. The values that you are able to modify in the flyout that appears depend on the tab you selected in the previous step:
   - **URLs**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Files**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Spoofing**
     - **Action**: You can change the value to **Allow** or **Block**.
4. When you're finished, click **Save**.

## Use the Microsoft 365 Defender portal to remove entries from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**.

2. Select the tab that contains the type of entry that you want to remove:
   - **URLs**
   - **Files**
   - **Spoofing**

3. Select the entry that you want to remove, and then click ![Delete icon](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.