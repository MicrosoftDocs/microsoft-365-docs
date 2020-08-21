---
title: Safe Documents in Office 365 ATP
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer: kshi
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Learn about Safe Documents in Microsoft 365 E5 or Microsoft 365 E5 Security."
---

# Safe Documents in Microsoft 365 E5

Safe Documents is a feature in Microsoft 365 E5 or Microsoft 365 E5 Security that uses [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) to scan documents and files that are opened in [Protected View](https://support.microsoft.com/office/d6f09ac7-e6b9-4495-8e43-2bbcdbcb6653).

## What do you need to know before you begin?

- Safe Documents is now generally available to users with Office Version 2004 (12730.x) or greater! This feature is off by default and will need to be enabled by the Security Administrator.

- This feature is only available to users with the *Microsoft 365 E5* or *Microsoft 365 E5 Security* license (not included in Office 365 ATP plans).

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform the procedures in this topic. To enable and configure Safe Documents, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For more information about role groups in the Security & Compliance Center, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## How does Microsoft handle your data?

To keep you protected, Safe Documents sends files to the [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) cloud for analysis.

- Details on how Microsoft Defender Advanced Threat Protection handles your data can be found [here](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy)
- In addition to the guidelines above, files sent by Safe Documents are not retained in Defender beyond the time needed for analysis, which is typically less than 24 hours

## Use the Security & Compliance Center to configure Safe Documents

1. Open the Security & Compliance Center at <https://protection.office.com>.

2. Go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

3. In the **Help people stay safe when trusting a file to open outside Protected View in Office applications** section, configure either of the following settings:

   - **Turn on Safe Documents for Office clients**

   - **Allow people to click through Protected View even if Safe Documents identifies the file as malicious**: We recommend that you don't enable this option.

4. When you're finished, click **Save**.

![ATP Safe attachments page](../../media/safe-docs.png)

### Use Exchange Online PowerShell or standalone EOP PowerShell to configure Safe Documents

Use the following syntax:

```powershell
Set-AtpPolicyForO365 -EnableSafeDocs <$true | $false> -AllowSafeDocsOpen <$true | $false>
```

- The _EnableSafeDocs_ parameter enables or disables Safe Documents for the entire organization.

- The _AllowSafeDocsOpen_ parameter allows or prevents users from leaving Protected View (that is, opening the document) if the document has been identified as malicious.

This example enables Safe Documents for the entire organization, and prevents users from opening documents that have been identified as malicious from Protected View.

```powershell
Set-AtpPolicyForO365 -EnableSafeDocs $true -AllowSafeDocsOpen $false
```

For detailed syntax and parameter information, see [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365).

### How do I know this worked?

To verify that you've enabled and configured Safe Documents, do any of the following steps:

- In the Security & Compliance Center go to **Threat management** \> **Policy** \> **ATP Safe Attachments**, and verify the selections in the **Help people stay safe when trusting a file to open outside Protected View in Office applications** section.

- Run the following command in Exchange Online PowerShell and verify the property values:

  ```powershell
  Get-AtpPolicyForO365 | Format-List *SafeDocs*
  ```
