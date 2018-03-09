---
title: "Information protection infrastructure exit criteria"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 03/09/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Examine the criteria for information protection-based services and infrastructure to ensure that your configuration meets Microsoft 365 Enterprise requirements.
---

# Information protection infrastructure exit criteria

Before you are complete with your foundation infrastructure, make sure that your information protection infrastructure meets these conditions. 

<a name="crit-infoprotect-step1"></a>
## Required: Security and information protection levels for your organization are defined

You have determined the security levels that your organization needs. These levels define a minimum level of security and additional levels for increasingly sensitive information and their corresponding data security.

At a minimum, you are using three security levels:

- Baseline
- Sensitive
- Highly regulated

If needed, [Step 1](infoprotect-define-sec-infoprotect-levels.md) can help you meet this requirement. 

<a name="crit-infoprotect-step2"></a>
## Required: Conditional access policies are configured

You have used the information in these articles to create the set of recommended conditional access policies:

- [Identity and device access policies overview](identity-device-policies.md)
- [Secure email recommended policies](secure-email-recommended-policies.md)
- [Recommended secure document policies](sharepoint-file-access-policies.md)

You have configured these policies and applied them to the three recommended security levels or their equivalents in your organization.

If needed, [Step 2](infoprotect-configure-conditional-access-policy-settings.md) can help you meet this requirement. 

<a name="crit-infoprotect-step4"></a>
## Required: Increased security for Office 365 is configured

You have configured the following settings for increased security based on the information in [Configure your Office 365 tenant for increased security](https://support.office.com/article/Configure-your-Office-365-tenant-for-increased-security-8d274fe3-db51-4107-ba64-865e7155b355):

- Threat management policies in the Office 365 Security & Compliance Center
- Additional Exchange Online tenant-wide settings
- Tenant-wide sharing policies in SharePoint admin center
- Settings in Azure Active Directory

You have also [enabled Office 365 Advanced Threat Protection (ATP)](https://support.office.com/article/Office-365-ATP-for-SharePoint-OneDrive-and-Microsoft-Teams-26261670-db33-4c53-b125-af0662c34607#turniton).

If needed, [Step 4](infoprotect-configure-increased-security-office-365.md) can help you meet this requirement. 

<a name="crit-infoprotect-step3"></a>
## Optional: Classification is configured across your environment

You have worked with your legal and compliance teams to develop an appropriate classification and labeling scheme for your organization’s data, which include the following:

- Sensitive data types
- Office 365 labels
- Azure Information Protection labels

If needed, [Step 3](infoprotect-configure-classification.md) can help you meet this requirement. 

You are now ready to configure workloads, such as Microsoft Teams and Exchange Online, that run on top of your foundation infrastructure.
