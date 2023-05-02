---
title: Top 10 ways to secure your business data with Microsoft 365 for business
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 05/01/2023
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
description: "Learn best practices to protect your business from ransomware, phishing, and malicious URLs or attachments with Microsoft 365 for business."
---

# Secure your data with Microsoft 365 for business

> [!TIP]
> **This article is for small and medium-sized businesses who have up to 300 users**. 
>
> If you're looking for information for enterprise organizations, see [Deploy ransomware protection for your Microsoft 365 tenant](../solutions/ransomware-protection-microsoft-365.md).
> 
> If you're a Microsoft partner, see [Resources for Microsoft partners working with small and medium-sized businesses](../security/defender-business/mdb-partners.md).

This article lists the top 10 ways to secure your business data with Microsoft 365 for business. 

Microsoft 365 Business Basic, Standard, and Premium include antiphishing, antispam, and antimalware protection. Microsoft 365 Business Premium includes even more security capabilities, such as advanced threat protection for devices (also referred to as endpoints), email, and collaboration, and information protection.

For more information about what each plan includes, see [Microsoft 365 User Subscription Suites for Small and Medium-sized Businesses](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWR6bM).

## Top 10 ways to secure your business data

1. [Use multi-factor authentication](#1-use-multi-factor-authentication).
2. [Protect your administrator accounts](#2-protect-your-administrator-accounts).
3. [Use preset security policies](#3-use-preset-security-policies).
4. [Protect all devices](#4-protect-all-devices).
5. [Train everyone on email best practices](#5-train-everyone-on-email-best-practices).
6. [Use Microsoft Teams for collaboration and sharing](#6-use-microsoft-teams-for-collaboration-and-sharing).
7. [Set sharing settings for SharePoint and OneDrive files and folders](#7-set-sharing-settings-for-sharepoint-and-onedrive-files-and-folders).
8. [Use Microsoft 365 Apps on devices](#8-use-microsoft-365-apps-on-devices).
9. [Manage calendar sharing for your business](#9-manage-calendar-sharing-for-your-business).
10. [Maintain your environment](#10-maintain-your-environment).   

The following sections describe these methods in more detail and include links to additional information.

## 1. Use multi-factor authentication

[Multi-factor authentication](../admin/security-and-compliance/multi-factor-authentication-microsoft-365.md) (MFA), also known as two-step verification, requires people to use a code or authentication app on their phone to sign into Microsoft 365, and is a critical first step to protecting your business data. Using MFA can prevent bad actors from taking over your account if they know your password. 

To help simplify the process of enabling MFA, [security defaults in Azure Active Directory (Azure AD)](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults) are available in Microsoft 365 Business Basic, Standard, and Premium. 

Microsoft 365 Business Premium also includes [Azure AD Premium P1](/azure/active-directory/fundamentals/active-directory-whatis#what-are-the-azure-ad-licenses) for advanced administration. It enables you to set up and configure [Conditional Access](/azure/active-directory/conditional-access/overview) policies instead of security defaults, for more stringent requirements.

See [Turn on multi-factor authentication](m365bp-turn-on-mfa.md).

| Subscription | Recommendation |
|---|---|
| [Microsoft 365 Business Premium](index.md) | [Use either security defaults or Conditional Access](m365bp-turn-on-mfa.md).  |
| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md)<br/>[Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | [Use security defaults](/azure/active-directory/fundamentals/concept-fundamentals-security-defaults#enabling-security-defaults). | 

## 2. Protect your administrator accounts

Administrator accounts (also called admins) have elevated privileges, making these accounts more susceptible to cyberattacks. Make sure to set up and manage the right number of admin and user accounts for your business. 

We also recommend adhering to the information security principle of least privilege, which means that users and applications should be granted access only to the data and operations they require to perform their jobs. 

Microsoft 365 Business Basic, Standard, and Premium include the [Microsoft 365 admin center](https://admin.microsoft.com) and the [Azure AD portal](https://entra.microsoft.com) to set up and manage your admin accounts.

See [Protect your administrator accounts](m365bp-protect-admin-accounts.md).

| Subscription | Recommendation |
|---|---|
| [Microsoft 365 Business Premium](index.md) <br/>[Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md) <br/>[Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | [Assign admin roles](/microsoft-365/admin/add-users/assign-admin-roles). |

## 3. Use preset security policies

[Preset security policies](/microsoft-365/security/office-365-security/preset-security-policies) save time by applying recommended spam, anti-malware, and anti-phishing policies to users all at once. 

Microsoft 365 Business Basic, Standard, and Premium include [Exchange Online Protection](../security/office-365-security/eop-about.md) (EOP). It includes preset security policies for anti-spam, anti-malware, and anti-phishing. 

Microsoft 365 Business Premium also includes [Microsoft Defender for Office 365 Plan 1](/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet). It includes preset security policies for advanced anti-phishing, spoof settings, impersonation settings, Safe Links, and Safe Attachments. 

See the following articles:

- [Policies in preset security policies](../security/office-365-security/preset-security-policies.md#policies-in-preset-security-policies)
- [Protect against malware and other cyberthreats](m365bp-protect-against-malware-cyberthreats.md)

| Subscription | Recommendation |
|---|---|
| [Microsoft 365 Business Premium](index.md)<br/>[Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md)<br/>[Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | [Assign Standard or Strict preset security policies to users](/microsoft-365/security/office-365-security/preset-security-policies#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users). |

## 4. Protect all devices

Every device is a possible attack avenue into your network and must be configured properly, even devices that are personally owned but used for work. Your security team and all employees can all take steps to protect devices. For example, all users can use MFA on their devices.

Microsoft 365 Business Basic, Standard, and Premium enable users to use MFA on their devices.

Microsoft 365 Business Premium also includes advanced device protection with [Microsoft Defender for Business](../security/defender-business/mdb-overview.md). Defender for Business includes threat and vulnerability management, attack surface reduction, next-generation protection, endpoint detection and response, and automated investigation capabilities. 

Microsoft 365 Business Premium also includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) for managing devices. 

See the following articles:

- [Secure managed and unmanaged devices](m365bp-managed-unmanaged-devices.md) 
- [Set up unmanaged (BYOD) devices](m365bp-set-up-unmanaged-devices.md)
- [Set up and secure managed devices](m365bp-protect-managed-devices.md) 

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md) | [Turn on MFA](m365bp-turn-on-mfa.md).<br/>[Install Microsoft 365 Apps on devices](m365bp-users-install-m365-apps.md).<br/>[Secure managed and unmanaged devices](m365bp-managed-unmanaged-devices.md). |
| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md) | [Turn on MFA](m365bp-turn-on-mfa.md).<br/>[Install Microsoft 365 Apps on devices](m365bp-users-install-m365-apps.md).<br/>(*Defender for Business can be added on*) | 
| [Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | [Turn on MFA](m365bp-turn-on-mfa.md).<br/>(*Defender for Business can be added on*) |

## 5. Train everyone on email best practices

Email can contain malicious attacks cloaked as harmless communications. Email systems are especially vulnerable, because email is handled by everyone in the organization, and safety relies on humans making consistently good decisions with those communications. 

Train everyone to know what to watch for spam or junk mail, phishing attempts, spoofing, and malware in their email. 

Microsoft 365 Basic, Standard, and Premium include [EOP](../security/office-365-security/eop-about.md), which provides anti-spam, anti-malware, and anti-phishing protection for email hosted in Exchange Online. 

Microsoft 365 Business Premium also includes [Defender for Office 365 Plan 1](/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet), which provides more advanced protection for email and collaboration, with advanced anti-phishing, anti-spam, and anti-malware protection, Safe Attachments, and Safe Links.

See the following articles:

- [Protect yourself against phishing and other attacks](m365bp-avoid-phishing-and-attacks.md)
- [Anti-phishing protection in Defender for Office 365](/microsoft-365/security/office-365-security/anti-phishing-protection-about#additional-anti-phishing-protection-in-microsoft-defender-for-office-365)
- [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-about) 
- [Safe Links](/microsoft-365/security/office-365-security/safe-links-about) 
- [Protect against threats](../security/office-365-security/protect-against-threats.md)

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md)<br/>[Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md) <br/>[Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md)  | Follow the guidance in [Protect against threats](/microsoft-365/security/office-365-security/protect-against-threats).<br/>Share [Protect yourself against phishing and other attacks](m365bp-avoid-phishing-and-attacks.md) with everyone. |

## 6. Use Microsoft Teams for collaboration and sharing

The best way to collaborate and share securely is to use Microsoft Teams. With Microsoft Teams, all your files and communications are in a protected environment and aren't being stored in unsafe ways outside of it.

Microsoft 365 Business Basic, Standard, and Premium include Microsoft Teams.

Microsoft 365 Business Premium also includes:

- [Defender for Office 365 Plan 1](/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet), with [Safe Links](/microsoft-365/security/office-365-security/safe-links-about#safe-links-settings-for-microsoft-teams) and [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-for-spo-odfb-teams-about) for Microsoft Teams.
- [Azure Information Protection Plan 1](/azure/information-protection/what-is-information-protection), with [sensitivity labels](/microsoft-365/compliance/sensitivity-labels-meetings) and [DLP](/microsoft-365/compliance/dlp-teams-default-policy) to discover, classify, protect, and govern sensitive information.

See the following articles: 

- [Use Microsoft Teams for collaboration](create-teams-for-collaboration.md) 
- [Set up meetings with Microsoft Teams](set-up-meetings.md) 
- [Share files and videos in a safe environment](share-files-and-videos.md)
- [Defender for Office 365 support for Microsoft Teams](/microsoft-365/security/office-365-security/mdo-support-teams-about)
- [Data Loss Prevention (DLP) in Microsoft Teams](/microsoft-365/compliance/dlp-teams-default-policy)
- [Use sensitivity labels to protect calendar items, Teams meetings, and chat](/microsoft-365/compliance/sensitivity-labels-meetings)

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md) | Use Microsoft Teams for meetings and information sharing. <br/>Use [Safe Links & Safe Attachments](/microsoft-365/security/office-365-security/mdo-support-teams-about) with Microsoft Teams. <br/>Use [sensitivity labels](/microsoft-365/compliance/sensitivity-labels-meetings) to protect calendar items, Microsoft Teams meetings, and chat. <br/>Use the default [DLP policy](/microsoft-365/compliance/dlp-teams-default-policy) in Microsoft Teams. |
| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md)<br/>[Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | Use Microsoft Teams.<br/>(*Defender for Office 365 can be added on*) | 

## 7. Set sharing settings for SharePoint and OneDrive files and folders

Your default sharing levels for SharePoint and OneDrive might be set to a more permissive level than you should use. We recommend reviewing and if necessary, changing the default settings to better protect your business. Grant people only the access they need to do their jobs. 

Microsoft 365 Business Basic, Standard, and Premium include OneDrive and SharePoint.

Microsoft 365 Business Premium also includes:

- [Defender for Office 365 Plan 1](/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet), with [Safe Links](/microsoft-365/security/office-365-security/safe-links-about) and [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-for-spo-odfb-teams-about) for Microsoft Teams, SharePoint, and OneDrive.
- [Azure Information Protection Plan 1](/azure/information-protection/what-is-information-protection), with capabilities to discover, classify, protect, and govern sensitive information.

See the following articles: 

- [Set sharing settings for SharePoint and OneDrive](m365bp-protect-against-malware-cyberthreats.md#set-sharing-settings-for-sharepoint-and-onedrive-files-and-folders)
- [Sensitivity labels for Office files in SharePoint and OneDrive](/microsoft-365/compliance/sensitivity-labels-sharepoint-onedrive-files)

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md) | Use SharePoint and OneDrive for storing and sharing files. <br/>[Set sharing settings for SharePoint and OneDrive](m365bp-protect-against-malware-cyberthreats.md#set-sharing-settings-for-sharepoint-and-onedrive-files-and-folders). <br/>Use [Safe Links](/microsoft-365/security/office-365-security/safe-links-about) and [Safe Attachments](/microsoft-365/security/office-365-security/safe-attachments-for-spo-odfb-teams-about) with SharePoint and OneDrive. <br/>Use [sensitivity labels](/microsoft-365/compliance/get-started-with-sensitivity-labels) and [DLP](/microsoft-365/compliance/get-started-with-the-default-dlp-policy). |
| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md) <br/> [Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | Use SharePoint and OneDrive.<br/>(*Defender for Office 365 can be added on*) |

## 8. Use Microsoft 365 Apps on devices

Outlook and Microsoft 365 Apps (also referred to as Office apps) enable people to work productively and more securely across devices. Start a document on one device, and pick it up later on another device. Instead of sending files as email attachments, you can share links to documents that are stored in SharePoint or OneDrive.

Microsoft 365 Business Basic, Standard, and Premium include Outlook and Web/mobile versions of [Microsoft 365 Apps](/deployoffice/about-microsoft-365-apps) (such as Word, PowerPoint, and Excel). 

Microsoft 365 Business Standard and Premium include desktop versions of Microsoft 365 Apps that can be installed on computers, tablets, and phones. Installing the Microsoft 365 Apps helps ensure users get the latest features, new tools, security updates, and bug fixes. (PC users also get Access and Publisher.)

Microsoft 365 Business Premium also includes:
- [Defender for Office 365 Plan 1](/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet) (with Safe Links and Safe Attachments)
- [Azure Information Protection Plan 1](/azure/information-protection/what-is-information-protection) (with sensitivity labels)

See the following articles: 

- [Install Microsoft 365 Apps on all devices](m365bp-users-install-m365-apps.md).
- [Train your users on Microsoft 365](https://support.microsoft.com/topic/train-your-users-on-office-and-microsoft-365-7cba3c97-7f19-46ed-a1c6-763971a26c27)
- [How Safe Links works in Microsoft 365 Apps](/microsoft-365/security/office-365-security/safe-links-about#how-safe-links-works-in-office-apps)
- [Sensitivity bar in Microsoft 365 Apps](/microsoft-365/compliance/sensitivity-labels-office-apps#sensitivity-bar) 

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md)<br/> [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md) | [Install Microsoft 365 Apps on all devices](m365bp-users-install-m365-apps.md). <br/>Share the [Employee quick setup guide with users](https://support.microsoft.com/office/7f34c318-e772-46a5-8c0a-ab86661542d1). | 
| [Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | Use Outlook and Web/mobile versions of Microsoft 365 Apps. |

## 9. Manage calendar sharing for your business

You can help people in your organization share their calendars appropriately for better collaboration. You can manage what level of detail they can share, such as by limiting the details that are shared to free/busy times only.

Microsoft 365 Business Basic, Standard, and Premium include Outlook and Exchange Online.

Microsoft 365 Business Premium also includes [Azure Information Protection Plan 1](/azure/information-protection/what-is-information-protection), and that includes DLP policies to protect sensitive information.

See the following articles:

- [Manage calendar sharing](m365bp-protect-against-malware-cyberthreats.md#manage-calendar-sharing) 
- [Get started with the default DLP policy](/microsoft-365/compliance/get-started-with-the-default-dlp-policy) 

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md) | Use Outlook and Exchange Online for email and calendars.<br/>[Get started using your default DLP policy](/microsoft-365/compliance/get-started-with-the-default-dlp-policy). |
| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md)<br/>[Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | Use Outlook and Exchange Online for email and calendars. | 

## 10. Maintain your environment

After your initial setup and configuration of Microsoft 365 for business is complete, your organization needs a maintenance and operations plan. As employees come and go, you'll need to add or remove users, reset passwords, and maybe even reset devices to factory settings. You'll also want to make sure people have only the access they need to do their jobs.

Microsoft 365 Business Basic, Standard, and Premium include the [Microsoft 365 admin center](https://admin.microsoft.com) and the [Azure AD portal](https://entra.microsoft.com) for managing user accounts.

Microsoft 365 Business Premium also includes advanced security and compliance capabilities. You can use the [Microsoft 365 Defender portal](https://security.microsoft.com) or the [Microsoft 365 Purview compliance portal](https://compliance.microsoft.com/) for viewing and managing security & compliance capabilities.

See the following articles:

- [Maintain your environment](m365bp-maintain-environment.md) 
- [Security incident management in Microsoft 365 Business Premium](m365bp-security-incident-management.md)
- [Microsoft 365 Business Premium security operations guide](m365bp-security-incident-quick-start.md) 

| Subscription | Recommendations |
|---|---|
| [Microsoft 365 Business Premium](index.md) | Use the [Microsoft 365 admin center](https://admin.microsoft.com) or the [Azure AD portal](https://entra.microsoft.com) for managing user accounts.<br/>Use the [Microsoft 365 Defender portal](https://security.microsoft.com) and the [Microsoft 365 Purview compliance portal](https://compliance.microsoft.com/) for viewing and managing security & compliance capabilities. <br/>If preferred, you can use the [Intune admin center](https://intune.microsoft.com) to view or manage devices. |
| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md)<br/> [Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md) | Use the [Microsoft 365 admin center](https://admin.microsoft.com) or the [Azure AD portal](https://entra.microsoft.com) to view or manage user accounts. |

## See also

- For more information about what each plan includes, see [Reimagine productivity with Microsoft 365 and Microsoft Teams](https://www.microsoft.com/en-us/microsoft-365/business/compare-all-microsoft-365-business-products-b?ef_id=8c2a86ec9ea514a008c6e419e036519c:G:s&OCID=AIDcmmwf9kwzdj_SEM_8c2a86ec9ea514a008c6e419e036519c:G:s&lnkd=Bing_O365SMB_Brand&msclkid=8c2a86ec9ea514a008c6e419e036519c) and the [Microsoft 365 User Subscription Suites for Small and Medium-sized Businesses](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RWR6bM).
- [What is Defender for Business?](../security/defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium—cybersecurity for small business](/microsoft-365/business-premium/)
- [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../security/defender-business/compare-mdb-m365-plans.md) (for more details about Defender for Business and Microsoft 365 Business Premium)
- [Compare Microsoft endpoint security plans](../security/defender-endpoint/defender-endpoint-plan-1-2.md) (for securing and managing devices)
