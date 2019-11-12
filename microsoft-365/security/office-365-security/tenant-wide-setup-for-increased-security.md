---
title: "Configure your Office 365 tenant for increased security"
ms.author: bcarter
author: BrendaCarter
manager: laurawi
ms.date: 10/11/2018
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Ent_O365
- Strat_O365_IP
- M365-security-compliance
search.appverid: MET150
ms.assetid: 8d274fe3-db51-4107-ba64-865e7155b355
description: "Walks you through recommended configuration for tenant-wide settings that affect the security of your Office 365 environment. Your security needs might require more or less security. Use these recommendations as a starting point."
---

# Configure your Office 365 tenant for increased security

This topic walks you through recommended configuration for tenant-wide settings that affect the security of your Office 365 environment. Your security needs might require more or less security. Use these recommendations as a starting point.
  
## Check Office 365 Secure Score

Office 365 Secure Score analyzes your Office 365 organization's security based on your regular activities and security settings and assigns a score. Begin by taking note of your current score. Adjusting some tenant-wide settings will increase your score. The goal is not to achieve the max score, but to be aware of opportunities to protect your environment that do not negatively affect productivity for your users. See [Microsoft Secure Score](../mtp/microsoft-secure-score.md).
  
## Tune threat management policies in the Microsoft 365 security center

The Microsoft 365 security center includes capabilities that protect your environment. It also includes reports and dashboards you can use to monitor and take action. Some areas come with default policy configurations. Some areas do not include default policies or rules. Visit these policies under threat management to tune threat management settings for a more secure environment. 
  
