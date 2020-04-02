---
title: "Information protection infrastructure exit criteria"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/19/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
ms.custom:
description: Examine the criteria for information protection-based services and infrastructure to ensure that your configuration meets Microsoft 365 Enterprise requirements.
---

# Information protection infrastructure exit criteria

![Phase 6: Information Protection](../media/deploy-foundation-infrastructure/infoprotection_icon-small.png)

Make sure your information protection infrastructure meets the following required criteria and that you've considered those that are optional.

<a name="crit-infoprotect-step1"></a>
## Required: Security and information protection levels for your organization are defined

You've planned for and determined the security levels that your organization needs. These levels define a minimum level of security and additional levels for increasingly sensitive information and their required data security.

At a minimum, you are using three security levels:

- Baseline
- Sensitive
- Highly regulated

If needed, [Step 1](infoprotect-define-sec-infoprotect-levels.md) can help you meet this requirement. 

<a name="crit-infoprotect-step3"></a>
## Required: Increased security for Microsoft 365 is configured

You've configured the following settings for [Office 365 increased security](https://docs.microsoft.com/office365/securitycompliance/tenant-wide-setup-for-increased-security):

- Threat management policies in the Microsoft 365 security Center
- Additional Exchange Online tenant-wide settings
- Tenant-wide sharing policies in SharePoint Online admin center
- Settings in Azure Active Directory (Azure AD)

You've also [enabled Office 365 Advanced Threat Protection (ATP) for SharePoint, OneDrive, and Microsoft Teams](https://docs.microsoft.com/office365/securitycompliance/turn-on-atp-for-spo-odb-and-teams).

If needed, [Step 3](infoprotect-configure-increased-security-office-365.md) can help you meet this requirement. 

<a name="crit-infoprotect-step2"></a>
## Optional: Classification is configured across your environment

You've worked with your legal and compliance teams to develop an appropriate classification and labeling scheme for your organization's data governance and security policies. 

Those policies correspond to the configuration and deployment of:

- Sensitive data types
- Retention labels
- Sensitivity labels
- Azure Information Protection labels

If needed, [Step 2](infoprotect-configure-classification.md) can help you meet this requirement. 


<a name="crit-infoprotect-step4"></a>
## Optional: Windows Information Protection is deployed across your environment

Your enrolled Windows 10 Enterprise devices have an Intune policy deployed and applied that defines:

- Which apps to protect.
- The level of protection.
- Where the protection extends.

If needed, [Step 4](infoprotect-deploy-windows-information-protection.md) can help you meet this requirement. 

<a name="crit-infoprotect-step5"></a>
## Optional: Office 365 Data Loss Prevention (DLP) is deployed

You have analyzed, tested, and then rolled out the set of DLP policies—with locations and rules with conditions and actions—that your organization requires to protect customer and other types of private data and to adhere to industry and regional regulations and requirements.

Your data compliance and security staff are using the Security & Compliance dashboard to monitor DLP incidents.

If needed, [Step 5](infoprotect-data-loss-prevention.md) can help you meet this requirement. 

<a name="crit-infoprotect-step6"></a>
## Optional: Email encryption is configured

You've configured the following email encryption as needed for your organization:

|||
|:-------|:-----|
| **Encryption method** | **For email sent** |
| [Office 365 Message Encryption (OME)](https://docs.microsoft.com/Office365/SecurityCompliance/ome)  | Outside your organization with encryption |
| [Information Rights Management (IRM)](https://docs.microsoft.com/office365/SecurityCompliance/information-rights-management-in-exchange-online) | With both encryption and permissions |
| [Secure/Multipurpose Internet Mail Extensions (S/MIME)](https://docs.microsoft.com/Exchange/policy-and-compliance/smime) | With both encryption and digital signatures using public key cryptography |
|||

If needed, [Step 6](infoprotect-email-encryption.md) can help you meet this requirement.

<a name="crit-infoprotect-step7"></a>
## Optional: Configure privileged access management in Office 365

You've used the information in the [Configure privileged access management in Office 365](https://docs.microsoft.com/office365/securitycompliance/privileged-access-management-configuration) topic to enable privileged access and create one or more privileged access policies in your organization. You've configured these policies and just-in-time access is enabled for access to sensitive data or access to critical configuration settings.

If needed, [Step 7](infoprotect-configure-privileged-access-management.md) can help you meet this requirement. 

## Results and next steps

Your information protection infrastructure for Microsoft 365 Enterprise uses defined security levels, increased security for Office 365, classification using sensitive data types and labels, Windows Information Protection, Data Loss Prevention, email encryption, and privileged access management.

If you're following the end-to-end deployment of Microsoft 365 Enterprise, you're now ready to have your [workloads and scenarios](deploy-workloads.md) take advantage of all the features and configuration of your foundation infrastructure.
