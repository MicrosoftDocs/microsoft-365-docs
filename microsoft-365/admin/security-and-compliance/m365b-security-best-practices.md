---
title: Microsoft 365 for business security best practices
f1.keywords:
- CSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: Admin
ms.topic: reference
ms.service: microsoft-365-business-security
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.collection:
- highpri
- m365-security
- tier2
- ContentEnagagementFY23
- essentials-security
- trust-pod
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn best practices to protect your data using Microsoft 365 Business Basic, Standard, or Premium. Protect devices, email, files, and accounts."
appliesto:
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-basic" target="_blank">Microsoft 365 Business Basic</a>
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-standard" target="_blank">Microsoft 365 Business Standard</a>
  - ✅ <a href="https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium" target="_blank">Microsoft 365 Business Premium</a>
  - ✅ <a href="https://m365forcampaigns.microsoft.com/" target="_blank">Microsoft 365 for Campaigns</a>
---

# Microsoft 365 for business security best practices

> [!TIP]
> **This article is for small and medium sized businesses with up to 300 users**.
>
> If you're looking for information for enterprise organizations, see [Deploy ransomware protection for your Microsoft 365 organization](/microsoft-365/solutions/ransomware-protection-microsoft-365).
>
> If you're a Microsoft partner, see [Resources for Microsoft partners working with small and medium-sized businesses](/defender-business/mdb-partners).

Microsoft 365 for business, which includes Microsoft 365 Business Basic, Microsoft 365 Business Standard, and Microsoft 365 Business Premium, includes anti-phishing, anti-spam, and anti-malware protection for email. Microsoft 365 Business Premium includes even more security capabilities, such as advanced cybersecurity protection for:

- Devices (computers, tablets, and phones; also known as _endpoints_)
- Email & collaboration content (for example, Office documents)
- Data (encryption, sensitivity labels, and Data Loss Prevention or DLP)

This article describes the top 10 ways to secure your business data with Microsoft 365 for business. For more information about what each plan includes, see [Microsoft 365 User Subscription Suites for Small and Medium-sized Businesses](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWR6bM).

## Top 10 ways to secure your business data

:::image type="content"source="../../media/top-10-ways-to-secure-data.png" alt-text="Diagram listing the top 10 ways to secure business data with Microsoft 365 for business"  lightbox="../../media/top-10-ways-to-secure-data.png":::

The following table summarizes how to secure your data using Microsoft 365 for business.

