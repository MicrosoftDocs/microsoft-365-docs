---
title: Configure your Microsoft 365 tenant for increased security
f1.keywords: 
  - NOCSH
ms.author: bcarter
author: BrendaCarter
manager: laurawi
ms.date: 04/06/2022
audience: ITPro
ms.topic: article

ms.localizationpriority: medium
ms.collection: 
  - Ent_O365
  - Strat_O365_IP
  - M365-security-compliance
search.appverid: MET150
ms.assetid: 8d274fe3-db51-4107-ba64-865e7155b355
ms.custom: 
  - seo-marvel-apr2020
  - admindeeplinkSPO
description: This topic walks you through recommended configuration for tenant-wide settings that affect the security of your Microsoft 365 environment.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Configure your Microsoft 365 tenant for increased security

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

This topic walks you through recommended configuration for tenant-wide settings that affect the security of your Microsoft 365 environment. Your security needs might require more or less security. Use these recommendations as a starting point.

## Check Office 365 Secure Score

Office 365 Secure Score analyzes your organization's security based on your regular activities and security settings and assigns a score. Begin by taking note of your current score. Adjusting some tenant-wide settings will increase your score. The goal is not to achieve the max score, but to be aware of opportunities to protect your environment that do not negatively affect productivity for your users. See [Microsoft Secure Score](../defender/microsoft-secure-score.md).

## Tune threat management policies in the Microsoft 365 Defender portal

The Microsoft 365 Defender portal includes capabilities that protect your environment. It also includes reports and dashboards you can use to monitor and take action. Some areas come with default policy configurations. Some areas do not include default policies or rules. Visit these policies under **Email & collaboration** \> **Policies & rules** \> **Threat policies** to tune threat management settings for a more secure environment.

