---
title: How to secure your business data with Microsoft 365
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: m365bp
ms.date: 04/25/2023
ms.localizationpriority: medium
ms.collection:
- highpri
- Adm_O365
- Adm_TOC
- m365-security
- tier2
- ContentEnagagementFY23
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn best practices to protect your business from ransomware, phishing, and malicious URLs or attachments with Microsoft 365 for business."
---

# Secure your business data with Microsoft 365

**Applies to**

- Microsoft 365 Business Basic
- Microsoft 365 Business Standard
- Microsoft 365 Business Premium

> [!NOTE]
> This article is designed for small and medium-sized businesses who have up to 300 users. 
>
> If you're looking for information for enterprise organizations, see [Deploy ransomware protection for your Microsoft 365 tenant](../solutions/ransomware-protection-microsoft-365.md).
> 
> If you're a Microsoft partner, see [Resources for Microsoft partners working with small and medium-sized businesses](../security/defender-business/mdb-partners.md).

Microsoft 365 for business plans, such as Microsoft 365 Business Basic, Standard, and Premium, include security capabilities, such as antiphishing, antispam, and antimalware protection. Microsoft 365 Business Premium includes even more capabilities, such as device security, advanced threat protection, and information protection. This article describes the top 10 ways to secure your data with Microsoft 365 for business, and it includes information to [compare capabilities across Microsoft 365 for business plans](#comparing-microsoft-365-for-business-plans).

## Secure your business data

| Step | Task | Description |
|:--:|:---|:---|
| 1 | **[Use multi-factor authentication](../admin/security-and-compliance/multi-factor-authentication-microsoft-365.md)**. | [Multi-factor authentication](../admin/security-and-compliance/multi-factor-authentication-microsoft-365.md) (MFA), also known as two-step verification, requires people to use a code or authentication app on their phone to sign into Microsoft 365, and is a critical first step to protecting your business data. Using MFA can prevent hackers from taking over if they know your password. Security defaults can simplify the process of enabling MFA. <br/><br/>See [security defaults and MFA](m365bp-conditional-access.md). |
| 2 | **[Protect your administrator accounts](m365bp-protect-admin-accounts.md)**. | Administrator accounts (also called admins) have elevated privileges, making these accounts more susceptible to cyberattacks. You'll need to set up and manage the right number of admin and user accounts for your business. We also recommend adhering to the information security principle of least privilege, which means that users and applications should be granted access only to the data and operations they require to perform their jobs. <br/><br/>See [Protect your administrator accounts](m365bp-protect-admin-accounts.md). |
| 3 | **[Use preset security policies](m365bp-increase-protection.md)**. | Your subscription includes [preset security policies](../security/office-365-security/preset-security-policies.md) that use recommended settings for anti-spam, anti-malware, and anti-phishing protection. <br/><br/>See [Protect against malware and other cyberthreats](m365bp-increase-protection.md). |
| 4 | **[Protect all devices](m365bp-devices-overview.md)**. | Every device is a possible attack avenue into your network and must be configured properly, even those devices that are personally owned but used for work. <br/><br/>See the following articles: <br/>- [Help users set up MFA on their devices](https://support.microsoft.com/office/set-up-your-microsoft-365-sign-in-for-multi-factor-authentication-ace1d096-61e5-449b-a875-58eb3d74de14)<br/>- [Protect unmanaged Windows and Mac computers](m365bp-protect-pcs-macs.md) <br/>- [Set up managed devices](m365bp-managed-devices-setup.md) (requires Microsoft 365 Business Premium or Microsoft Defender for Business) |
| 5 | **[Train everyone on email best practices](m365bp-avoid-phishing-and-attacks.md)**. | Email can contain malicious attacks cloaked as harmless communications. Email systems are especially vulnerable, because email is handled by everyone in the organization, and safety relies on humans making consistently good decisions with those communications. Train everyone to know what to watch for spam or junk mail, phishing attempts, spoofing, and malware in their email. <br/><br/>See [Protect yourself against phishing and other attacks](m365bp-avoid-phishing-and-attacks.md). |
| 6 | **[Use Microsoft Teams for collaboration and sharing](m365bp-collaborate-share-securely.md)**. | The best way to collaborate and share securely is to use Microsoft Teams. With Microsoft Teams, all your files and communications are in a protected environment and aren't being stored in unsafe ways outside of it.<br/><br/> See the following articles: <br/>- [Use Microsoft Teams for collaboration](create-teams-for-collaboration.md) <br/>- [Set up meetings with Microsoft Teams](set-up-meetings.md) <br/>- [Share files and videos in a safe environment](share-files-and-videos.md) |
| 7 | **[Set sharing settings for SharePoint and OneDrive files and folders](m365bp-increase-protection.md)**. | Your default sharing levels for SharePoint and OneDrive might be set to a more permissive level than you should use. We recommend reviewing and if necessary, changing the default settings to better protect your business. Grant people only the access they need to do their jobs. <br/><br/>See [Set sharing settings for SharePoint and OneDrive files and folders](m365bp-increase-protection.md#set-sharing-settings-for-sharepoint-and-onedrive-files-and-folders). |
| 8 | **[Use Microsoft 365 Apps on devices](https://support.microsoft.com/topic/train-your-users-on-office-and-microsoft-365-7cba3c97-7f19-46ed-a1c6-763971a26c27)**. | Outlook and Microsoft 365 Apps (also referred to as Office apps) enable people to work productively and more securely across devices. Whether you're using the web or desktop version of an app, you can start a document on one device, and pick it up later on another device. Instead of sending files as email attachments, you can share links to documents that are stored in SharePoint or OneDrive. <br/><br/>See the following articles: <br/>- [Install Office apps on all devices](m365bp-install-office-apps.md).<br/>- [Train your users on Office and Microsoft 365](https://support.microsoft.com/topic/train-your-users-on-office-and-microsoft-365-7cba3c97-7f19-46ed-a1c6-763971a26c27) |
| 9 | **[Manage calendar sharing for your business](m365bp-increase-protection.md#manage-calendar-sharing)**. | You can help people in your organization share their calendars appropriately for better collaboration. You can manage what level of detail they can share, such as by limiting the details that are shared to free/busy times only. <br/><br/>See [Manage calendar sharing](m365bp-increase-protection.md#manage-calendar-sharing). |
| 10 | **[Maintain your environment](m365bp-maintain-environment.md)**. | After your initial setup and configuration of Microsoft 365 for business is complete, your organization needs a maintenance and operations plan. As employees come and go, you'll need to add or remove users, reset passwords, and maybe even reset devices to factory settings. You'll also want to make sure people have only the access they need to do their jobs. <br/><br/>See [Maintain your environment](m365bp-maintain-environment.md). |

## Comparing Microsoft 365 for business plans

Microsoft 365 for business plans include Microsoft Exchange, Microsoft Teams, SharePoint, and OneDrive for secure email, collaboration, and file storage. These plans also include baseline antiphishing, antimalware, and antispam protection. With Microsoft 365 Business Premium, you get more capabilities, such as device management, advanced threat protection, and information protection. The following table compares capabilities in Microsoft 365 for business plans. 

| Capability | [Microsoft 365 Business Basic](../admin/setup/setup-business-basic.md)| [Microsoft 365 Business Standard](../admin/setup/setup-business-standard.md) | [Microsoft 365 Business Premium](index.md) |
|:---|:--:|:--:|:--:|
| **Outlook and Web/mobile versions of Office apps** <br/>Word, Excel, and PowerPoint | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png)  | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |
| **Desktop versions of Office apps**<br/>Word, Excel, PowerPoint, Publisher, and Access <br/>(See note 1 below) |  | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |
| **Secure communication, collaboration, and file storage**<br/>Microsoft Teams, Exchange, OneDrive, and SharePoint | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |
| **Antispam, antiphishing, and antimalware protection** for email <br/>[Exchange Online Protection overview](../security/office-365-security/eop-about.md) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |
| **Mobile device management** and mobile app management <br/>[Microsoft Intune](/mem/intune/fundamentals/what-is-intune) | (See note 2 below) | (See note 2 below) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |
| **Advanced device security** with next-generation protection, firewall, attack surface reduction, automated investigation and response, and more <br/>[Defender for Business](../security/defender-business/mdb-overview.md) | (See note 3 below)  | (See note 3 below) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |
| **Advanced protection for email and documents** with advanced anti-phishing, Safe Links, Safe Attachments, and real-time detections<br/>[Microsoft Defender for Office 365 Plan 1](../security/office-365-security/defender-for-office-365.md) | (See note 4 below) | (See note 4 below) | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) | 
| **Information protection** capabilities to discover, classify, protect, and govern sensitive information <br/>[Azure Information Protection](/azure/information-protection/what-is-information-protection)  | | | ![Included.](../media/d238e041-6854-4a78-9141-049224df0795.png) |

> [!NOTE]
> 1. Microsoft Publisher and Microsoft Access run on Windows laptops and desktops only.
> 
> 2. Microsoft Intune is included with Microsoft 365 Business Premium, and can be added on to Microsoft 365 Business Basic and Standard. Basic Mobility and Security capabilities in Microsoft 365 Business Basic and Standard enable users to access work email, calendar, contacts, and documents on their devices. [Choose between Basic Mobility and Security or Intune](../admin/basic-mobility-security/choose-between-basic-mobility-and-security-and-intune.md).
> 
> 3. Defender for Business is included in Microsoft 365 Business Premium. Defender for Business can also be added on to Microsoft 365 Business Basic or Standard. See [Get Defender for Business](/microsoft-365/security/defender-business/get-defender-business).
> 
> 4. Defender for Office 365 Plan 1 is included in Microsoft 365 Business Premium. Defender for Office 365 Plan 1 can also be added on to Microsoft 365 Business Basic or Standard. See [Defender for Office 365](/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview).
> 

## See also

- For more information about what each plan includes, see [Reimagine productivity with Microsoft 365 and Microsoft Teams](https://www.microsoft.com/en-us/microsoft-365/business/compare-all-microsoft-365-business-products-b?ef_id=8c2a86ec9ea514a008c6e419e036519c:G:s&OCID=AIDcmmwf9kwzdj_SEM_8c2a86ec9ea514a008c6e419e036519c:G:s&lnkd=Bing_O365SMB_Brand&msclkid=8c2a86ec9ea514a008c6e419e036519c).
- [What is Defender for Business?](../security/defender-business/mdb-overview.md)
- [Microsoft 365 Business Premium—cybersecurity for small business](/microsoft-365/business-premium/)
- [Compare security features in Microsoft 365 plans for small and medium-sized businesses](../security/defender-business/compare-mdb-m365-plans.md) (for more details about Defender for Business and Microsoft 365 Business Premium)
- [Compare Microsoft endpoint security plans](../security/defender-endpoint/defender-endpoint-plan-1-2.md) (for securing and managing devices)
