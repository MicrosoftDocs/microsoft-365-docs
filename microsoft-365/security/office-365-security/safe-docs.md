---
title: Safe Documents in Microsoft Defender for Office 365
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer: kshi
ms.date:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid:
ms.collection:
  - M365-security-compliance
description: Learn about Safe Documents in Microsoft 365 A5 or E5 Security.
ms.technology: mdo
ms.prod: m365-security
---

# Safe Documents in Microsoft 365 A5 or E5 Security

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Safe Documents is a premium feature that uses the cloud backend of [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) to scan opened Office documents in [Protected View](https://support.microsoft.com/office/d6f09ac7-e6b9-4495-8e43-2bbcdbcb6653) or [Application Guard for Office](https://support.microsoft.com/topic/9e0fb9c2-ffad-43bf-8ba3-78f785fdba46).

Users don't need Defender for Endpoint installed on their local devices to get Safe Documents protection. Users get Safe Documents protection if all of the following requirements are met:

- Safe Documents is enabled in the organization as described in this article.
- Licenses from a required licensing plan are assigned to the users. Safe Documents is controlled by the **Office 365 SafeDocs** (or **SAFEDOCS** or **bf6f5520-59e3-4f82-974b-7dbbc4fd27c7**) service plan (also known as a service). This service plan is available in the following licensing plans (also known as license plans, Microsoft 365 plans, or products):
  - Microsoft 365 A5 for Faculty
  - Microsoft 365 A5 for Students
  - Microsoft 365 E5 Security

  Safe Documents is not included in Microsoft Defender for Office 365 licensing plans.

  For more information, see [Product names and service plan identifiers for licensing](/azure/active-directory/enterprise-users/licensing-service-plan-reference).

- They're using Microsoft 365 Apps for enterprise (formerly known as Office 365 ProPlus) version 2004 or later.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need permissions in **Exchange Online** before you can do the procedures in this article:
  - To configure Safe Documents settings, you need to be a member of the **Organization Management** or **Security Administrator** role groups.
  - For read-only access to Safe Documents settings, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

  > [!NOTE]
  >
  > - Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
  >
  > - The **View-Only Organization Management** role group in [Exchange Online](/Exchange/permissions-exo/permissions-exo#role-groups) also gives read-only access to the feature.

### How does Microsoft handle your data?

To keep you protected, Safe Documents sends files to the [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) cloud for analysis. Details on how Microsoft Defender for Endpoint handles your data can be found here: [Microsoft Defender for Endpoint data storage and privacy](/windows/security/threat-protection/microsoft-defender-atp/data-storage-privacy).

Files sent by Safe Documents are not retained in Defender for Endpoint beyond the time needed for analysis (typically, less than 24 hours).

## Use the Microsoft 365 Defender portal to configure Safe Documents

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, click **Global settings**.

3. In the **Global settings** fly out that appears, configure the following settings:
   - **Turn on Safe Documents for Office clients**: Move the toggle to the right to turn on the feature: ![Toggle on.](../../media/scc-toggle-on.png).
   - **Allow people to click through Protected View even if Safe Documents identified the file as malicious**: We recommend that you leave this option turned off (leave the toggle to the left: ![Toggle off.](../../media/scc-toggle-off.png)).

   When you're finished, click **Save**.

   :::image type="content" source="../../media/safe-docs-global-settings.png" alt-text="The Safe Documents settings after selecting Global settings on the Safe Attachments page" lightbox="../../media/safe-docs-global-settings.png":::

### Use Exchange Online PowerShell to configure Safe Documents

If you'd rather user PowerShell to configure Safe Documents, use the following syntax in Exchange Online PowerShell:

```powershell
Set-AtpPolicyForO365 -EnableSafeDocs <$true | $false> -AllowSafeDocsOpen <$true | $false>
```

- The _EnableSafeDocs_ parameter enables or disables Safe Documents for the entire organization.
- The _AllowSafeDocsOpen_ parameter allows or prevents users from leaving Protected View (that is, opening the document) if the document has been identified as malicious.

This example enables Safe Documents for the entire organization, and prevents users from opening documents that have been identified as malicious from Protected View.

```powershell
Set-AtpPolicyForO365 -EnableSafeDocs $true -AllowSafeDocsOpen $false
```

For detailed syntax and parameter information, see [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365).

### Configure individual access to Safe Documents

If you want to selectively allow or block access to the Safe Documents feature, follow these steps:

1. Turn on Safe Documents in the Microsoft 365 Defender portal or Exchange Online PowerShell as previously described in this article.
2. Use Azure AD PowerShell to disable Safe Documents for specific users as described in [Disable specific Microsoft 365 services for specific users for a specific licensing plan](/microsoft-365/enterprise/disable-access-to-services-with-microsoft-365-powershell#disable-specific-microsoft-365-services-for-specific-users-for-a-specific-licensing-plan).

  The name of the service plan to disable in PowerShell is **SAFEDOCS**.

For more information, see the following topics:

- [View Microsoft 365 licenses and services with PowerShell](/microsoft-365/enterprise/view-licenses-and-services-with-microsoft-365-powershell)
- [View Microsoft 365 account license and service details with PowerShell](/microsoft-365/enterprise/view-account-license-and-service-details-with-microsoft-365-powershell)
- [Product names and service plan identifiers for licensing](/azure/active-directory/enterprise-users/licensing-service-plan-reference)

### Onboard to the Microsoft Defender for Endpoint service to enable auditing capabilities

To enable auditing capabilities, the local device needs to have Microsoft Defender for Endpoint installed. To deploy Microsoft Defender for Endpoint, you need to go through the various phases of deployment. After onboarding, you can configure auditing capabilities in the Microsoft 365 Defender portal.

To learn more, see [Onboard to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/onboarding). If you need additional help, refer to [Troubleshoot Microsoft Defender for Endpoint onboarding issues](/microsoft-365/security/defender-endpoint/troubleshoot-onboarding).

### How do I know this worked?

To verify that you've enabled and configured Safe Documents, do any of the following steps:

- In the Microsoft 365 Defender portal, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section \> **Global settings**, and verify the **Turn on Safe Documents for Office clients** and **Allow people to click through Protected View even if Safe Documents identifies the file as malicious** settings.

- Run the following command in Exchange Online PowerShell and verify the property values:

  ```powershell
  Get-AtpPolicyForO365 | Format-List *SafeDocs*
  ```

- The following files are available to test Safe Documents protection. These files are similar to the EICAR.TXT file for testing anti-malware and anti-virus solutions. The files are not harmful, but they will trigger Safe Documents protection.

  - [SafeDocsDemo.docx](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/SafeDocsDemo.docx)
  - [SafeDocsDemo.pptx](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/SafeDocsDemo.pptx)
  - [SafeDocsDemo.xlsx](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/SafeDocsDemo.xlsx)