|Best practices and capabilities|Business<br/>Basic|Business<br/>Standard|Business<br/>Premium|
|---|:---:|:---:|:---:|
|**1. Use multi-factor authentication** (MFA), also known as two-step verification:||||
|&nbsp;&nbsp;&nbsp;[Security defaults](set-up-multi-factor-authentication.md#manage-security-defaults) is on by default and is suitable for most organizations.|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Use [Conditional Access](set-up-multi-factor-authentication.md#manage-conditional-access-policies) for more stringent requirements.|||✔|
|**2. Protect admin accounts**. See [Admin account security in Microsoft 365 for business](m365b-account-security-admins.md).|✔|✔|✔|
|**3. Use preset security policies**. See [Preset security policies in cloud organizations](/defender-office-365/preset-security-policies) and [Determine your threat policy strategy](/defender-office-365/mdo-deployment-guide#determine-your-threat-policy-strategy).||||
|&nbsp;&nbsp;&nbsp;[Default email protections for cloud mailboxes](/defender-office-365/eop-about). Includes: Anti-spam, anti-malware, and anti-phishing (spoof) protection.|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;[Microsoft Defender for Office 365 Plan 1](/defender-office-365/mdo-about#defender-for-office-365-plan-1-capabilities) protection. Includes: Extra anti-phishing protection features (impersonation protection and anti-phishing thresholds), Safe Links (email, Office apps, and Microsoft Teams), and Safe Attachments (email and files in SharePoint, OneDrive, and Microsoft Teams)|||✔|
|**4. Protect all devices** that access company data, including personal and company devices:||||
|&nbsp;&nbsp;&nbsp;[Basic Mobility and Security](m365b-devices-basic-mobility-security-overview.md) (provides mobile device management or MDM)|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;[Microsoft Intune Plan 1](m365bp-devices-enrollment.md) (provides MDM _and_ mobile app management or MAM)|||✔|
|&nbsp;&nbsp;&nbsp;[Device protection policies in Microsoft Defender for Business and Microsoft Intune](m365bp-devices-protection.md)|||✔|
|**5. Use email securely**||||
 &nbsp;&nbsp;&nbsp;[Protect yourself against phishing and other attacks](m365b-users-phishing-spam-malware.md).|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Use [Microsoft Purview Message Encryption](/purview/email-encryption) automatically with [Exchange mail flow rules](/purview/define-mail-flow-rules-to-encrypt-email) (also known as transport rules) or [manually](https://support.microsoft.com/office/eaa43495-9bbb-4fca-922a-df90dee51980). [Custom branding](/purview/add-your-organization-brand-to-encrypted-messages) is also available.|||✔|
|&nbsp;&nbsp;&nbsp;Use [Microsoft Purview Data Loss Prevention](/purview/dlp-create-deploy-policy) to safeguard company data.|||✔|
|&nbsp;&nbsp;&nbsp;Use [Sensitivity labels](/purview/get-started-with-sensitivity-labels) to mark email messages as sensitive, confidential, etc.|||✔|
|**6. Work together in Microsoft Teams**||||
|&nbsp;&nbsp;&nbsp;Use [Microsoft Teams](/microsoft-365/business-premium/create-teams-for-collaboration) for communication, collaboration, and sharing|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Get time of click protection for URLs and files in Teams messages with [Safe Links for Microsoft Teams](/defender-office-365/safe-links-about#safe-links-settings-for-microsoft-teams) and [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](/defender-office-365/safe-attachments-for-spo-odfb-teams-about).|||✔|
|&nbsp;&nbsp;&nbsp;Allow/block [URLs](/defender-office-365/tenant-allow-block-list-urls-configure) and [files](/defender-office-365/tenant-allow-block-list-files-configure) inside Teams using the Tenant Allow/Block List.|||✔|
|&nbsp;&nbsp;&nbsp;Use [sensitivity labels for meetings](/purview/sensitivity-labels-meetings) to protect calendar items, Teams meetings, and chat.|||✔|
|&nbsp;&nbsp;&nbsp;Use [Microsoft Purview Data Loss Prevention in Microsoft Teams](/purview/dlp-teams-default-policy) to safeguard company data.|||✔|
|**7. Set file sharing settings**||||
|&nbsp;&nbsp;&nbsp;[Safe Links](/defender-office-365/safe-links-about) and [Safe Attachments](/defender-office-365/safe-attachments-for-spo-odfb-teams-about) for SharePoint and OneDrive|||✔|
|&nbsp;&nbsp;&nbsp;Use [Sensitivity labels](/purview/get-started-with-sensitivity-labels) to mark items as sensitive, confidential, etc.|||✔|
|&nbsp;&nbsp;&nbsp;Use [Microsoft Purview Data Loss Prevention](/purview/dlp-create-deploy-policy) to safeguard company data.|||✔|
|**8. Use Microsoft 365 Apps**||||
|&nbsp;&nbsp;&nbsp;Use [Outlook and web/mobile versions of Microsoft 365 Apps](https://support.microsoft.com/office/56e60c2b-1929-4a04-bd9b-ff5b844364f3) for all users|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;Install [Microsoft 365 Apps](/microsoft-365/business-premium/m365bp-users-install-m365-apps) on user devices.||✔|✔|
|&nbsp;&nbsp;&nbsp;Use the [User quick setup guide](https://support.microsoft.com/office/7f34c318-e772-46a5-8c0a-ab86661542d1) to help users get set up and running.|✔|✔|✔|
|**9. Manage calendar sharing**||||
|&nbsp;&nbsp;&nbsp;[Outlook](../setup/setup-outlook.md) for email and calendars.|✔|✔|✔|
|&nbsp;&nbsp;&nbsp;[Microsoft Purview Data Loss Prevention](/purview/dlp-create-deploy-policy) to safeguard company data.|||✔|
|**10. Maintain your environment**: See [Maintain your environment](m365bp-security-monitor.md).|✔|✔|✔|

For more information about what each plan includes, see [Microsoft 365 User Subscription Suites for Small and Medium-sized Businesses](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWR6bM).
