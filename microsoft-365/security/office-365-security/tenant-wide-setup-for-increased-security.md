---
title: Configure your Microsoft 365 tenant for increased security
f1.keywords: 
  - NOCSH
ms.author: bcarter
author: BrendaCarter
manager: laurawi
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
ms.collection: 
  - Ent_O365
  - Strat_O365_IP
  - m365-security
search.appverid: MET150
ms.assetid: 8d274fe3-db51-4107-ba64-865e7155b355
ms.custom: 
  - seo-marvel-apr2020
  - admindeeplinkSPO
description: Manual configurations for Exchange Online Protection, Microsoft Defender for Office 365, Plan 1 and 2, and Microsoft Defender XDR, for complete protection of your Office 365 subscription.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 10/16/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Configure your Microsoft 365 tenant for increased security

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Your organizational needs require security.

Specifics are up to your business.

This article walks you through the manual configuration of tenant-wide settings that affect the security of your Microsoft 365 environment. Use these recommendations as a starting point.

## Tune EOP and Defender for Office 365 protection policies in the Microsoft Defender portal

The Microsoft Defender portal has capabilities for both protection and reporting. It has dashboards you can use to monitor and take action when threats arise.

As an initial step, you need to configure *email authentication* records in DNS for all custom email domains in Microsoft 365 (SPF, DKIM, and DMARC). Microsoft 365 automatically configures email authentication for the \*.onmicrosoft.com domain. For more information, see [Step 1: Configure email authentication for your Microsoft 365 domains](mdo-deployment-guide.md#step-1-configure-email-authentication-for-your-microsoft-365-domains).

> [!NOTE]
> For non-standard deployments of SPF, hybrid deployments, and troubleshooting: [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md).

Most protection features in Exchange Online Protection (EOP) and Defender for Office 365 come with *default policy configurations*. For more information, see the table [here](mdo-deployment-guide.md#step-2-configure-protection-policies).

We recommend turning on and using the Standard and/or Strict preset security policies for all recipients. For more information, see the following articles:

- Turn on and configure preset security policies: [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).
- Difference in settings between Standard and Strict preset security policies: [Policy settings in preset security policies](preset-security-policies.md#policy-settings-in-preset-security-policies).
- Complete list of all features and settings in default policies, Standard preset security policies, and Strict preset security policies: [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

Custom policies are required if the business needs of your organization require policy settings that are *different than* or *aren't defined in* preset security policies. Or, if your organization requires a different user experience for quarantined messages (including notifications). For more information, see [Determine your protection policy strategy](mdo-deployment-guide.md#determine-your-protection-policy-strategy).

## View dashboards and reports in the Microsoft Defender portal

In the Defender portal at <https://security.microsoft.com> select **Reports**. Or, to go directly to the **Reports** page, use <https://security.microsoft.com/securityreports>.

On the **Reports** page, you can view information about security trends and track the protection status of your identities, data, devices, apps, and infrastructure.

The data in these reports becomes richer as your organization uses Office 365 services (keep this point in mind if you're piloting or testing). For now, be familiar with what you can monitor and take action on.

On the **Reports** page at <https://security.microsoft.com/securityreports>, select **Email & collaboration** \> **Email & collaboration reports**.

On the **Email & collaboration reports** page that opens, note the cards that are available. In any card, select **View details** to dig into the data. For more information, see the following articles:

- [View email security reports in the Microsoft Defender portal](reports-email-security.md)
- [View Defender for Office 365 reports in the Microsoft Defender portal](reports-defender-for-office-365.md)

Mail flow reports and insights are available in the Exchange admin center (EAC). For more information, see [Mail flow reports](/exchange/monitoring/mail-flow-reports/mail-flow-reports) and [Mail flow insights](/exchange/monitoring/mail-flow-insights/mail-flow-insights).

|If you're investigating or experiencing an attack against your tenant, use [Threat Explorer (or real-time detections)](threat-explorer-about.md) to analyze threats. Explorer (and the real-time detections report) shows you the volume of attacks over time, and you can analyze this data by threat families, attacker infrastructure, and more. You can also mark any suspicious email for the Incidents list.

## Additional considerations

For information about ransomware protection, see the following articles:

- [Protect against ransomware](/microsoft-365/business-premium/secure-your-business-data)
- [Malware and Ransomware Protection in Microsoft 365](/compliance/assurance/assurance-malware-and-ransomware-protection)
- [Ransomware incident response playbooks](/security/ransomware/)

## Configure tenant-wide sharing policies in SharePoint admin center

Microsoft recommendations for configuring SharePoint team sites at increasing levels of protection, starting with baseline protection. For more information, see [Policy recommendations for securing SharePoint sites and files](zero-trust-identity-device-access-policies-sharepoint.md).

SharePoint team sites configured at the baseline level allow sharing files with external users by using anonymous access links. This approach is recommended instead of sending files in email.

To support the goals for baseline protection, configure tenant-wide sharing policies as recommended here. Sharing settings for individual sites can be more restrictive than this tenant-wide policy, but not more permissive.

|Area|Includes a default policy|Recommendation|
|---|---|---|
|**Sharing** (SharePoint Online and OneDrive for Business)|Yes|External sharing is enabled by default. These settings are recommended: <ul><li>Allow sharing to authenticated external users and using anonymous access links (default setting).</li><li>Anonymous access links expire in this many days. Enter a number, if desired, such as 30 days.</li><li>Default link type \> select Internal (people in the organization only). Users who wish to share using anonymous links must choose this option from the sharing menu.</li></ul> <br/> More information: [External sharing overview](/sharepoint/external-sharing-overview)|

SharePoint admin center and OneDrive for Business admin center include the same settings. The settings in either admin center apply to both.

## Configure settings in Microsoft Entra ID

Be sure to visit these two areas in Microsoft Entra ID to complete tenant-wide setup for more secure environments.

### Configure named locations (under conditional access)

If your organization includes offices with secure network access, add the trusted IP address ranges to Microsoft Entra ID as named locations. This feature helps reduce the number of reported false positives for sign-in risk events.

See: [Named locations in Microsoft Entra ID](/entra/identity/conditional-access/location-condition)

### Block apps that don't support modern authentication

Multi-factor authentication requires apps that support modern authentication. Apps that don't support modern authentication can't be blocked by using conditional access rules.

For secure environments, be sure to disable authentication for apps that don't support modern authentication. You can do this in Microsoft Entra ID with a control that is coming soon.

In the meantime, use one of the following methods to block access for apps in SharePoint Online and OneDrive for Business that don't support modern authentication:

- **SharePoint admin center**:
  1. In the SharePoint admin center at <https://admin.microsoft.com/sharepoint>, go to **Policies** \> **Access control**.
  2. On the **Access control** page, select **Apps that don't use modern authentication**.
  3. In the **Apps that don't use modern authentication** flyout that opens, select **Block access**, and then select **Save**.

- **PowerShell**: See [Block apps that don't use modern authentication](/mem/intune/protect/app-modern-authentication-block).

## Get started with Defender for Cloud Apps or Office 365 Cloud App Security

Use Microsoft 365 Cloud App Security to evaluate risk, to alert on suspicious activity, and to automatically take action. Requires Office 365 E5 plan.

Or, use Microsoft Defender for Cloud Apps to obtain deeper visibility even after access is granted, comprehensive controls, and improved protection for all your cloud applications, including Office 365.

Because this solution recommends the EMS E5 plan, we recommend you start with Defender for Cloud Apps so you can use it with other SaaS applications in your environment. Start with default policies and settings.

More information:

- [Deploy Defender for Cloud Apps](/cloud-app-security/getting-started-with-cloud-app-security)
- [More information about Microsoft Defender for Cloud Apps](https://www.microsoft.com/cloud-platform/cloud-app-security)
- [What is Defender for Cloud Apps?](/cloud-app-security/what-is-cloud-app-security)

:::image type="content" source="../../media/1fb2aa65-54b8-4746-9f5e-c187d339e9f5.png" alt-text="The Defender for Cloud Apps dashboard" lightbox="../../media/1fb2aa65-54b8-4746-9f5e-c187d339e9f5.png":::

## Additional resources

These articles and guides provide additional prescriptive information for securing your Microsoft 365 environment:

- [Microsoft security guidance for political campaigns, nonprofits, and other agile organizations](/microsoft-365/solutions/productivity-illustrations#security-guidance-for-political-campaigns-nonprofits-and-other-agile-organizations) (you can use these recommendations in any environment, especially cloud-only environments)

- [Recommended security policies and configurations for identities and devices](zero-trust-identity-device-access-policies-overview.md) (these recommendations include help for AD FS environments)