|****Area****|****Includes a default policy****|****Recommendation****|
|:-----|:-----|:-----|
|**Anti-phishing** <br/> |Yes  <br/> | If you have a custom domain, create an anti-phishing policy to protect the email accounts of your most valuable users, such as your CEO, and to protect your domain. Review [Set up an anti-phishing policy](set-up-anti-phishing-policies.md) and create a policy using the example as a guide: "Example: Anti-phishing policy to protect a user and a domain."|
|**Anti-Malware Engine** <br/> |Yes  <br/> | Edit the default policy:  <br/> &ensp;&ensp;•   Common Attachment Types Filter — Select On  <br/><br>  You can also create custom malware filter policies and apply them to specified users, groups, or domains in your organization.  <br/> <br> More information:  <br/> &ensp;&ensp;•   [Anti-malware protection](https://technet.microsoft.com/library/jj200669%28v=exchg.150%29.aspx) <br/> &ensp;&ensp;•   [Configure anti-malware policies](https://technet.microsoft.com/library/jj200745%28v=exchg.150%29.aspx) <br/> |
|**ATP Safe Attachments** <br/> |No  <br/> | On the main page for safe attachments, protect files in SharePoint, OneDrive, and Microsoft Teams by checking this box:  <br/>  &ensp;&ensp;•   Turn on ATP for SharePoint, OneDrive, and Microsoft Teams  <br/> <br> Add a new safe attachment policy with these settings:  <br/>  &ensp;&ensp;•   Block — Block the current and future emails and attachments with detected malware (choose this option)  <br/>  &ensp;&ensp;•   Enable redirect — (Check this box and enter an email address, such as an admin or quarantine account)  <br/>  &ensp;&ensp;•   Apply the above selection if malware scanning for attachments times out or error occurs (check this box)  <br/>  &ensp;&ensp;•   Applied To — The recipient domain is (select your domain)  <br/>  <br>More information: [Set up Office 365 ATP safe attachments policies](set-up-atp-safe-attachments-policies.md) <br/> |
|**ATP Safe Links** <br/> |Yes  <br/> | Add this setting to the default policy for the entire organization:  <br/> &ensp;&ensp;•    Use safe links in: Office 365 ProPlus, Office for iOS and Android (select this option).  <br/> <br>Recommended policy for specific recipients:  <br/>  &ensp;&ensp;•   URLs will be rewritten and checked against a list of known malicious links when user clicks on the link (select this option).  <br/>  &ensp;&ensp;•   Use Safe Attachments to scan downloadable content (check this box).  <br/>  &ensp;&ensp;•   Applied To — The recipient domain is (select your domain).  <br/> <br> More information: [Office 365 ATP safe links](atp-safe-links.md).  <br/> |
|**Anti-Spam (Mail filtering)** <br/> |Yes  <br/> | What to watch for:  <br/>  &ensp;&ensp;•   Too much spam — Choose the Custom settings and edit the Default spam filter policy.  <br/>  &ensp;&ensp;•   Spoof intelligence — Review senders that are spoofing your domain. Block or allow these senders.  <br/>  <br>More information: [Office 365 Email Anti-Spam Protection](anti-spam-protection.md).  <br/> |
|***Email Authentication*** <br/> |Yes  <br/> |Email authentication uses a Domain Name System (DNS) to add verifiable information to email messages about the sender of an email. Office 365 sets up email authentication for its default domain (onmicrosoft.com), but Office 365 admins can also use email authentication for custom domains. Three authentication methods are used: <br/> <br> &ensp;&ensp;•   Sender Policy Framework (or SPF).<br/>&ensp;&ensp;&ensp;&ensp;- For setup, see [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md). <br/> &ensp;&ensp;•   DomainKeys Identified Mail (DKIM). <br/> &ensp;&ensp;&ensp;&ensp;- See [Use DKIM for email in your custom domain in Office 365](https://docs.microsoft.com/office365/SecurityCompliance/use-dkim-to-validate-outbound-email). <br>&ensp;&ensp;&ensp;&ensp;- After you've configured DKIM, enable it in the security center.<br/> &ensp;&ensp;•   Domain-based Message Authentication, Reporting, and Conformance (DMARC). <br/> &ensp;&ensp;&ensp;&ensp;- For DMARC setup [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md).<br/>  <br/>
|

> [!NOTE]
> For non-standard deployments of SPF, hybrid deployments, and troubleshooting: [How Office 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md).

## View dashboards and reports in the security and compliance centers

Visit these reports and dashboards to learn more about the health of your environment. The data in these reports will become richer as your organization uses Office 365 services. For now, be familiar with what you can monitor and take action on. For more information, see : [Reports in the Microsoft 365 security and compliance centers](../../compliance/reports-in-security-and-compliance.md).
  
|****Dashboard****|****Description****|
|:-----|:-----|
|[Threat management dashboard](security-dashboard.md)  <br/> |In the **Threat management** section of the security center, use this dashboard to see threats that have already been handled, and as a handy tool for reporting out to business decision makers on what threat investigation and response capabilities have already done to secure your business.  <br/> |
|[Threat Explorer (or real-time detections)](threat-explorer.md)  <br/> |This is also in the **Threat management** section of the security center. If you are investigating or experiencing an attack against your Office 365 tenant, use Explorer (or real-time detections) to analyze threats. Explorer (and the real-time detections report) shows you the volume of attacks over time, and you can analyze this data by threat families, attacker infrastructure, and more. You can also mark any suspicious email for the Incidents list.  <br/> |
|Reports — Dashboard  <br/> |In the **Reports** section of security center, view audit reports for your SharePoint Online and Exchange Online organizations. You can also access Azure Active Directory (Azure AD) user sign-in reports, user activity reports, and the Azure AD audit log from the **View reports** page.  <br/> |
   
![Security center Dashboard](../media/870ab776-36d2-49c7-b615-93b2bc42fce5.png)
  
## Configure additional Exchange Online tenant-wide settings

Many of the controls for security and protection in the Exchange admin center are also included in the security center. You do not need to configure these in both places. Here are a couple of additional settings that are recommended. 
  
|****Area****|****Includes a default policy****|****Recommendation****|
|:-----|:-----|:-----|
|**Mail Flow** (mail flow rules, also known as transport rules)|No|Add a mail flow rule to help protect against ransomware. See "How to use Exchange Transport Rules to track or block emails with file extensions used by ransomware" in this blog article: [How to deal with ransomware](https://blogs.technet.microsoft.com/office365security/how-to-deal-with-ransomware/). <br><br/> See these topics: <br/>•[Protect against ransomware](https://docs.microsoft.com/office365/admin/security-and-compliance/secure-your-business-data?view=o365-worldwide#ransomware)<br/>•[Malware and Ransomware Protection in Office 365](https://docs.microsoft.com/Office365/Enterprise/office-365-malware-and-ransomware-protection)<br/><br/>  Create a mail flow rule to prevent auto-forwarding of email to external domains. For more information, see [Mitigating Client External Forwarding Rules with Secure Score](https://blogs.technet.microsoft.com/office365security/mitigating-client-external-forwarding-rules-with-secure-score/). <br/><br/> More information: [Mail flow rules (transport rules) in Exchange Online](https://technet.microsoft.com/library/jj919238%28v=exchg.150%29.aspx)|
|**Enable modern authentication**|No|Modern authentication in Office 365 is a prerequisite for using multi-factor authentication (MFA). MFA is recommended for securing access to cloud resources, including email. <br/><br/> See these topics:  <br/>• [Enable or disable modern authentication in Exchange Online](https://support.office.com/article/58018196-f918-49cd-8238-56f57f38d662) <br/>• [Skype for Business Online: Enable your tenant for modern authentication](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx) <br/><br/> Modern authentication is enabled by default for Office 2016 clients, SharePoint Online, and OneDrive for Business. <br/><br/> More information: [Using Office 365 modern authentication with Office clients](https://support.office.com/article/776c0036-66fd-41cb-8928-5495c0f9168a)|
   
## Configure tenant-wide sharing policies in SharePoint admin center

Microsoft recommendations for configuring SharePoint team sites at increasing levels of protection, starting with baseline protection. For more information, see [Secure SharePoint Online sites and files](https://docs.microsoft.com/microsoft-365-enterprise/secure-sharepoint-online-sites-and-files)
  
SharePoint team sites configured at the baseline level allow sharing files with external users by using anonymous access links. This approach is recommended instead of sending files in email. 
  
To support the goals for baseline protection, configure tenant-wide sharing policies as recommended here. Sharing settings for individual sites can be more restrictive than this tenant-wide policy, but not more permissive. 
  
|****Area****|****Includes a default policy****|****Recommendation****|
|:-----|:-----|:-----|
|**Sharing** (SharePoint Online and OneDrive for Business)|Yes|External sharing is enabled by default. These settings are recommended: <br/>• Allow sharing to authenticated external users and using anonymous access links (default setting). <br/>  • Anonymous access links expire in this many days. Enter a number, if desired, such as 30 days. <br/>• Default link type — select Internal (people in the organization only). Users who wish to share using anonymous links must choose this option from the sharing menu. <br/><br/> More information: [External sharing overview](https://support.office.com/article/c8a462eb-0723-4b0b-8d0a-70feafe4be85)|
   
SharePoint admin center and OneDrive for Business admin center include the same settings. The settings in either admin center apply to both.
  
## Configure settings in Azure Active Directory

Be sure to visit these two areas in Azure Active Directory to complete tenant-wide setup for more secure environments.
  
### Configure named locations (under conditional access)

If your organization includes offices with secure network access, add the trusted IP address ranges to Azure Active Directory as named locations. This feature helps reduce the number of reported false positives for sign-in risk events. 
  
See: [Named locations in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-named-locations)
  
### Block apps that don't support modern authentication

Multi-factor authentication requires apps that support modern authentication. Apps that do not support modern authentication cannot be blocked by using conditional access rules.
  
For secure environments, be sure to disable authentication for apps that do not support modern authentication. You can do this in Azure Active Directory with a control that is coming soon.
  
In the meantime, use one of the following methods to accomplish this for SharePoint Online and OneDrive for Business:
  
- Use PowerShell, see [Block apps that do not use modern authentication](https://docs.microsoft.com/intune-classic/deploy-use/block-apps-with-no-modern-authentication).
    
- Configure this in the SharePoint admin center on the "device access' page — "Control access from apps that don't use modern authentication." Choose Block. 
    
## Get started with Cloud App Security or Office 365 Cloud App Security

Use Office 365 Cloud App Security to evaluate risk, to alert on suspicious activity, and to automatically take action. Requires Office 365 E5 plan.
  
Or, use Microsoft Cloud App Security to obtain deeper visibility even after access is granted, comprehensive controls, and improved protection for all your cloud applications, including Office 365. 
  
Because this solution recommends the EMS E5 plan, we recommend you start with Cloud App Security so you can use this with other SaaS applications in your environment. Start with default policies and settings.
  
More information:
  
- [Deploy Cloud App Security](https://docs.microsoft.com/cloud-app-security/getting-started-with-cloud-app-security)
    
- [More information about Microsoft Cloud App Security](https://www.microsoft.com/cloud-platform/cloud-app-security)
    
- [What is Cloud App Security?](https://docs.microsoft.com/cloud-app-security/what-is-cloud-app-security)
    
![Cloud App Security dashboard](../media/1fb2aa65-54b8-4746-9f5e-c187d339e9f5.png)
  
## Additional resources

These articles and guides provide additional prescriptive information for securing your Office 365 environment:
  
- [Microsoft security guidance for political campaigns, nonprofits, and other agile organizations](https://docs.microsoft.com/microsoft-365-enterprise/microsoft-security-guidance) (you can use these recommendation in any environment, especially cloud-only environments) 
    
- [Recommended security policies and configurations for identities and devices](https://docs.microsoft.com/microsoft-365-enterprise/microsoft-365-policies-configurations) (these recommendations include help for AD FS environments) 
    

