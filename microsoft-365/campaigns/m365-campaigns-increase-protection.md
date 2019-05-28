---
title: "Increase threat protection"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
ms.assetid: 5abfef7b-5957-484a-b06b-a7c55e013e44
description: "Get help with increasing the level of protection in your subscription"
---

# Increase threat protection

This article helps you increase the protection in your Microsoft 365 subscription to protect against phishing, malware, and other threats. These recommendations are appropriate for organizations with an increased need for security, like political campaigns, law offices, and health care clinics. 

- [Raise the level of protection against malware in mail](#raise-the-level-of-protection-against-malware-in-mail)
- [Protect against ransomware](#protect-against-ransomware)
- [Stop auto-forwarding for email](#stop-auto-forwarding-for-email)
- [Protect your email from phishing attacks](#protect-your-email-from-phishing-attacks)
- [Protect against malicious attachments and files with ATP Safe Attachments](#protect-against-malicious-attachments-and-files-with-atp-safe-attachments)
- [Protect against phishing attacks with ATP Safe Links](#protect-against-phishing-attacks-with-atp-safe-links)
- Enable the Unified Audit Log
- Tune-up anonymous sharing settings (change default anonymous link expiration to 14 days, change default sharing type to "Specific People")
- Create an activity email alert for changes in privileged role membership (role elevation)
- Enable SPO retention policy for 30 days
- Disable Anonymous Calendar Details "Internet Publish"

Before you begin, check your Office 365 Secure Score. Office 365 Secure Score analyzes your Office 365 organization's security based on your regular activities and security settings and assigns a score. Begin by taking note of your current score. Taking the actions recommended in this article increases your score. The goal is not to achieve the max score, but to be aware of opportunities to protect your environment that do not negatively affect productivity for your users. 

For more information, see [Microsoft Secure Score](https://docs.microsoft.com/en-us/office365/securitycompliance/microsoft-secure-score).


## Raise the level of protection against malware in mail
<a name="malware"> </a>

Your Office 365 or Microsoft 365 environment includes protection against malware, but you can increase this protection by blocking attachments with file types that are commonly used for malware. To bump up malware protection in email:
  
1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your admin account credentials. 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy** \> **Anti-Malware**.
    
3. Double-click the default policy to edit this company-wide policy.
    
4. Click **Settings**.
    
5. Under **Common Attachment Types Filter**, select **On**. The file types that are blocked are listed in the window directly below this control.  Make sure you add these filetypes:
   - ade, adp, ani, bas, bat, chm, cmd, com, cpl, crt, hlp, ht, hta, inf, ins, isp, job, js, jse, lnk, mda, mdb, mde, mdz, msc, msi, msp, mst, pcd, reg, scr, sct, shs, url, vb, vbe, vbs, wsc, wsf, wsh, exe, pif  <br/> You can add or delete file types later, if needed.
    
6. Click **Save.**
    
For more information, see [Anti-malware protection](https://go.microsoft.com/fwlink/?linkid=2015692&amp;clcid=0x409).
  


## Protect against ransomware
<a name="ransomware"> </a>

Ransomware restricts access to data by encrypting files or locking computer screens. It then attempts to extort money from victims by asking for "ransom," usually in form of cryptocurrencies like Bitcoin, in exchange for access to data. 
  
You can protect against ransomware by creating one or more mail flow rules to block file extensions that are commonly used for ransomware (these were added in the [raise the level of protection against malware in mail](#raise-the-level-of-protection-against-malware-in-mail) step), or to warn users who receive these attachments in email.

In addition to the files that you blocked in the previous step, it is also good practice to create a rule to warn users before opening Office file attachments that include macros. Ransomware can be hidden inside macros, so we'll warn users to not open these files from people they do not know.

To create a mail transport rule:
  
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a> and choose **Admin centers** \> **Exchange**.
    
2. In the **mail flow** category, click **rules**.
    
3. Click **+**, and then click **Create a new rule**.
    
4. Click **More options** at the bottom of the dialog box to see the full set of options. 
    
5. Apply the settings in the following table for the rule. Leave the rest of the settings at the default, unless you want to change these.
    
6. Click **Save**.
    
|**Setting**|**Warn users before opening attachments of Office files**||
|:-----|:-----|:-----|
|Name  <br/> |Anti-ransomware rule: warn users  <br/>  |
|Apply this rule if . . .  <br/> |Any attachment . . . file extension matches . . .  <br/> |
|Specify words or phrases  <br/> |Add these file types:  <br/> dotm, docm, xlsm, sltm, xla, xlam, xll, pptm, potm, ppam, ppsm, sldm  <br/>|
|Do the following . . .  <br/> |Notify the recipient with a message  <br/> |
|Provide message text  <br/> |Do not open these type of files from people you do not know because they might contain macros with malicious code.  <br/> |
   
For more information, see:
  
- [How to deal with ransomware](https://go.microsoft.com/fwlink/?linkid=2016501&amp;clcid=0x409)
    
- [Restore your OneDrive](https://support.office.com/article/fa231298-759d-41cf-bcd0-25ac53eb8a15.aspx)
    


## Stop auto-forwarding for email
<a name="forwarding"> </a>

Hackers who gain access to a user's mailbox can steal your mail by setting the mailbox to automatically forward email. This can happen even without the user's awareness. You can prevent this from happening by configuring a mail flow rule. 
  
To create a mail transport rule, either watch [this short video](https://support.office.com/article/f9d693ba-5c78-47c0-b156-8e461e062aa7) or follow these steps:
  
1. In the Microsoft 365 admin center, click **Admin centers** \> **Exchange**.
    
2. In the **mail flow** category, click **rules**.
    
3. Click **+**, and then click **Create a new rule**.
    
4. Click **More options** at the bottom of the dialog box to see the full set of options. 
    
5. Apply the settings in the following table. Leave the rest of the settings at the default, unless you want to change these.
    
6. Click **Save**.
    
|**Setting**|**Warn users before opening attachments of Office files**|
|:-----|:-----|
|Name  <br/> |Prevent auto forwarding of email to external domains  <br/> |
|Apply this rule if ...  <br/> |The sender . . . is external/internal . . . Inside the organization  <br/> |
|Add condition  <br/> |The message properties . . . include the message type . . . Auto-forward  <br/> |
|Do the following ...  <br/> |Block the message . . . reject the message and include an explanation.  <br/> |
|Provide message text  <br/> |Auto-forwarding email outside this organization is prevented for security reasons.  <br/> |


## Protect your email from phishing attacks
<a name="phishing"> </a>

If you've configured one or more custom domains for your Office 365 or Microsoft 365 environment, you can configure targeted anti-phishing protection. ATP anti-phishing protection, part of Office 365 Advanced Threat Protection, can help protect your organization from malicious impersonation-based phishing attacks and other phishing attacks. If you haven't configured a custom domain, you do not need to do this.
  
We recommend that you get started with this protection by creating a policy to protect your most important users and your custom domain. 

  
To create an ATP anti-phishing policy, watch  [this short training video](https://support.office.com/article/86c425e1-1686-430a-9151-f7176cce4f2c), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com). 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.
    
3. On the **Policy** page, choose **ATP anti-phishing**.
    
4. On the **Anti-phishing** page, select **+ Create**. A wizard launches that steps you through defining your anti-phishing policy.
    
5. Specify the name, description, and settings for your policy as recommended in the chart below. See [Learn about ATP anti-phishing policy options](https://go.microsoft.com/fwlink/?linkid=2016505&amp;clcid=0x409) for more details. 
    
6. After you have reviewed your settings, choose **Create this policy** or **Save**, as appropriate.
    

|**Setting or option**<br/>|**Recommended setting** <br/>|
|:-----|:-----|
|Name  <br/> |Domain and most valuable campaign staff  <br/> |
|Description  <br/> |Ensure most important staff and our domain are not being impersonated.  <br/> |
|Add users to protect  <br/> |Select **+ Add a condition, The recipient is**. Type user names or enter the email address of the candidate, campaign manager, and other important staff members. You can add up to 20 internal and external addresses that you want to protect from impersonation.  <br/> |
|Add domains to protect  <br/> |Select **+ Add a condition, The recipient domain is**. Enter the custom domain associated with your Microsoft 365 subscription, if you defined one. You can enter more than one domain.  <br/> |
|Choose actions  <br/> |If email is sent by an impersonated user: Choose **Redirect message to another email address**, and then type the email address of the security administrator; for example, *Alice<span><span>@contoso.com*.          If email is sent by an impersonated domain: Choose **Quarantine message**.  <br/> |
|Mailbox intelligence  <br/> |By default, mailbox intelligence is selected when you create a new anti-phishing policy. Leave this setting **On** for best results.  <br/> |
|Add trusted senders and domains  <br/> |Here you can add your own domain, or any other trusted domains.  <br/> |
|Applied to  <br/> |Select **The recipient domain is**. Under **Any of these**, select **Choose**. Select **+ Add**. Select the check box next to the name of the domain, for example, *contoso.<span><span>com*, in the list, and then select **Add**. Select **Done**.  <br/> |
   
For more information, see [Set up Office 365 ATP anti-phishing policies](https://go.microsoft.com/fwlink/?linkid=2016505&amp;clcid=0x409).
  
## Protect against malicious attachments and files with ATP Safe Attachments
<a name="atp"> </a>

People regularly send, receive, and share attachments, such as documents, presentations, spreadsheets, and more. It's not always easy to tell whether an attachment is safe or malicious just by looking at an email message. Office 365 Advanced Threat Protection includes ATP Safe Attachment protection, but this protection is not turned on by default. We recommend that you create a new rule to begin using this protection. This protection extends to files in SharePoint, OneDrive, and Microsoft Teams.
  
To create an ATP safe attachment policy, either watch [this short video](https://support.office.com/article/e7e68934-23dc-4b9c-b714-e82e27a8f8a5), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your admin account. 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.
    
3. On the Policy page, choose **ATP safe attachments**.
    
4. On the Safe attachments page, apply this protection broadly by selecting the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** check box. 
    
5. Select **+** to create a new policy. 
    
6. Apply the settings in the following table. 
    
7. After you have reviewed your settings, choose **Create this policy** or **Save**, as appropriate.
    

|**Setting or option**|**Recommended setting** <br/>|
|:-----|:-----|
|Name  <br/> |Block current and future emails with detected malware.  <br/> |
|Description  <br/> |Block current and future emails and attachments with detected malware.  <br/> |
|Save attachments unknown malware response  <br/> |Select **Block - Block the current and future emails and attachments with detected malware**.  <br/> |
|Redirect attachment on detection  <br/> |Enable redirection (select this box)          Enter the admin account or a mailbox setup for quarantine.          Apply the above selection if malware scanning for attachments times out or error occurs (select this box).  <br/> |
|Applied to  <br/> |The recipient domain is . . . select your domain.  <br/> |
   
For more information, see [Set up Office 365 ATP anti-phishing policies](https://go.microsoft.com/fwlink/?linkid=2016505&amp;clcid=0x409).
  


## Protect against phishing attacks with ATP Safe Links
<a name="phishingatp"> </a>

Hackers sometimes hide malicious websites in links in email or other files. Office 365 ATP Safe Links (ATP Safe Links), part of Office 365 Advanced Threat Protection, can help protect your organization by providing time-of-click verification of web addresses (URLs) in email messages and Office documents. Protection is defined through ATP Safe Links policies.
  
We recommend that you do the following:
  
- Modify the default policy to increase protection.
    
- Add a new policy targeted to all recipients in your domain.
    
To set up ATP Safe Links, watch [this short training video](https://support.office.com/article/61492713-53c2-47da-a6e7-fa97479e97fa), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your admin account. 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.
    
3. On the Policy page, choose **ATP Safe Links**.
    
To modify the default policy:
  
1. On the Safe links page, under **Policies that apply to the entire organization**, select the **Default** policy. 
    
2. Under **Settings that apply to content except email**, select **Office 365 ProPlus, Office for iOS and Android**.
    
3. Click **Save**. 
    
To create a new policy targeted to all recipients in your domain:
  
1. On the Safe links page, under **Policies that apply to the entire organization**, click **+** to create a new policy. 
    
2. Apply the settings listed in the following table.
    
3. Click **Save**. 

|**Setting or option**|**Recommended setting** <br/>|
|:-----|:-----|
|Name  <br/> |Safe links policy for all recipients in the domain  <br/> |
|Select the action for unknown potentially malicious URLs in messages  <br/> |Select **On - URLs will be rewritten and checked against a list of known malicious links when user clicks on the link**.  <br/> |
|Use Safe Attachments to scan downloadable content  <br/> |Select this box.  <br/> |
|Applied to  <br/> |The recipient domain is . . . select your domain.  <br/> |
   
For more information, see [Office 365 ATP safe links](https://go.microsoft.com/fwlink/?linkid=2016138&amp;clcid=0x409).
  
## Enable the Unified Audit Log


