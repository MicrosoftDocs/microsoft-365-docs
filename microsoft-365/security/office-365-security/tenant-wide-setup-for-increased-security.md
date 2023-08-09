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
description: Manual configurations for Exchange Online Protection, Microsoft Defender for Office 365, Plan 1 and 2, and Microsoft 365 Defender, for complete protection of your Office 365 subscription.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure your Microsoft 365 tenant for increased security

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Your organizational needs require security.

Specifics are up to your business.

This topic will walk you through the manual configuration of tenant-wide settings that affect the security of your Microsoft 365 environment. Use these recommendations as a starting point.

## Tune threat management policies in the Microsoft 365 Defender portal

The Microsoft 365 Defender portal has capabilities for both protection and reporting. It has dashboards you can use to monitor and take action when threats arise.

Keep in mind that some areas come with *default policy configurations*. Some areas do not include default policies or rules.

For example, the *recommended* setup of Microsoft Defender for Office 365 (plan 1 and plan 2) is described by this handy step-by-step guide, right here: '[Ensuring you always have the optimal security'](step-by-step-guides/ensuring-you-always-have-the-optimal-security-controls-with-preset-security-policies.md). But, even so, some admins opt for a more hands-on approach to this product.

To automate your setup of Microsoft Defender for Office 365 visit the Standard and Strict policies under **Email & collaboration** \> **Policies & rules** \> **Threat policies** to tune threat management settings for a more secure environment.

