---
title: "Overview of using baselines to deploy standard tenant configurations"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about using baselines to deploy standard tenant configurations."
---

# Overview of using baselines to deploy standard tenant configurations 

Microsoft 365 Lighthouse baselines provide a repeatable and scalable way for you to manage Microsoft 365 security settings across multiple customer tenants. Baselines also help monitor core security policies and tenant compliance standards with configurations that secure users, devices, and data.

Designed to help Managed Service Providers (MSPs) enable customer adoption of security, Lighthouse provides a standard set of baseline parameters and pre-defined configurations for Microsoft 365 services. These security configurations help measure your tenants' Microsoft 365 security and compliance progress.

You can view the default baseline and its deployment steps from within Lighthouse. To apply a baseline to a tenant, select **Tenants** in the left navigation pane, and then select a tenant. Next, go to the **Deployment plans** tab and implement the baseline.

## Default baseline security templates

Lighthouse default baseline configurations for security workloads are designed to make sure all managed tenants are secure and compliant.

The baseline configurations in the following table come standard with the Lighthouse default baseline.<br><br>

| Baseline configuration | Description |
|--|--|
| Require MFA for admins | A Conditional Access policy requiring multi-factor authentication for all admins. It's required for all cloud applications. For more information about this baseline, see [Conditional Access: Require MFA for all administrators](/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa).|
| Require MFA for end users | A Conditional Access policy that requires multi-factor authentication for all users.  It's required for all cloud applications. For more information about this baseline, see [Conditional Access: Require MFA for all users](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa). |
| Block legacy authentication | A Conditional Access policy to block legacy client authentication. For more information about this baseline, see [Block legacy authentication to Azure AD with Conditional Access](/azure/active-directory/conditional-access/block-legacy-authentication).|
| Set up device enrollment | Device enrollment to allow your tenant devices to enroll in Microsoft Endpoint Manager. This is done by setting up Auto Enrollment between Azure Active Directory and Microsoft Endpoint Manager. For more information about this baseline, see [Set up enrollment for Windows devices](/mem/intune/enrollment/windows-enroll). |
| Configure Microsoft Defender Antivirus for Windows 10 and later | A device configuration profile for Windows devices with pre-configured Microsoft Defender Antivirus settings. For more information about this baseline, see [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure).|
| Configure Microsoft Defender Firewall for Windows 10 and later | A firewall policy to help secure devices by preventing unwanted and unauthorized network traffic. For more information about this baseline, see [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).  |
| Configure a device compliance policy for Windows 10 and later | A Windows device policy with pre-configured settings to meet basic compliance requirements. For more information about this baseline, see [Conditional Access: Require compliant or hybrid Azure AD joined device](/azure/active-directory/conditional-access/howto-conditional-access-policy-compliant-device). |


## Related content

[Deploy Microsoft 365 Lighthouse baselines](m365-lighthouse-deploy-baselines.md) (article)\
[Common Conditional Access policies](/azure/active-directory/conditional-access/concept-conditional-access-policy-common) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
