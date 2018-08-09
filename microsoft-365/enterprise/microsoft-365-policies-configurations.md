---
title: Identity and device access configurations - Microsoft 365 Enterprise | Microsoft docs
description:  Describes Microsoft recommendations and core concepts for deploying secure email, docs, and apps policies and configurations.
author: brendacarter
manager: laurawi
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 
ms.author: bcarter
ms.reviewer: martincoetzer
ms.custom: 
- it-pro
- goldenconfig
---

# Identity and device access configurations

## Introduction
While there is no single best recommendation for all customer environments, the best practices and recommendations in this document describe general Microsoft recommendations about how to apply policy and configuration within the Microsoft cloud to ensure that your employees are both secure and productive.  

**Intended audience**
These recommendations are intended for enterprise infrastructure architects and IT Pros familiar with [Office 365](https://technet.microsoft.com/library/dn127064(v=office.14).aspx) and [Microsoft Enterprise Mobility + Security](http://microsoft.com/ems) which includes, among others, Azure Active Directory (identity), Microsoft Intune (device management), and Azure Information Protection (data protection).

**Customer environment**
The recommended policies are applicable to enterprise organizations operating both entirely within the Microsoft cloud and for customers with infrastructure deployed across on-premises and the Microsoft cloud.

**Assumptions**
Many of the provided recommendations rely on services available only with Enterprise Mobility + Security (EMS) E5 subscriptions. Recommendations presented assume full EMS E5 subscription capabilities.

If you don’t have E5 subscriptions, Microsoft recommends you implement Azure AD  baseline protection capabilities that are included with all plans. See [What is baseline protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-conditional-access-baseline-protection) in the Azure AD library.

**Caveats**
Your organization may be subject to regulatory or other compliance requirements, including specific recommendations that may require you to apply policies that diverge from these recommended configurations.  These configurations recommend usage controls that have not historically been available.  We recommend these controls, because we believe they represent a balance between security and productivity.  

While we’ve done our best to account for a wide variety of organizational protection requirements, we’re not able to account for all possible requirements or for all the unique aspects of your organization. Use these recommendations as a guide for how Microsoft and the secure productive enterprise team is thinking about how to correctly apply policy.  


##Three tiers of protection
Most organizations have specific requirements regarding security and data protection. These requirements vary by industry segment and by job functions within organizations. For example, your legal department and Office 365 administrators might require additional security and information protection controls around their email correspondence that are not required for other business unit users.

Each industry also has their own set of specialized regulations. Rather than providing a list of all possible security options or a recommendation per industry segment or job function, recommendations have been provided for three different tiers of security and protection that can be applied based on the granularity of your needs. 

- **Baseline protectio**n — We recommend you establish a minimum standard for protecting data, as well as the identities and devices that access your data. You can follow these baseline recommendations to provide strong default protection that meets the needs of many organizations.
- **Sensitive protection** — Some customers have a subset of data that must be protected at higher levels or require all data to be protected at a higher level. You can apply increased protection to all or specific data sets in your Office 365 environment. We recommend protecting identities and devices that access sensitive data with comparable levels of security.  
- **Highly regulated** — Some organizations may have a very small amount of data that is highly classified, trade secret, or regulated data. Microsoft provides capabilities to help organizations meet these requirements, including added protection for identities and devices.

![m365-idquality-](../images/M365-idquality-threetiers.png)


This guidance shows you how to implement protection for identities and devices for each of these tiers of protection. Use this guidance as a starting point for your organization and adjust the policies to meet your specific organization requirements.

It’s important to use consistent levels of protection across your data, identities, and devices. For example, if you implement this guidance, be sure to protect your data at comparable levels. These architecture models show you which capabilities are comparable.

**Identity and device protection for Office 365**<br/>
![Thumbnail for poster "Identity and device protection for Office 365"](../images/O365_Identity_device_protection_thumb.png)<br/>
[PDF](https://go.microsoft.com/fwlink/p/?linkid=841656) | [Visio](https://go.microsoft.com/fwlink/p/?linkid=841657) | [More languages](https://www.microsoft.com/download/details.aspx?id=55032)

**File Protection Solutions in Office 365**<br/>
![Thumnail for poster "File protection solutions in Office 365"](../images/24be68b5-d852-4fdb-94ad-94491a19edd8.png)<br/>
[PDF](http://download.microsoft.com/download/7/8/9/789645A5-BD10-4541-BC33-F8D1EFF5E911/MSFT_cloud_architecture_O365%20file%20protection.pdf) | [Visio](http://download.microsoft.com/download/7/8/9/789645A5-BD10-4541-BC33-F8D1EFF5E911/MSFT_cloud_architecture_O365%20file%20protection.vsdx)


##Security and productivity trade-offs
Implementing any security strategy requires trade-offs between security and productivity. It's helpful to evaluate how each decision affects the balance of security, functionality, and ease of use. 

![Security triad balancing security, functionality, and ease of use.](media/policies-configurations/security-triad.png)

The recommendations provided are based on the following principles:
- Know the audience - Be flexible by job function/security bar.
- Apply security policy just in time and ensure it is meaningful.


##Services and concepts for identity and device access protection

Microsoft 365 Enterprise is designed for large organizations and integrates Office 365 Enterprise, Windows 10 Enterprise, and Enterprise Mobility + Security (EMS) to empower everyone to be creative and work together, securely. 

This section provides an overview of the Microsoft 365 services and capabilities that are important for identity and device access.

###Microsoft Azure Active Directory

Azure AD provides a full suite of identity management capabilities. Our recommendations for securing access use the following capabilities:
- **Multi-factor authentication (MFA)** — MFA requires users to provide two forms of verification, such as a user password plus phone authentication with a pin. MFA greatly reduces the risk that a stolen identity can be used to access your Office 365 environment. 
- **Conditional access** — Azure AD evaluates the conditions of the user login and uses conditional access rules you create to allow access. For example, in this guidance we show you how to create a conditional access rule to require device compliance for access to sensitive data. This greatly reduces the risk that a hacker with a stolen identity can access your sensitive data. It also protects sensitive data on the devices because the devices meet specific requirements for health and security. 
- **Azure AD groups** — Conditional access rules, device management with Intune, and even permissions to files and sites in your organization rely on assignment to users and/or Azure AD groups. We recommend you create Azure AD groups that correspond to the levels of protection you are implementing. For example, your executive staff are likely higher value targets for hackers. Therefore, it makes sense to assign these employees to an Azure AD group and assign this group to conditional access rules and other policies that enforce a higher level of protection for access. 
- **Device registration** — You register a device into Azure AD to provide an identity to the device. This identity is used to authenticate the device when a user signs in and to apply conditional access rules that require domain-joined or compliant PCs. For this guidance, we use device registration to automatically register domain-joined Windows computers. Device registration is a prerequisite for managing devices with Intune. 
- **Azure AD Identity Protection** — [Azure AD Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection) enables you to detect potential vulnerabilities affecting your organization’s identities and configure automated responses via conditional access policies to low, medium and high sign-in risk and user risk.This guidance relies on this risk evaluation to apply conditional access rules for multi-factor authentication. This guidance also includes a conditional access rule that requires users to change their password if high risk activity is detected for their account.



###Intune app protection

[Intune app protection](https://docs.microsoft.com/en-us/intune/app-protection-policy) policies can be used to protect your company’s data in mobile apps with or without enrolling devices into management. In fact, your users' mobile devices can even be managed by another non-Microsoft MDM solution while Intune helps protect Office 365 information. While making sure your employees can still be productive, you can also prevent data loss—intentional and unintentional. By implementing app-level policies, you can restrict access to company resources and keep data within the control of your IT department.

This guidance shows you how to create recommended policies to enforce the use of approved apps and to determine how these apps can be used with your business data.

###Microsoft Intune

[Intune](https://docs.microsoft.com/en-us/intune/introduction-intune) is Microsoft’s cloud-based mobile device management service. This guidance recommends device management of Windows PCs with Intune and recommends device compliance policy configurations. Intune determines whether devices are compliant and sends this data to Azure AD to use when applying conditional access rule.

###Office 365

This guidance shows you how to implement a set of policies to protect access to Office 365, including Exchange Online, SharePoint Online, and OneDrive for Business. In addition to implementing these policies, we recommend you also raise the level of protection for your Office 365 tenant using these resources:

- [Configure your Office 365 tenant for increased security](https://support.office.com/en-us/article/Configure-your-Office-365-tenant-for-increased-security-8d274fe3-db51-4107-ba64-865e7155b355) — These recommendations apply to baseline security for your Office 365 tenant.
- [Office 365 security roadmap: Top priorities for the first 30 days, 90 days, and beyond](https://support.office.com/en-us/article/Office-365-security-roadmap-Top-priorities-for-the-first-30-days-90-days-and-beyond-28c86a1c-e4dd-4aad-a2a6-c768a21cb352) — These recommendations include logging, data governance, admin access, and threat protection.
- [Secure SharePoint Online sites and files](https://docs.microsoft.com/en-us/office365/enterprise/secure-sharepoint-online-sites-and-files) — This set of articles describes how to protect files and sites at appropriate levels for baseline, sensitive, and highly confidential protection.

###Windows 10 and Office 365 ProPlus
Windows 10 and Office 365 ProPlus are the recommended client environment for PCs. We recommend Windows 10, as Azure is designed to provide the smoothest SSO experience possible for both on-premises and Azure AD. Windows 10 also includes advanced security capabilities that can be managed through Intune. Office 365 ProPlus includes the latest versions of Office applications. These use modern authentication, which is more secure and a requirement for conditional access. These apps also include enhanced security and compliance tools.

##Applying these capabilities across the three tiers of protection

The following table summarizes our recommendations for using these capabilities across the three tiers of protection.

|Protection mechanism|Baseline|Sensitive|Highly regulated|
|:-------------------|:-------|:--------|:---------------|
|**Enforce MFA**|On medium or above sign-in risk|On low or above sign-in risk|On all new sessions|
|**Enforce Password Change**|For high risk users|For high risk users|For high risk users|
|**Enforce Intune Application Protection**|Yes|Yes|Yes|
|**Enforce Intune Enrollment (COD)**|Require a compliant or domain joined PC, but allow BYOD phones/tablets|Require a compliant or domain joined device|Require a compliant or domain joined device|


## Device ownership
The above table reflects the trend for many organizations to support a mix of corporate-owned devices (COD) as well as personal or bring-your-own devices (BYOD) to enable mobile productivity across their workforces. Intune App Protection Policies ensure that email is protected from exfiltrating out of the Outlook mobile app and other Office mobile apps, on both COD and BYOD.  

We recommend corporate-owned devices be managed by Intune or domain-joined to apply additional protections and control.  Depending on data sensitivity, your organization may choose to not allow BYOD for specific user populations or specific apps.

## Next steps

[Prerequisite work for implementing identity and device access policies](identity-access-prerequisites.md)
