---
title: "Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms-reviewer: shcallaw, kywirpel
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
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

# Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations 

Microsoft 365 Lighthouse baselines provide a repeatable and scalable way for you to manage Microsoft 365 security settings across multiple customer tenants. Baselines provide standard tenant configurations that deploy core security policies and compliance standards that keep your tenants' users, devices, and data secure.

You can view the default baseline and its deployment steps from within Lighthouse. To apply a baseline to a tenant, select **Tenants** in the left navigation pane, and then select a tenant. Next, go to the **Deployment Plan** tab to begin the deployment.

## Lighthouse baseline

Lighthouse baseline configurations are designed to make sure all managed tenants are secure and compliant. Select **Baselines** in the left navigation pane to view the default baseline that applies to all tenants. To view the deployment steps included in the default baseline, select **View baseline** to open the **Default baseline** page. Select any of the deployment steps to view deployment details and user impact.

:::image type="content" source="../media/m365-lighthouse-deploy-baselines/default-baseline-page.png" alt-text="Screenshot of the Default baseline page.":::

### Default Lighthouse configurations

| Baseline configuration | Description |
|--|--|
| Require MFA for admins | A Conditional Access policy requiring multi-factor authentication for all admins. It's required for all cloud applications. For more information about this baseline, see [Conditional Access: Require MFA for all administrators](/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa).|
| Require MFA for end users | A Conditional Access policy that requires multi-factor authentication for all users.  It's required for all cloud applications. For more information about this baseline, see [Conditional Access: Require MFA for all users](/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa). |
| Block legacy authentication | A Conditional Access policy to block legacy client authentication. For more information about this baseline, see [Block legacy authentication to Azure AD with Conditional Access](/azure/active-directory/conditional-access/block-legacy-authentication).|
| Set up device enrollment | Device enrollment to allow your tenant devices to enroll in Microsoft Endpoint Manager. This is done by setting up Auto Enrollment between Azure Active Directory and Microsoft Endpoint Manager. For more information about this baseline, see [Set up enrollment for Windows devices](/mem/intune/enrollment/windows-enroll). |
| Set up Microsoft Defender for Business | Provisions the tenant for Microsoft Defender for Business and onboards the devices already enrolled in Microsoft Endpoint Manager to Microsoft Defender for Business. For more information, see [What is Microsoft Defender for Business?](../security/defender-business/mdb-overview.md) |
| Set up Exchange Online Protection and Microsoft Defender for Office 365 | A policy to apply recommended anti-spam, anti-malware, anti-phishing, safe links and safe attachment policies to your tenants Exchange Online mailboxes. |
| Configure Microsoft Defender Antivirus for Windows 10 and later | A device configuration profile for Windows devices with pre-configured Microsoft Defender Antivirus settings. For more information about this baseline, see [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure).|
| Configure Microsoft Defender Firewall for Windows 10 and later | A firewall policy to help secure devices by preventing unwanted and unauthorized network traffic. For more information about this baseline, see [Best practices for configuring Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/best-practices-configuring).  |
| Configure a device compliance policy for Windows 10 and later | A Windows device policy with pre-configured settings to meet basic compliance requirements. For more information about this baseline, see [Conditional Access: Require compliant or hybrid Azure AD joined device](/azure/active-directory/conditional-access/howto-conditional-access-policy-compliant-device). |
| Configure Microsoft Edge  | A Microsoft Edge browser policy for Windows 10 or later with preconfigured settings to stay protected from phishing scams and malicious software. This policy also allows Microsoft Edge to safely save and monitor passwords and suggest strong passwords when needed. |

## Deployment Plans

Each active tenant has a deployment plan that includes the deployment steps from the Microsoft 365 Lighthouse baseline. To access a tenant's deployment plan, select an active tenant from the list on the **Tenants** page, and then select the **Deployment Plan** tab.

:::image type="content" source="../media/m365-lighthouse-deploy-baselines/deployment-plan-tab.png" alt-text="Screenshot of the Deployment Plan tab.":::

The Deployment Plan tab includes the following information:


|Column  |Description  |
|---------|---------|
|Deployment step     |  Description of deployment step.       |
|Status     |The status of the deployment step.         |
|Baseline     |The baseline from which the deployment step is derived.         |
|Category     | Whether the deployment step is associated with managing Devices, Identity, or Data.        |
|Last updated    | The date at which the deployment step was last updated.        |


The Deployment Plan tab also includes the following options:

- **Export:** Select to export deployment step data to an Excel comma-separated values (.csv) file.
- **Refresh:** Select to retrieve the most current deployment step data.
- **Search:** Enter keywords to quickly locate a specific deployment step in the list.

## Deployment steps and processes

Each tenant's deployment plan includes the deployment steps from the Microsoft 365 Lighthouse baseline. Each deployment step includes one or more processes that need to be completed. When a new tenant becomes active, you must complete deployment activities associated with the deployment steps and processes.

For each deployment step, you can take the following actions:

|Action  |Description  |
|---------|---------|
| Share    |  Enables the contents of the Deployment Step to be shared through a link or by email.    |
| Review and deploy    |  Enables the user to: <ul><li>When supported, compare the configuration settings in the deployment step with settings in any existing policies without deploying the settings to the tenant.<br>The following deployment steps support comparison:</br><ul><li>Configure a device compliance policy for Windows 10 and later</li><li>Require MFA for end-users</li><li>Require MFA for admins</li><li>Block legacy authentication</li></ul></li> <li>Deploy the configuration settings to the tenant.</li></ul>**Note:** Steps that don't support the ability to compare without deploying the settings to the tenant will enable you to review the configuration settings and deploy them.|
| Update action plan status    |  Enables the user to report the status of their action plan for the deployment step.      |

## Related content

[Deploy Microsoft 365 Lighthouse baselines](m365-lighthouse-deploy-baselines.md) (article)\
[Common Conditional Access policies](/azure/active-directory/conditional-access/concept-conditional-access-policy-common) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
