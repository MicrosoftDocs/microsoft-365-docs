---
title: "Information protection infrastructure exit criteria"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/15/2017
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom:
- Strat_O365_Enterprise
description: Ensure that your configuration meets Microsoft 365 Enterprise criteria for information protection-based services and infrastructure.
---

# Information protection infrastructure exit criteria

Ensure that your configuration meets the following criteria for information protection-based services and infrastructure.

## Required exit criteria

The following criteria are required for your organization to have an information protection infrastructure for Microsoft 365 Enterprise.

<a name="crit-infoprotect-step1"></a>

### Security and information protection levels for your organization are defined

Your analysis has resulted in the determination of the security levels needed in your organization. These levels define minimal security and incremental security for the departments and information types and their corresponding data security.

At a minimum, you are using three levels of information protection:

- Baseline
- Sensitive
- Highly regulated

If needed, go to the [step](infoprotect-define-sec-infoprotect-levels.md) corresponding to this exit criteria.

<a name="crit-infoprotect-step2"></a>

### Conditional access policies are configured

You have used the information these articles to create the set of recommended conditional access policies:

- [Identity and device access policies overview](identity-device-policies.md)
- [Secure email recommended policies](secure-email-recommended-policies.md)
- [Recommended secure document policies](sharepoint-file-access-policies.md)

These policies have been configured and applied to the three recommended security levels or their equivalents in your organization.

If needed, go to the [step](infoprotect-configure-conditional-access-policy-settings.md) corresponding to this exit criteria.

<a name="crit-infoprotect-step4"></a>

### Increased security for Office 365 is configured

You have configured the following settings for increased security based on the information in [Configure your Office 365 tenant for increased security](https://support.office.com/article/Configure-your-Office-365-tenant-for-increased-security-8d274fe3-db51-4107-ba64-865e7155b355):

- Threat management policies in the Office 365 Security & Compliance Center
- Additional Exchange Online tenant-wide settings
- Tenant-wide sharing policies in SharePoint admin center
- Settings in Azure Active Directory

You have also [enabled Office 365 Advanced Threat Protection (ATP)](https://support.office.com/article/Office-365-ATP-for-SharePoint-OneDrive-and-Microsoft-Teams-26261670-db33-4c53-b125-af0662c34607#turniton).

If needed, go to the [step](infoprotect-configure-increased-security-office-365.md) corresponding to this exit criteria.

## Optional but highly-recommended exit criteria

The following criterion is not required for your organization to have an information protection infrastructure for Microsoft 365 Enterprise, but is highly recommended for additional security or capabilities in conjunction with the cloud services of Microsoft 365 Enterprise.

<a name="crit-infoprotect-step3"></a>

### Classification is configured across your environment

You have worked with your legal and compliance teams to develop an appropriate classification and labeling scheme for your organization’s data, which include the following:

- Sensitive data types
- Office 365 labels
- Azure Information Protection labels

If needed, go to the [step](infoprotect-configure-classification.md) corresponding to this exit criteria.

