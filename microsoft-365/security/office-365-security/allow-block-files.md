---
title: Allow or block files using the Tenant Allow/Block List
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to

ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
description: Admins can learn how to allow or block files in the Tenant Allow/Block List in the Security portal.
ms.technology: mdo
ms.prod: m365-security
---

# Allow or block files using the Tenant Allow/Block List

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

You can use the Microsoft 365 Defender portal or PowerShell to allow or block files in the Tenant Allow/Block List.

## Create block file entries 

### Use Microsoft 365 Defender

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat Policies** \> **Rules** section \> **Tenant Allow/Block Lists**. Or, to go directly to the **Tenant Allow/Block List** page, use <https://security.microsoft.com/tenantAllowBlockList>.

2. On the **Tenant Allow/Block List** page, select the **Files** tab, and then click ![Block icon.](../../media/m365-cc-sc-create-icon.png) **Block**.

3. In the **Block files** flyout that appears, configure the following settings:
   - **Add file hashes**: Enter one SHA256 hash value per line, up to a maximum of 20.
   - **Never expire**: Do one of the following steps:
     - Verify the setting is turned off (![Toggle off.](../../media/scc-toggle-off.png)) and use the **Remove on** box to specify the expiration date for the entries.

     or

     - Move the toggle to the right to configure the entries to never expire: ![Toggle on.](../../media/scc-toggle-on.png).
   - **Optional note**: Enter descriptive text for the entries.

4. When you're finished, click **Add**.

> [!NOTE]
> The emails containing these files will be blocked as _malware_.

### Use PowerShell

To add block file entries in the Tenant Allow/Block List, use the following syntax:

```powershell
New-TenantAllowBlockListItems -ListType <FileHash> -Block -Entries "Value1","Value2",..."ValueN" <-ExpirationDate Date | -NoExpiration> [-Notes <String>]
```

This example adds a block file entry for the specified files that never expires.

```powershell
New-TenantAllowBlockListItems -ListType FileHash -Block -Entries "768a813668695ef2483b2bde7cf5d1b2db0423a0d3e63e498f3ab6f2eb13ea3","2c0a35409ff0873cfa28b70b8224e9aca2362241c1f0ed6f622fef8d4722fd9a" -NoExpiration
```

For detailed syntax and parameter information, see [New-TenantAllowBlockListItems](/powershell/module/exchange/new-tenantallowblocklistitems).

## Create allow file entries

### Use Microsoft 365 Defender

Allow Files  on the **Submissions** page in Microsoft 365 Defender.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Actions & submissions** \> **Submissions**. Or, to go directly to the **Submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **Submissions** page, select the **Email attachments** tab, and then click ![Submit to Microsoft for analysis icon.](../../media/m365-cc-sc-create-icon.png) **Submit to Microsoft for analysis**.

3. Use the **Submit to Microsoft for review** flyout to submit a message by adding the file or files.

4. In the **Select a reason for submitting to Microsoft** section, select **Should not have been blocked (false positive)**.

5. Turn on the **Allow files like this** option.

6. From the **Remove after** drop-down list, specify for how long you want the allow option to work.

7. When you're finished, click the **Submit** button.

  :::image type="content" source="../../media/submit-email-for-analysis.png" alt-text="Submit email for analysis." lightbox="../../media/submit-email-for-analysis.png":::

> [!NOTE]
>
> When the file is encountered again, it is not sent for detonation or reputation checks, and all other file-based filters are skipped. During mail flow, if the rest of the filters find the email that contains the file to be clean, then the email will be delivered.

## View file entries 

To view block file entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Get-TenantAllowBlockListItems -ListType <FileHash> [-Entry <SenderValue | FileHashValue | URLValue>] [<-ExpirationDate Date | -NoExpiration>]
```

This example returns information for the specified file hash value.

```powershell
Get-TenantAllowBlockListItems -ListType FileHash -Entry "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"
```

For detailed syntax and parameter information, see [Get-TenantAllowBlockListItems](/powershell/module/exchange/get-tenantallowblocklistitems).

## Modify file entries

To modify allow or block file entries in the Tenant Allow/Block List, use the following syntax:

```powershell
Set-TenantAllowBlockListItems -ListType <FileHash> -Ids <"Id1","Id2",..."IdN"> [<-ExpirationDate Date | -NoExpiration>] [-Notes <String>]
```

For detailed syntax and parameter information, see [Set-TenantAllowBlockListItems](/powershell/module/exchange/set-tenantallowblocklistitems).

## Remove file entries 

To remove allow or block file entries from the Tenant Allow/Block List, use the following syntax:

```powershell
Remove-TenantAllowBlockListItems -ListType <FileHash> -Ids <"Id1","Id2",..."IdN">
```

For detailed syntax and parameter information, see [Remove-TenantAllowBlockListItems](/powershell/module/exchange/remove-tenantallowblocklistitems).

## Related articles

- [Admin submissions](admin-submission.md)
- [Report false positives and false negatives](report-false-positives-and-false-negatives.md)
- [Manage your allows and blocks in the Tenant Allow/Block List](manage-tenant-allow-block-list.md)
- [Allow or block emails in the Tenant Allow/Block List](allow-block-email-spoof.md)
- [Allow or block URLs in the Tenant Allow/Block List](allow-block-urls.md)