---
title: Microsoft 365 for business security best practices
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: reference
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 07/10/2023
ms.localizationpriority: medium
ms.collection:
- highpri
- m365-security
- tier2
- ContentEnagagementFY23
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn best practices to protect your data using Microsoft 365 Business Basic, Standard, or Premium. Protect devices, email, files, and accounts."
---

# Microsoft 365 for business security best practices

> [!TIP]
> **This article is for small and medium-sized businesses who have up to 300 users**. 
> If you're looking for information for enterprise organizations, see [Deploy ransomware protection for your Microsoft 365 tenant](../solutions/ransomware-protection-microsoft-365.md).
> If you're a Microsoft partner, see [Resources for Microsoft partners working with small and medium-sized businesses](../security/defender-business/mdb-partners.md).

Microsoft 365 Business Basic, Standard, and Premium all include antiphishing, antispam, and antimalware protection to protect your email online. Microsoft 365 Business Premium includes even more security capabilities, such as advanced cybersecurity protection for:

- Devices, such as computers, tablets, and phones (also referred to as endpoints)
- Email & collaboration content (such as Office documents)
- Data (encryption, sensitivity labels, and Data Loss Prevention) 

This article describes the top 10 ways to secure your business data with Microsoft 365 for business. For more information about what each plan includes, see [Microsoft 365 User Subscription Suites for Small and Medium-sized Businesses](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWR6bM).

## Top 10 ways to secure your business data

:::image type="content" source="media/top-10-ways-to-secure-data.png" alt-text="Diagram listing the top 10 ways to secure business data with Microsoft 365 for business" :::

The following table summarizes how to secure your data using Microsoft 365 for business.

| Best practices and capabilities | Microsoft 365 Business Premium | Microsoft 365 Business Standard | Microsoft 365 Business Basic |
|---|---|---|---|
| **1. Use multi-factor authentication** (MFA), also known as two-step verification. See [Turn on multi-factor authentication](m365bp-turn-on-mfa.md). | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |  :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#enabling-security-defaults) (suitable for most organizations) | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Conditional Access](m365bp-turn-on-mfa.md) (for more stringent requirements)  | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| **2. Set up and protect your administrator accounts**. See [Protect your admin accounts](m365bp-protect-admin-accounts.md). | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included":::|
| **3. Use preset security policies to protect email and collaboration content**. See [Review and apply preset security policies](/microsoft-365/business-premium/m365bp-protect-against-malware-cyberthreats#1-review-and-apply-preset-security-policies-for-email-and-collaboration).  | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Anti-spam, anti-malware, and anti-phishing protection](../security/office-365-security/eop-about.md) for email | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Advanced anti-phishing, spoof settings, impersonation settings, Safe Links, and Safe Attachments](../security/office-365-security/microsoft-defender-for-office-365-product-overview.md) for email and Office documents | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| **4. Protect all devices**, including personal and company devices. See [Secure managed and unmanaged devices](m365bp-managed-unmanaged-devices.md). | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| - [Microsoft 365 Apps](m365bp-users-install-m365-apps.md) (Word, Excel, PowerPoint, and more) installed on users' computers, phones, and tablets | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | 
| - [Windows 10 or 11 Pro Upgrade](m365bp-upgrade-windows-pro.md) from Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| - [Advanced threat protection](m365bp-onboard-devices-mdb.md) for users' computers, phones, and tablets | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | | 
| **5. Train everyone on email best practices**. See [Protect yourself against phishing and other attacks](m365bp-avoid-phishing-and-attacks.md). | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Anti-spam, anti-malware, and anti-phishing protection](../security/office-365-security/eop-about.md) for email | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Advanced threat protection](../security/office-365-security/microsoft-defender-for-office-365-product-overview.md) for email and Office documents | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| **6. Use Microsoft Teams for collaboration and sharing**. | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Microsoft Teams](create-teams-for-collaboration.md)  for communication, collaboration, and sharing | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Safe Links & Safe Attachments](/microsoft-365/security/office-365-security/mdo-support-teams-about)  with Microsoft Teams | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| - [Sensitivity labels for meetings](/microsoft-365/compliance/sensitivity-labels-meetings) to protect calendar items, Microsoft Teams meetings, and chat | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| - [Data Loss Prevention](/microsoft-365/compliance/dlp-teams-default-policy) in Microsoft Teams to safeguard company data | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| **7. Set sharing settings for SharePoint and OneDrive files and folders**. | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | 
| - [Safe Links](/microsoft-365/security/office-365-security/safe-links-about) and [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-for-spo-odfb-teams-about) for SharePoint and OneDrive | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | |
| - [Sensitivity labels](/microsoft-365/compliance/get-started-with-sensitivity-labels) to mark items as sensitive, confidential. etc. | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | | 
| - [Data Loss Prevention](/microsoft-365/compliance/get-started-with-the-default-dlp-policy) to safeguard company data  | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | | 
| **8. Use Microsoft 365 Apps on devices** | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | |
| - [Outlook and Web/mobile versions of Microsoft 365 Apps](https://support.microsoft.com/en-us/office/what-is-microsoft-365-for-business-56e60c2b-1929-4a04-bd9b-ff5b844364f3) for all users | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Microsoft 365 Apps](m365bp-users-install-m365-apps.md) installed on users' devices | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | 
| - [Employee quick setup guide](https://support.microsoft.com/office/7f34c318-e772-46a5-8c0a-ab86661542d1) to help users get set up and running | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| **9. Manage calendar sharing for your business**. | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Outlook](../admin/setup/setup-outlook.md) for email and calendars | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |
| - [Data Loss Prevention](/microsoft-365/compliance/get-started-with-the-default-dlp-policy) to safeguard company data | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | | | 
| **10. Maintain your environment** by performing tasks, such asl adding or removing users and devices. See [Maintain your environment](m365bp-mdb-maintain-environment.md). | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: | :::image type="content" source="../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included"::: |

## More information about Microsoft 365 for business

- For more information about what each plan includes, see:

   - [Reimagine productivity with Microsoft 365 and Microsoft Teams](https://www.microsoft.com/en-us/microsoft-365/business/compare-all-microsoft-365-business-products-b?ef_id=8c2a86ec9ea514a008c6e419e036519c:G:s&OCID=AIDcmmwf9kwzdj_SEM_8c2a86ec9ea514a008c6e419e036519c:G:s&lnkd=Bing_O365SMB_Brand&msclkid=8c2a86ec9ea514a008c6e419e036519c)
   - [Microsoft 365 User Subscription Suites for Small and Medium-sized Businesses](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWR6bM).

- [What is Defender for Business?](../security/defender-business/mdb-overview.md)

- [Microsoft 365 Business Premium—cybersecurity for small business](/microsoft-365/business-premium/)

- For more details about Defender for Business and Microsoft 365 Business Premium, see [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../security/defender-business/compare-mdb-m365-plans.md)

- [Compare Microsoft endpoint security plans](../security/defender-endpoint/defender-endpoint-plan-1-2.md) (for securing and managing devices)

