---
title: Manage your allows and blocks in the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
ms.custom:
description: Learn how to manage allows and blocks in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Manage your allows and blocks in the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, you might disagree with the EOP filtering verdict. For example, a good message might be marked as bad (a false positive), or a bad message might be allowed through (a false negative).

The Tenant Allow/Block List in the Microsoft 365 Defender portal gives you a way to manually override the Microsoft 365 filtering verdicts. The Tenant Allow/Block List is used during mail flow for incoming messages (does not apply to intra-org messages) and at the time of user clicks. You can specify the following types of overrides:

- URLs to block.
- Files to block.
- Sender emails or domains to block.
- Spoofed senders to allow or block. If you override the allow or block verdict in the [spoof intelligence insight](learn-about-spoof-intelligence.md), the spoofed sender becomes a manual allow or block entry that only appears on the **Spoof** tab in the Tenant Allow/Block List. You can also manually create allow or block entries for spoofed senders here before they're detected by spoof intelligence.
- URLs to allow.
- Files to allow.
- Sender emails or domains to allow.

This article describes how to configure entries in the Tenant Allow/Block List in the Microsoft 365 Defender portal or in PowerShell (Exchange Online PowerShell for Microsoft 365 organizations with mailboxes in Exchange Online; standalone EOP PowerShell for organizations without Exchange Online mailboxes).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

- You specify files by using the SHA256 hash value of the file. To find the SHA256 hash value of a file in Windows, run the following command in a Command Prompt:

  ```console
  certutil.exe -hashfile "<Path>\<Filename>" SHA256
  ```

  An example value is `768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3a`. Perceptual hash (pHash) values are not supported.

- The Tenant Allow/Block List allows a maximum of 500 entries for senders, 500 entries for URLs, 500 entries for file hashes, and 1024 entries for spoofing (spoofed senders).

- The maximum number of characters for each entry is:
  - File hashes = 64
  - URL = 250

- An entry should be active within 30 minutes.

- By default, entries in the Tenant Allow/Block List will expire after 30 days. You can specify a date or set them to never expire.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions in Exchange Online before you can do the procedures in this article:
  - To add and remove values from the Tenant Allow/Block List, you need to be a member of
    - **Organization Management** or **Security Administrator** role group (**Security admin role**)
    - **Security Operator** role group (**Tenant AllowBlockList Manager**).
    - For read-only access to the Tenant Allow/Block List, you need to be a member of
      - **Global Reader**  role group
      - **Security Reader** role group
      - **View-Only configuration** role group

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  >
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions *and* permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  > - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

## Configure the Tenant Allow/Block List

### Use the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. To go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

To add all blocks, see [Add blocks in the Tenant Allow/Block List](manage-tenant-blocks.md).

To add all allows, see [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md).

To modify and remove all blocks and allows, see [Modify and remove entries in the Tenant Allow/Block List](modify-remove-entries-tenant-allow-block.md).

### Use Exchange Online PowerShell or standalone EOP PowerShell

To manage all allows and blocks, see [Add blocks in the Tenant Allow/Block List](manage-tenant-blocks.md), [Add allows in the Tenant Allow/Block List](manage-tenant-allows.md), and [Modify and remove entries in the Tenant Allow/Block List](modify-remove-entries-tenant-allow-block.md).

### What to expect after you add an allow or block entry

After you add an allow entry through the Submissions portal or a block entry in the Tenant Allow/Block List, the entry should start working immediately.

We recommend letting entries automatically expire after 30 days to see if the system has learned about the allow or block. If not, you should make another entry to give the system another 30 days to learn.

## View entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Tenant Allow/Block Lists** in the **Rules** section. Or, to go directly to the **Tenant Allow/Block Lists** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the tab you want. The columns that are available depend on the tab you selected:

   - **Senders**:
     - **Value**: The sender domain or email address.
     - **Action**: The value **Allow** or **Block**.
     - **Modified by**
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Spoofing**
     - **Spoofed user**
     - **Sending infrastructure**
     - **Spoof type**: The value **Internal** or **External**.
     - **Action**: The value **Block** or **Allow**.
   - **URLs**:
     - **Value**: The URL.
     - **Action**: The value **Allow** or **Block**.
     - **Modified by**
     - **Last updated**
     - **Remove on**
     - **Notes**
   - **Files**
     - **Value**: The file hash.
     - **Action**: The value **Allow** or **Block**.
     - **Modified by**
     - **Last updated**
     - **Remove on**
     - **Notes**

   You can click on a column heading to sort in ascending or descending order.

   You can click **Group** to group the results. The values that are available depend on the tab you selected:

   - **Senders**: You can group the results by **Action**.
   - **Spoofing**: You can group the results by **Action** or **Spoof type**.
   - **URLs**: You can group the results by **Action**.
   - **Files**: You can group the results by **Action**.

   Click **Search**, enter all or part of a value, and then press ENTER to find a specific value. When you're finished, click ![Clear search icon.](../../media/m365-cc-sc-close-icon.png) **Clear search**.

   Click **Filter** to filter the results. The values that are available in **Filter** flyout that appears depend on the tab you selected:

   - **Senders**
     - **Action**
     - **Never expire**
     - **Last updated date**
     - **Remove on**
   - **Spoofing**
     - **Action**
     - **Spoof type**
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

   When you're finished, click **Apply**. To clear existing filters, click **Filter**, and in the **Filter** flyout that appears, click **Clear filters**.

3. When you're finished, click **Add**.

## Modify entries in the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the tab that contains the type of entry that you want to modify:
   - **Senders**
   - **Spoofing**
   - **URLs**
   - **Files**

3. Select the entry that you want to modify, and then click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**. The values that you are able to modify in the flyout that appears depend on the tab you selected in the previous step:
   - **Senders**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Spoofing**
     - **Action**: You can change the value to **Allow** or **Block**.
   - **URLs**
     - **Never expire** and/or expiration date.
     - **Optional note**
   - **Files**
     - **Never expire** and/or expiration date.
     - **Optional note**

4. When you're finished, click **Save**.

> [!NOTE]
> You can only extend allows for a maximum of 30 days after the creation date. Blocks can be extended for up to 90 days, but unlike allows, they can also be set to Never expire.

## Remove entries from the Tenant Allow/Block List

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. Select the tab that contains the type of entry that you want to remove:
   - **Senders**
   - **Spoofing**
   - **URLs**
   - **Files**

3. Select the entry that you want to remove, and then click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

4. In the warning dialog that appears, click **Delete**.

## Related articles

- [Allow or block files in the Tenant Allow/Block List](allow-block-files.md)
- [Allow or block emails in the Tenant Allow/Block List](allow-block-email-spoof.md)
- [Allow or block URLs in the Tenant Allow/Block List](allow-block-urls.md)