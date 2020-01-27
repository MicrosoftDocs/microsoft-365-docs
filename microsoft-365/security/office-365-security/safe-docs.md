---
title: Safe Documents in Office 365 ATP
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer: kshi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Learn about Safe Documents in Office 365"
---

# Safe Documents in Office 365 ATP

Safe Documents is a feature in Office 365 Advanced Threat Protection (ATP) that uses [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) to scan documents and files that are opened in [Protected View](https://support.office.com/article/d6f09ac7-e6b9-4495-8e43-2bbcdbcb6653).

## What do you need to know before you begin?

## Use the Office 365 Security & Compliance Center to configure Safe Documents

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP Safe Attachments**.

2. In the **Help people stay safe when trusting a file to open outside Protected View in Office applications** section, configure either of the following settings:

   - **Turn on Safe Documents for Office clients (Files will also be sent to Microsoft Cloud for deep analyses)**

   - **Allow people to click through Protected View even if Safe Documents identifies the file as malicious**: We recommend that you don't enable this option.

3. When you're finished, click **Save**.

### Use Exchange Online PowerShell to configure Safe Documents

Use the following syntax:

```powershell
Set-AtpPolicyForO365 -EnableSafeDocs <$true|$false> -AllowSafeDocsOpen <$true|$false>
```

- The _EnableSafeDocs_ parameter enables or disables Safe Documents for the entire organization.

- The _AllowSafeDocsOpen_ parameter allows or prevents users from leaving Protected View (that is, opening the document) if the document has been identified as malicious.

This example enables Safe Documents for the entire organization, and prevents users from opening documents that have been identified as malicious from Protected View.

```powershell
Set-AtpPolicyForO365 -EnableSafeDocs $true -AllowSafeDocsOpen $true
```

For detailed syntax and parameter information, see [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/set-atppolicyforo365).

### How do I know this worked

To verify that you've enabled and configured Safe Documents, do any of the following steps:

- In the Security & Compliance Center go to **Threat management** \> **Policy** \> **ATP Safe Attachments**, and verify the selections in the **Help people stay safe when trusting a file to open outside Protected View in Office applications** section.

- Run the following command in Exchange Online PowerShell and verify the property values:

```powershell
Get-AtpPolicyForO365 | Format-List *SafeDocs*
```

- Send the EICAR Anti-Virus Test File to a user and verify that they can or can't launch the attachment in Protected View.

  To create the EICAR Anti-Virus Test File, open Notepad, copy the following text into a new text file, and save the file as EICAR.TXT:

  ```text
  X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*
  ```

  **Notes**:

  - Verify that this is the only text in the file, which should be 68 bytes in size.

  - Save the file to a custom folder that's excluded from scanning by your computer's antivirus program.