|Area|Default policy?|Recommendation|
|---|---|---|
|**Anti-phishing**|Yes|Configure the default anti-phishing policy as described here: [Configure anti-phishing protection settings in EOP and Defender for Office 365](protect-against-threats.md#part-2---anti-phishing-protection-in-eop-and-defender-for-office-365). <p> More information: <ul><li>[Anti-phishing policies in Microsoft 365](set-up-anti-phishing-policies.md)</li><li>[Recommended anti-phishing policy settings in Microsoft Defender for Office 365](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365)</li><li> [Impersonation insight](impersonation-insight.md)</li><li>[Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md)</li><li>[Manage the Tenant Allow/Block List](manage-tenant-allow-block-list.md).</li></ul>|
|**Anti-Malware Engine**|Yes|Configure the default anti-malware policy as described here: [Configure anti-malware protection settings in EOP](protect-against-threats.md#part-1---anti-malware-protection-in-eop). <p> More information: <ul><li>[Anti-malware protection](anti-malware-protection.md)</li><li>[Recommended anti-malware policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-malware-policy-settings)</li><li>[Configure anti-malware policies](configure-anti-malware-policies.md)</li></ul>|
|**Safe Attachments in Defender for Office 365**|No|Configure the global settings for Safe Attachments and create a Safe Attachments policy as described here: [Configure Safe Attachments settings in Microsoft Defender for Office 365](protect-against-threats.md#safe-attachments-policies-in-microsoft-defender-for-office-365). <p> More information: <ul><li>[Recommended Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings)</li><li>[Safe Attachments in Microsoft Defender for Office 365](safe-attachments.md)</li><li>[Set up Safe Attachments policies](set-up-safe-attachments-policies.md)</li><li>[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md)</li><li>[Safe Documents in Microsoft 365 E5](safe-docs.md)</li></ul>|
|**Safe Links in Microsoft Defender for Office 365**|No|Create a Safe Links policy as described here: [Configure Safe Links settings in Microsoft Defender for Office 365](protect-against-threats.md#safe-links-policies-in-microsoft-defender-for-office-365). <p> More information: <ul><li>[Recommended Safe Links settings](recommended-settings-for-eop-and-office365.md#safe-links-settings)</li><li>[Set up Safe Links policies](set-up-safe-links-policies.md)</li><li>[Safe Links in Microsoft Defender for Office 365](safe-links.md)</li></ul>|
|**Anti-spam (mail filtering)**|Yes|Configure the default anti-spam policy as described here: [Configure anti-spam protection settings in EOP](protect-against-threats.md#part-3---anti-spam-protection-in-eop) <p> More information: <ul><li>[Recommended anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings)</li><li>[Anti-spam protection in EOP](anti-spam-protection.md)</li><li>[Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)</li></ul>|
|***Email Authentication***|Yes|Email authentication uses DNS records to add verifiable information to email messages about the message source and sender. Microsoft 365 automatically configures email authentication for its default domain (onmicrosoft.com), but Microsoft 365 admins can also configure email authentication for custom domains. Three authentication methods are used: <ul><li>Sender Policy Framework (or SPF).</li><ul><li>For setup, see [Set up SPF in Microsoft 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md).</li></ul> <li>DomainKeys Identified Mail (DKIM).</li><ul><li>See [Use DKIM to validate outbound email sent from your custom domain](use-dkim-to-validate-outbound-email.md).</li><li>After you've configured DKIM, enable it in the Microsoft 365 Defender portal.</li></ul><li>Domain-based Message Authentication, Reporting, and Conformance (DMARC).</li><ul><li>For DMARC setup [Use DMARC to validate email in Microsoft 365](use-dmarc-to-validate-email.md).</li></ul></ul>|

> [!NOTE]
> For non-standard deployments of SPF, hybrid deployments, and troubleshooting: [How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md).

## View dashboards and reports in the Microsoft 365 Defender portal

Visit these reports and dashboards to learn more about the health of your environment. The data in these reports will become richer as your organization uses Office 365 services. For now, be familiar with what you can monitor and take action on.

|Dashboard|Description|
|---|---|
|Email security reports|These reports are available in Exchange Online Protection. For more information, see [View email security reports in the Microsoft 365 Defender portal](view-email-security-reports.md).|
|Defender for Office 365 reports|The reports are available only in Defender for Office 365. For more information, see [View Defender for Office 365 reports in the Microsoft 365 Defender portal](view-reports-for-mdo.md).|
|Mail flow reports and insights|These reports and insights are available in the Exchange admin center (EAC). For more information, see [Mail flow reports](/exchange/monitoring/mail-flow-reports/mail-flow-reports) and [Mail flow insights](/exchange/monitoring/mail-flow-insights/mail-flow-insights).|
|[Threat Explorer (or real-time detections)](threat-explorer.md)|If you are investigating or experiencing an attack against your tenant, use Explorer (or real-time detections) to analyze threats. Explorer (and the real-time detections report) shows you the volume of attacks over time, and you can analyze this data by threat families, attacker infrastructure, and more. You can also mark any suspicious email for the Incidents list.|

## Configure additional Exchange Online tenant-wide settings

Here are a couple of additional settings that are recommended.

|Area|Recommendation|
|---|---|
|**Mail flow rules** (also known as transport rules)|Add a mail flow rule to help protect against ransomware by blocking executable file types and Office file types that contain macros. For more information, see [Use mail flow rules to inspect message attachments in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments). <p> See these additional topics: <ul><li>[Protect against ransomware](../../admin/security-and-compliance/secure-your-business-data.md)</li><li>[Malware and Ransomware Protection in Microsoft 365](/compliance/assurance/assurance-malware-and-ransomware-protection)</li><li>[Recover from a ransomware attack in Office 365](recover-from-ransomware.md)</li></ul> <p> Create a mail flow rule to prevent auto-forwarding of email to external domains. For more information, see [Mitigating Client External Forwarding Rules with Secure Score](/archive/blogs/office365security/mitigating-client-external-forwarding-rules-with-secure-score). <p> More information: [Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)|
|**Modern authentication**|Modern authentication is a prerequisite for using multi-factor authentication (MFA). MFA is recommended for securing access to cloud resources, including email. <p> See these topics: <ul><li>[Enable or disable modern authentication in Exchange Online](/Exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online)</li><li>[Skype for Business Online: Enable your tenant for modern authentication](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx)</li></ul> <p> Modern authentication is enabled by default for Office 2016 clients, SharePoint Online, and OneDrive for Business. <p> More information: [How modern authentication works for Office 2013 and Office 2016 client apps](../../enterprise/modern-auth-for-office-2013-and-2016.md)|

## Configure tenant-wide sharing policies in SharePoint admin center

Microsoft recommendations for configuring SharePoint team sites at increasing levels of protection, starting with baseline protection. For more information, see [Policy recommendations for securing SharePoint sites and files](sharepoint-file-access-policies.md).

SharePoint team sites configured at the baseline level allow sharing files with external users by using anonymous access links. This approach is recommended instead of sending files in email.

To support the goals for baseline protection, configure tenant-wide sharing policies as recommended here. Sharing settings for individual sites can be more restrictive than this tenant-wide policy, but not more permissive.

|Area|Includes a default policy|Recommendation|
|---|---|---|
|**Sharing** (SharePoint Online and OneDrive for Business)|Yes|External sharing is enabled by default. These settings are recommended: <ul><li>Allow sharing to authenticated external users and using anonymous access links (default setting).</li><li>Anonymous access links expire in this many days. Enter a number, if desired, such as 30 days.</li><li>Default link type — select Internal (people in the organization only). Users who wish to share using anonymous links must choose this option from the sharing menu.</li></ul> <p> More information: [External sharing overview](/sharepoint/external-sharing-overview)|

SharePoint admin center and OneDrive for Business admin center include the same settings. The settings in either admin center apply to both.

## Configure settings in Azure Active Directory

Be sure to visit these two areas in Azure Active Directory to complete tenant-wide setup for more secure environments.

### Configure named locations (under conditional access)

If your organization includes offices with secure network access, add the trusted IP address ranges to Azure Active Directory as named locations. This feature helps reduce the number of reported false positives for sign-in risk events.

See: [Named locations in Azure Active Directory](/azure/active-directory/conditional-access/location-condition)

### Block apps that don't support modern authentication

Multi-factor authentication requires apps that support modern authentication. Apps that do not support modern authentication cannot be blocked by using conditional access rules.

For secure environments, be sure to disable authentication for apps that do not support modern authentication. You can do this in Azure Active Directory with a control that is coming soon.

In the meantime, use one of the following methods to accomplish this for SharePoint Online and OneDrive for Business:

- Use PowerShell, see [Block apps that do not use modern authentication](/mem/intune/protect/app-modern-authentication-block).
- Configure this in the <a href="https://go.microsoft.com/fwlink/?linkid=2185219" target="_blank">SharePoint admin center</a> on the "device access' page — "Control access from apps that don't use modern authentication." Choose Block.

## Get started with Defender for Cloud Apps or Office 365 Cloud App Security

Use Office 365 Cloud App Security to evaluate risk, to alert on suspicious activity, and to automatically take action. Requires Office 365 E5 plan.

Or, use Microsoft Defender for Cloud Apps to obtain deeper visibility even after access is granted, comprehensive controls, and improved protection for all your cloud applications, including Office 365.

Because this solution recommends the EMS E5 plan, we recommend you start with Defender for Cloud Apps so you can use this with other SaaS applications in your environment. Start with default policies and settings.

More information:

- [Deploy Defender for Cloud Apps](/cloud-app-security/getting-started-with-cloud-app-security)
- [More information about Microsoft Defender for Cloud Apps](https://www.microsoft.com/cloud-platform/cloud-app-security)
- [What is Defender for Cloud Apps?](/cloud-app-security/what-is-cloud-app-security)

:::image type="content" source="../../media/1fb2aa65-54b8-4746-9f5e-c187d339e9f5.png" alt-text="The Defender for Cloud Apps dashboard" lightbox="../../media/1fb2aa65-54b8-4746-9f5e-c187d339e9f5.png":::

## Additional resources

These articles and guides provide additional prescriptive information for securing your Microsoft 365 environment:

- [Microsoft security guidance for political campaigns, nonprofits, and other agile organizations](microsoft-security-guidance-for-political-campaigns-nonprofits-and-other-agile-o.md) (you can use these recommendation in any environment, especially cloud-only environments)

- [Recommended security policies and configurations for identities and devices](microsoft-365-policies-configurations.md) (these recommendations include help for AD FS environments)