|Area|Default policy?|Recommendation|
|---|---|---|
|**Anti-phishing**|Yes|Configure the default anti-phishing policy as described here: [Configure anti-phishing protection settings in EOP and Defender for Office 365](protect-against-threats.md#part-2---anti-phishing-protection-in-eop-and-defender-for-office-365). <p> More information: <ul><li>[Anti-phishing policies in Microsoft 365](anti-phishing-policies-about.md)</li><li>[Recommended anti-phishing policy settings in Microsoft Defender for Office 365](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365)</li><li> [Impersonation insight](anti-phishing-mdo-impersonation-insight.md)</li><li>[Spoof intelligence insight in EOP](anti-spoofing-spoof-intelligence.md)</li><li>[Spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#spoofed-senders-in-the-tenant-allowblock-list).</li></ul>|
|**Anti-Malware Engine**|Yes|Configure the default anti-malware policy as described here: [Configure anti-malware protection settings in EOP](protect-against-threats.md#part-1---anti-malware-protection-in-eop). <p> More information: <ul><li>[Anti-malware protection](anti-malware-protection-about.md)</li><li>[Recommended anti-malware policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-malware-policy-settings)</li><li>[Configure anti-malware policies](anti-malware-policies-configure.md)</li></ul>|
|**Safe Attachments in Defender for Office 365**|No|Configure the global settings for Safe Attachments and create a Safe Attachments policy as described here: [Configure Safe Attachments settings in Microsoft Defender for Office 365](protect-against-threats.md#safe-attachments-policies-in-microsoft-defender-for-office-365). <p> More information: <ul><li>[Recommended Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings)</li><li>[Safe Attachments in Microsoft Defender for Office 365](safe-attachments-about.md)</li><li>[Set up Safe Attachments policies](safe-attachments-policies-configure.md)</li><li>[Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md)</li><li>[Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md)</li></ul>|
|**Safe Links in Microsoft Defender for Office 365**|No|Create a Safe Links policy as described here: [Configure Safe Links settings in Microsoft Defender for Office 365](protect-against-threats.md#safe-links-policies-in-microsoft-defender-for-office-365). <p> More information: <ul><li>[Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings)</li><li>[Set up Safe Links policies](safe-links-policies-configure.md)</li><li>[Safe Links in Microsoft Defender for Office 365](safe-links-about.md)</li></ul>|
|**Anti-spam (mail filtering)**|Yes|Configure the default anti-spam policy as described here: [Configure anti-spam protection settings in EOP](protect-against-threats.md#part-3---anti-spam-protection-in-eop) <p> More information: <ul><li>[Recommended anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings)</li><li>[Anti-spam protection in EOP](anti-spam-protection-about.md)</li><li>[Configure anti-spam policies in EOP](anti-spam-policies-configure.md)</li></ul>|
|***Email Authentication***|Yes|Email authentication uses DNS records to add verifiable information to email messages about the message source and sender. Microsoft 365 automatically configures email authentication for its default domain (onmicrosoft.com), but Microsoft 365 admins can also configure email authentication for custom domains. Three authentication methods are used: <ul><li>**Sender Policy Framework (or SPF)**.</li><ul><li>For setup, see [Set up SPF in Microsoft 365 to help prevent spoofing](email-authentication-spf-configure.md).</li></ul> <li>**DomainKeys Identified Mail (DKIM)**.</li><ul><li>See [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md).</li><li>After you've configured DKIM, enable it in the Microsoft 365 Defender portal.</li></ul><li>**Domain-based Message Authentication, Reporting, and Conformance (DMARC)**.</li><ul><li>For DMARC setup [Use DMARC to validate email in Microsoft 365](email-authentication-dmarc-configure.md).</li></ul><li>After you've configured DKIM, enable it in the Microsoft 365 Defender portal.</li></ul><ul><li>**Authenticated Received Chain (ARC) in Microsoft 365 Defender for Office.** <ul><li>List your [Trusted ARC sealers](use-arc-exceptions-to-mark-trusted-arc-senders.md) so *legitimate* intermediaries will be trusted even if they modify mail.</li></ul>|

> [!NOTE]
> For non-standard deployments of SPF, hybrid deployments, and troubleshooting: [How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing](email-authentication-anti-spoofing.md).

## View dashboards and reports in the Microsoft 365 Defender portal

Browse to [security.microsoft.com](https://security.microsoft.com). The menu of Microsoft 365 Defender is divided into sections that begin, in order, Home, Email & Collaboration, Cloud Apps, and Reports (you may see *some* or *all* of these depending on your Plan). You're looking for Reports.

1. Browse to [security.microsoft.com](https://security.microsoft.com).
2. Click **Reports** on the menu.
    1. Here you can view information about security trends and track the protection status of your identities, data, devices, apps, and infrastructure.

The data in these reports will become richer as your organization uses Office 365 services, keep that in mind if you are in pilot or testing. For now, be familiar with what you can monitor and take action on.

Inside each report, you'll see cards for the specific areas monitored.

1. Click the **Email & Collaboration reports**.
1. Take note of the report cards available.
    1. Everything from *Malware detected in email*, to *Spam detections*, *Compromised users*, to *User reported messages* and *Submissions* the final two, with a button that links to Submissions.
1. Click a report, for example *Mailflow status summary* and the click the **View details** button to dig into the data (which even includes a funnel view for easier interpretation of total mail flow vs. blocked, spam, and phishing emails, and more).

|Dashboard|Description|
|---|---|
|Security reports| Identities and device security reports such as users and devices with malware detections, device compliance,  and users at risk.|
|Defender for Office 365 reports|The reports are available only in Defender for Office 365. For more information, see [View Defender for Office 365 reports in the Microsoft 365 Defender portal](reports-defender-for-office-365.md).|
|Mail flow reports and insights|These reports and insights are available in the Exchange admin center (EAC). For more information, see [Mail flow reports](/exchange/monitoring/mail-flow-reports/mail-flow-reports) and [Mail flow insights](/exchange/monitoring/mail-flow-insights/mail-flow-insights).|
|[Threat Explorer (or real-time detections)](threat-explorer-about.md)|If you are investigating or experiencing an attack against your tenant, use Explorer (or real-time detections) to analyze threats. Explorer (and the real-time detections report) shows you the volume of attacks over time, and you can analyze this data by threat families, attacker infrastructure, and more. You can also mark any suspicious email for the Incidents list.|

## Configure additional Exchange Online tenant-wide settings

Here are a couple of additional settings that are recommended.

|Area|Recommendation|
|---|---|
|**Mail flow rules** (also known as transport rules)|Add a mail flow rule to help protect against ransomware by blocking executable file types and Office file types that contain macros. For more information, see [Use mail flow rules to inspect message attachments in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/inspect-message-attachments). <p> See these additional topics: <ul><li>[Protect against ransomware](../../business-premium/secure-your-business-data.md)</li><li>[Malware and Ransomware Protection in Microsoft 365](/compliance/assurance/assurance-malware-and-ransomware-protection)</li><li>[Ransomware incident response playbooks](/security/ransomware/)</li></ul> <br/> Create a mail flow rule to prevent auto-forwarding of email to external domains. For more information, see [Mitigating Client External Forwarding Rules with Secure Score](/archive/blogs/office365security/mitigating-client-external-forwarding-rules-with-secure-score). <p> More information: [Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)|
|**Modern authentication**|Modern authentication is a prerequisite for using multi-factor authentication (MFA). MFA is recommended for securing access to cloud resources, including email. <p> See these topics: <ul><li>[Enable or disable modern authentication in Exchange Online](/Exchange/clients-and-mobile-in-exchange-online/enable-or-disable-modern-authentication-in-exchange-online)</li><li>[Skype for Business Online: Enable your tenant for modern authentication](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx)</li></ul> <br/> Modern authentication is enabled by default for Office 2016 clients, SharePoint Online, and OneDrive for Business. <p> More information: [How modern authentication works for Office 2013 and Office 2016 client apps](../../enterprise/modern-auth-for-office-2013-and-2016.md)|

## Configure tenant-wide sharing policies in SharePoint admin center

Microsoft recommendations for configuring SharePoint team sites at increasing levels of protection, starting with baseline protection. For more information, see [Policy recommendations for securing SharePoint sites and files](sharepoint-file-access-policies.md).

SharePoint team sites configured at the baseline level allow sharing files with external users by using anonymous access links. This approach is recommended instead of sending files in email.

To support the goals for baseline protection, configure tenant-wide sharing policies as recommended here. Sharing settings for individual sites can be more restrictive than this tenant-wide policy, but not more permissive.

|Area|Includes a default policy|Recommendation|
|---|---|---|
|**Sharing** (SharePoint Online and OneDrive for Business)|Yes|External sharing is enabled by default. These settings are recommended: <ul><li>Allow sharing to authenticated external users and using anonymous access links (default setting).</li><li>Anonymous access links expire in this many days. Enter a number, if desired, such as 30 days.</li><li>Default link type — select Internal (people in the organization only). Users who wish to share using anonymous links must choose this option from the sharing menu.</li></ul> <br/> More information: [External sharing overview](/sharepoint/external-sharing-overview)|

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

- [Microsoft security guidance for political campaigns, nonprofits, and other agile organizations](/microsoft-365/solutions/productivity-illustrations#security-guidance-for-political-campaigns-nonprofits-and-other-agile-organizations) (you can use these recommendations in any environment, especially cloud-only environments)

- [Recommended security policies and configurations for identities and devices](microsoft-365-policies-configurations.md) (these recommendations include help for AD FS environments)
