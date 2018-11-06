---
title: Identity and device access configurations - Microsoft 365 Enterprise
description:  Describes Microsoft recommendations and core concepts for deploying secure email, docs, and apps policies and configurations.
author: brendacarter
manager: laurawi
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 09/11/2018
ms.author: bcarter
ms.reviewer: martincoetzer
ms.custom: 
- it-pro
- goldenconfig
---
# Identity and device access recommendations
This series of articles provides environment and configuration recommendations to ensure secure access to cloud services. We use Enterprise Mobility + Security products and include conditional access policies and related capabilities. 

Use the recommendations to protect your organization’s access to all services integrated with Azure Active Directory, including Office 365 services, other SaaS services, and on-premises applications published with Azure AD Application Proxy. 

Compliance with these recommendations will increase, your organization’s [Microsoft Secure Score](https://docs.microsoft.com/en-us/office365/securitycompliance/office-365-secure-score) and [Identity Score in Azure AD](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/identity-secure-score). The recommendations also align with the [Azure five-step security checklist](https://docs.microsoft.com/en-us/azure/security/azure-ad-secure-steps).

The recommendations should suit most organizations. If your organization requires a unique or more complex environment, use them as a starting point and adapt them as necessary.  

## Intended audience

This content is intended for enterprise architects and IT professionals experienced in [Office 365](https://technet.microsoft.com/library/dn127064(v=office.14).aspx) and [Microsoft Enterprise Mobility + Security](http://microsoft.com/ems), including [Azure Active Directory (identity)](https://azure.microsoft.com/en-us/services/active-directory/), [Microsoft Intune (device management)](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune), and [Azure Information Protection (data protection)](https://docs.microsoft.com/en-us/azure/information-protection/what-is-information-protection).

## Customer environment
The recommendations apply to enterprise organizations operating entirely within the Microsoft cloud and to those with a hybrid (on-premises/Microsoft cloud) infrastructure.

Many recommendations rely on services available only with Enterprise Mobility + Security (EMS) E5 licenses and assume full EMS E5 license capabilities.

Organizations who do not have Enterprise Mobility + Security E5 licenses should, at a minimum implement [Azure AD baseline protection](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/baseline-protection) that is included with all plans.

## Compliance requirements
The recommendations provide a balance between the need for security and productivity, and are designed to cover a wide range of organizational protection requirements. However, other compliance and regulatory requirements, and features unique to your organization, may necessitate deviation from them. 

## Three tiers of protection
Security and data protection requirements vary by industry, organization, department and task. For example, your legal department and Office 365 administrators may require more security and data protection for emails than other forms of communication. Different industries also have varying compliance regulations. 

Because requirements vary, our recommendations are granular and provide for three tiers of protection that can be applied across the board:

- **Baseline protection**: All organizations should establish minimum standards for protecting their data, and the identities and devices that access their data. Follow the baseline recommendations to provide strong default protection that meets the needs of most organizations.
- **Sensitive protection**: Some organizations require a higher level of protection for all data, others require a higher level of protection for only certain subsets of data. Your Office 365 environment allows for increased data protection for specific data sets. Organizations need to protect identities and devices that access sensitive data with comparable levels of security.  
- **Highly regulated**: Organizations who deal with highly classified or regulated data, or trade secrets, should use Microsoft's capabilities to meet these high-level requirements, including added protection for identities and devices. 

![Security cone - All customers > Some customers > Specific customers. Broad application to specific application](../images/M365-idquality-threetiers.png)

The infographics below show you how to implement protection for identities and devices for each tier of protection. Use them as a starting point and then adapt them to the specific requirments of your organization.

It’s important to use the same levels of protection across your data, identities, and devices. The infographics indicate which capabilities are comparable. 

**Identity and device protection for Office 365**<br/>
![Thumbnail for poster "Identity and device protection for Office 365"](../images/O365_Identity_device_protection_thumb.png)<br/>
[PDF](https://go.microsoft.com/fwlink/p/?linkid=841656) | [Visio](https://go.microsoft.com/fwlink/p/?linkid=841657) | [More languages](https://www.microsoft.com/download/details.aspx?id=55032)

**File Protection Solutions in Office 365**<br/>
![Thumbnail for poster "File protection solutions in Office 365"](../images/24be68b5-d852-4fdb-94ad-94491a19edd8.png)<br/>
[PDF](http://download.microsoft.com/download/7/8/9/789645A5-BD10-4541-BC33-F8D1EFF5E911/MSFT_cloud_architecture_O365%20file%20protection.pdf) | [Visio](http://download.microsoft.com/download/7/8/9/789645A5-BD10-4541-BC33-F8D1EFF5E911/MSFT_cloud_architecture_O365%20file%20protection.vsdx)

## The security vs productivity trade-off
All security strategies require a trade-off between security and productivity. It's helpful to evaluate how each decision affects the balance of security, functionality, and ease of use.

![Security triad balancing security, functionality, and ease of use.](media/policies-configurations/security-triad.png)

## Services and concepts for identity and device access protection

Microsoft 365 Enterprise is designed for large organizations and integrates Office 365 Enterprise, Windows 10 Enterprise, and Enterprise Mobility + Security (EMS) to ensure everyone can work together creatively and securely.

Here’s an overview of Microsoft 365 services and capabilities that are important for identity and device access.

### Microsoft Azure Active Directory

Azure AD provides a full suite of identity management capabilities. Our secure access recommendations include: 
- **[Self-service password reset (SSPR)](https://docs.microsoft.com/en-us/azure/active-directory/authentication/concept-sspr-howitworks)**: Allow users to reset their passwords securely, without helpdesk intervention, by providing verification of multiple authentication methods that administrators control.
- **[Multi-factor authentication (MFA)](https://docs.microsoft.com/en-us/azure/active-directory/authentication/concept-mfa-howitworks)**: Require users to provide two forms of verification, for example a password plus a notification from the Microsoft Authenticator app or a phone call. MFA considerably reduces the risk of access your Office 365 environment with a stolen identity.
- **[Conditional access](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/overview)**: Azure AD evaluates the conditions of a login using conditional access policies that you create. This reduces the risk of access to sensitive data with a stolen identity. It also protects sensitive data stored on devices because they are required to meet specific health and security requirements. 
- **[Azure AD groups](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-manage-groups)**: Set fine-grained access with conditional access rules, device management with Intune, and permissions to specific files and sites, using Azure AD groups. Create groups that correspond with the levels of protection required. For example, if your executive staff are more attractive targets, assign them to a group and set higher-level access policies. 
- **[Device registration](https://docs.microsoft.com/en-us/azure/active-directory/devices/overview)**: Devices registered in Azure AD are given an identity that is used to authenticate the device on sign in. In addition, conditional access rules are used to automatically register domain-joined Windows computers or compliant PCs. Device registration is a prerequisite for managing devices with Intune. 
- **[Azure AD Identity Protection](https://docs.microsoft.com/en-us/azure/active-directory/identity-protection/overview)**: Detect potential vulnerabilities affecting your organization’s identities and configure an automated remediation policy (low, medium, or high) based on sign-in risk and user risk. Use risk evaluation to apply conditional access policies for multi-factor authentication, together with a conditional access policy requiring a password change if high-risk activity is detected. 

### Microsoft Intune

Use [Microsoft Intune](https://docs.microsoft.com/intune/introduction-intune), our cloud-based mobile device management service, to manage your mobile devices. Set secure compliance policy configurations to ensure that devices are compliant. Relevant data is sent to Azure AD where it is used to assess conditional access policies.

#### Intune app protection

Use [Intune app protection](https://docs.microsoft.com/intune/app-protection-policy) to protect your company’s data in mobile apps—with or without enrolling devices into management. Intune protects your Office 365 information, preventing data loss, while allowing your employees to remain productive. You can restrict access to company resources by implementing app-level policies. You can also create recommended policies to enforce the use of only approved apps and how the apps are used with your business data. 

### Office 365

Implement a set of policies to protect access to Office 365, including Exchange Online, SharePoint Online, and OneDrive for Business. You can also raise the level of protection for your Office 365 tenant using these resources:

- [Configure your Office 365 tenant for increased security](https://support.office.com/article/Configure-your-Office-365-tenant-for-increased-security-8d274fe3-db51-4107-ba64-865e7155b355): These recommendations apply to baseline security for your Office 365 tenant.
- [Office 365 security roadmap: Top priorities for the first 30 days, 90 days, and beyond](https://support.office.com/article/Office-365-security-roadmap-Top-priorities-for-the-first-30-days-90-days-and-beyond-28c86a1c-e4dd-4aad-a2a6-c768a21cb352): These recommendations include logging, data governance, admin access, and threat protection.
- [Secure SharePoint Online sites and files](https://docs.microsoft.com/office365/enterprise/secure-sharepoint-online-sites-and-files): This set of articles describes how to protect files and sites at appropriate levels for baseline, sensitive, and highly confidential protection.

### Windows 10 and Office 365 ProPlus

We recommend Windows 10 and Office 365 ProPlus as the best client environment for PCs. Azure is designed to provide the smoothest Windows 10 experience for both on-premises and Azure AD. Windows 10 also includes advanced security capabilities that can be managed through Intune. Office 365 ProPlus includes the latest versions of Office applications. These use modern authentication, which is more secure, and a requirement for conditional access. Office apps also include enhanced security and compliance tools.

## Applying capabilities across the three tiers of protection

This table summarizes our recommendations for using your Microsoft capabilities across the three tiers of protection.

|Protection mechanism|Baseline|Sensitive|Highly regulated|
|:-------------------|:-------|:--------|:---------------|
|**Enforce MFA**|On medium or higher sign-in risk|On low or higher sign-in risk|On all new sessions|
|**Enforce Password Change**|For high-risk users|For high-risk users|For high-risk users|
|**Enforce Intune Application Protection**|Yes|Yes|Yes|
|**Enforce Intune Enrollment (COD)**|Require a compliant or domain-joined PC, but allow BYOD phones/tablets|Require a compliant or domain-joined device|Require a compliant or domain-joined device|

## Device ownership

Many organizations support both corporate-owned and personal devices (bring-your-own devices (BYODs)). Intune app protection policies can ensure that email data does not exfiltrate from Outlook or other Office mobile apps on both device types.

We recommend corporate-owned devices be managed by Intune or domain-joined to apply additional protections and control. You should also consider disallowing BYODs for specific users or apps.


## Next steps

[Prerequisite work for implementing identity and device access policies](identity-access-prerequisites.md)
