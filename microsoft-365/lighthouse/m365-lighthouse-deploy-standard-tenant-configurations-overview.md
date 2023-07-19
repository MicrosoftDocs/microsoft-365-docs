---
title: "Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
ms.date: 07/03/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about using baselines to deploy standard tenant configurations."
---

# Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations

Microsoft 365 Lighthouse baselines provide a repeatable and scalable way for you to manage Microsoft 365 security settings across multiple customer tenants. Baselines provide standard tenant configurations that deploy core security policies and compliance standards that keep your tenants' users, devices, and data secure and healthy.

To view the Microsoft 365 Lighthouse default baseline that applies to all tenants, select **Deployment** > **Baselines** in the left navigation pane in Lighthouse.

## Watch: Deploy baselines

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE5dQib]

## Microsoft 365 Lighthouse default baseline

The Microsoft 365 Lighthouse default baseline is designed to ensure all managed tenants are healthy and secure. To view the tasks included in the default baseline, select **Default baseline** from the list. Select any of the tasks to view additional details about the task and the associated user impact.

:::image type="content" source="../media/m365-lighthouse-deploy-baselines/default-baseline-page.png" alt-text="Screenshot of the Default baseline page." lightbox="../media/m365-lighthouse-deploy-baselines/default-baseline-page.png":::

### Default Lighthouse configurations

|Baseline configuration|Description|
|---|---|
|Require MFA for admins|A Conditional Access policy requiring multi-factor authentication for all admins. It's required for all cloud applications. For more information about this baseline, see [Conditional Access: Require MFA for all administrators](/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa).|
|Require MFA for end users|A Conditional Access policy that requires multi-factor authentication for all users.  It's required for all cloud applications. For more information about this baseline, see [Conditional Access: Require MFA for all users](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa).|
|Block legacy authentication|A Conditional Access policy to block legacy client authentication. For more information about this baseline, see [Block legacy authentication to Azure AD with Conditional Access](/azure/active-directory/conditional-access/block-legacy-authentication).|
|Set up device enrollment|Device enrollment allows your tenant devices to enroll in Microsoft Intune and provide Endpoint Analytics visibility into your devices through device health monitoring. This configuration is done by setting up Auto Enrollment between Azure Active Directory and Microsoft Intune. For more information about this baseline, see [Set up enrollment for Windows devices](/mem/intune/enrollment/windows-enroll).|
|Configure app protection policy|A set of protection policies that allow you to manage and protect a managed tenant's organization's data within an application, independent of any mobile device management (MDM) solution. The organization's data will be protected with or without enrolling devices in an MDM solution.|
|Set up Microsoft Defender for Business|Provisions the tenant for Microsoft Defender for Business and onboards the devices already enrolled in Microsoft Intune to Microsoft Defender for Business. For more information, see [What is Microsoft Defender for Business?](../security/defender-business/mdb-overview.md)|
|Set up Exchange Online Protection and Microsoft Defender for Office 365|A policy to apply recommended anti-spam, anti-malware, anti-phishing, safe links and safe attachment policies to your tenants Exchange Online mailboxes.|
|Configure Microsoft Defender Antivirus for Windows 10 and later|A device configuration profile for Windows devices with pre-configured Microsoft Defender Antivirus settings. For more information about this baseline, see [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure).|
|Configure Microsoft Defender Firewall for Windows 10 and later|A firewall policy to help secure devices by preventing unwanted and unauthorized network traffic. For more information about this baseline, see [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).|
|Configure a device compliance policy for Windows 10 and later|A Windows device policy with pre-configured settings to meet basic compliance requirements. For more information about this baseline, see [Conditional Access: Require compliant or hybrid Azure AD joined device](/azure/active-directory/conditional-access/howto-conditional-access-policy-compliant-device).|
|Configure Microsoft Edge|A Microsoft Edge browser policy for Windows 10 or later with preconfigured settings to stay protected from phishing scams and malicious software. This policy also allows Microsoft Edge to safely save and monitor passwords and suggest strong passwords when needed.|

## Related content

[Review a deployment plan](m365-lighthouse-review-deployment-plan.md) (article)\
[Overview of deployment tasks](m365-lighthouse-overview-deployment-task.md) (article)\
[Common Conditional Access policies](/azure/active-directory/conditional-access/concept-conditional-access-policy-common) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
