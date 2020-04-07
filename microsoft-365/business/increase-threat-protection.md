---
title: "Increase threat protection for Microsoft 365 Business"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
ms.custom:
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
search.appverid:
- BCS160
- MET150
description: "Set up Office 365 Advanced Threat Protection and safeguard sensitive data against phishing, malware, and other threats."
---
# Increase threat protection

This article helps you increase the protection in your Microsoft 365 subscription to protect against phishing, malware, and other threats. These recommendations are appropriate for organizations with an increased need for security, like law offices and health care clinics.

Before you begin, check your Office 365 Secure Score. Office 365 Secure Score analyzes your Office 365 organization's security based on your regular activities and security settings, and assigns a score. Begin by taking note of your current score. To increase your score, complete the actions recommended in this article. The goal isn't to achieve the maximum score, but to be aware of opportunities to protect your environment that don't negatively affect productivity for your users. 

For more information, see [Microsoft Secure Score](https://docs.microsoft.com/office365/securitycompliance/microsoft-secure-score).

## Raise the level of protection against malware in mail

Your Office 365 or Microsoft 365 environment includes protection against malware. You can increase this protection by blocking attachments with file types that are commonly used for malware. To increase malware protection in email:
  
1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your admin account credentials. 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy** \> **Anti-Malware**.
    
3. Double-click the default policy to edit this company-wide policy.
    
4. Select **Settings**.
    
5. Under **Common Attachment Types Filter**, select **On**. The file types that are blocked are listed in the window directly below this control. Make sure that you add these file types:
   - ade, adp, ani, bas, bat, chm, cmd, com, cpl, crt, hlp, ht, hta, inf, ins, isp, job, js, jse, lnk, mda, mdb, mde, mdz, msc, msi, msp, mst, pcd, reg, scr, sct, shs, url, vb, vbe, vbs, wsc, wsf, wsh, exe, pif  <br/> 
   
   If necessary, you can add or delete file types later.
    
6. Select **Save.**
    
For more information, see [Anti-malware protection](https://go.microsoft.com/fwlink/?linkid=2015692&amp;clcid=0x409).
  
## Protect against ransomware

Ransomware restricts access to data by encrypting files or locking computer screens. It then attempts to extort money from victims by asking for "ransom," usually in the form of cryptocurrencies like Bitcoin, in exchange for access to data. 
  
To protect against ransomware, create one or more mail flow rules to block file extensions that are commonly used for ransomware. (You added these rules in the [raise the level of protection against malware in mail](#raise-the-level-of-protection-against-malware-in-mail) step.) You can also warn users who receive these attachments in email.

In addition to the files that you blocked in the previous step, it's a good practice to create a rule to warn users before opening Office file attachments that include macros. Ransomware can be hidden inside macros, so warn users not to open these files from people they don't know.

To create a mail transport rule:
  
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a>, and choose **Admin centers** \> **Exchange**.
    
2. In the **mail flow** category, select **rules**.
    
3. Select **+**, and then select **Create a new rule**.
    
4. Select **More options** at the bottom of the dialog box to see the full set of options. 
    
5. Apply the settings in the following table for the rule. Use the default values for the rest of the settings, unless you want to change them.
    
6. Select **Save**.
    
|**Setting**|**Warn users before opening attachments of Office files**||
|:-----|:-----|:-----|
|Name  <br/> |Anti-ransomware rule: warn users  <br/>  |
|Apply this rule if . . .  <br/> |Any attachment . . . file extension matches . . .  <br/> |
|Specify words or phrases  <br/> |Add these file types:  <br/> dotm, docm, xlsm, sltm, xla, xlam, xll, pptm, potm, ppam, ppsm, sldm  <br/>|
|Do the following . . .  <br/> |Notify the recipient with a message  <br/> |
|Provide message text  <br/> |Do not open these types of files from people you do not know because they might contain macros with malicious code.  <br/> |
   
For more information, see:
  
- [How to deal with ransomware](https://go.microsoft.com/fwlink/?linkid=2016501)
    
- [Restore your OneDrive](https://support.office.com/article/fa231298-759d-41cf-bcd0-25ac53eb8a15.aspx)

## Stop auto-forwarding for email

Hackers who gain access to a user's mailbox can steal mail by setting the mailbox to automatically forward email. This can happen even without the user's awareness. To prevent this from happening, configure a mail flow rule. 
  
To create a mail transport rule, either watch [this short video](https://support.office.com/article/f9d693ba-5c78-47c0-b156-8e461e062aa7) or follow these steps:
  
1. In the Microsoft 365 admin center, select **Admin centers** \> **Exchange**.
    
2. In the **mail flow** category, select **rules**.
    
3. Select **+**, and then select **Create a new rule**.
    
4. To see all the options, select **More options** at the bottom of the dialog box. 
    
5. Apply the settings in the following table. Use the default values for the rest of the settings, unless you want to change them.
    
6. Select **Save**.
    
|**Setting**|**Warn users before opening attachments of Office files**|
|:-----|:-----|
|Name  <br/> |Prevent auto forwarding of email to external domains  <br/> |
|Apply this rule if ...  <br/> |The sender . . . is external/internal . . . Inside the organization  <br/> |
|Add condition  <br/> |The message properties . . . include the message type . . . Auto-forward  <br/> |
|Do the following ...  <br/> |Block the message . . . reject the message and include an explanation.  <br/> |
|Provide message text  <br/> |Auto-forwarding email outside this organization is prevented for security reasons.  <br/> |


## Protect your email from phishing attacks

If you've configured one or more custom domains for your Office 365 or Microsoft 365 environment, you can configure targeted anti-phishing protection. ATP anti-phishing protection, part of Office 365 Advanced Threat Protection, can help protect your organization from malicious impersonation-based phishing attacks and other phishing attacks. If you haven't configured a custom domain, you don't need to do this.
  
We recommend that you get started with this protection by creating a policy to protect your most important users and your custom domain. 

To create an ATP anti-phishing policy, watch  [this short training video](https://support.office.com/article/86c425e1-1686-430a-9151-f7176cce4f2c), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com). 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.
    
3. On the **Policy** page, choose **ATP anti-phishing**.
    
4. On the **Anti-phishing** page, select **+ Create**. A wizard launches that steps you through defining your anti-phishing policy.
    
5. Specify the name, description, and settings for your policy as recommended in the following table. For more details, see [Learn about ATP anti-phishing policy options](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-anti-phishing-policies#learn-about-atp-anti-phishing-policy-options). 
    
6. After you've reviewed your settings, choose **Create this policy** or **Save**, as appropriate.
    

|**Setting or option**<br/>|**Recommended setting** <br/>|
|:-----|:-----|
|Name  <br/> |Domain and most valuable campaign staff  <br/> |
|Description  <br/> |Ensure most important staff and our domain are not being impersonated.  <br/> |
|Add users to protect  <br/> |Select **+ Add a condition, The recipient is**. Type user names or enter the email address of the candidate, campaign manager, and other important staff members. You can add up to 20 internal and external addresses that you want to protect from impersonation.  <br/> |
|Add domains to protect  <br/> |Select **+ Add a condition, The recipient domain is**. Enter the custom domain associated with your Microsoft 365 subscription, if you defined one. You can enter more than one domain.  <br/> |
|Choose actions  <br/> |If email is sent by an impersonated user: Choose **Redirect message to another email address**, and then type the email address of the security administrator; for example, *Alice<span><span>@contoso.com*. If email is sent by an impersonated domain: Choose **Quarantine message**.  <br/> |
|Mailbox intelligence  <br/> |By default, mailbox intelligence is selected when you create a new anti-phishing policy. Leave this setting **On** for best results.  <br/> |
|Add trusted senders and domains  <br/> |Here you can add your own domain, or any other trusted domains.  <br/> |
|Applied to  <br/> |Select **The recipient domain is**. Under **Any of these**, select **Choose**. Select **+ Add**. Select the check box next to the name of the domain, for example, *contoso.<span><span>com*, in the list, and then select **Add**. Select **Done**.  <br/> |
  
## Protect against malicious attachments and files with ATP Safe Attachments

People regularly send, receive, and share attachments, such as documents, presentations, spreadsheets, and more. It's not always easy to tell whether an attachment is safe or malicious just by looking at an email message. Office 365 Advanced Threat Protection includes ATP Safe Attachment protection, but this protection is not turned on by default. We recommend that you create a new rule to begin using this protection. This protection extends to files in SharePoint, OneDrive, and Microsoft Teams.
  
To create an ATP safe attachment policy, either watch [this short video](https://support.office.com/article/e7e68934-23dc-4b9c-b714-e82e27a8f8a5), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com), and sign in with your admin account. 
    
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
   
For more information, see [Set up Office 365 ATP anti-phishing policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-anti-phishing-policies).
  


## Protect against phishing attacks with ATP Safe Links

Hackers sometimes hide malicious websites in links in email or other files. Office 365 ATP Safe Links (ATP Safe Links), part of Office 365 Advanced Threat Protection, can help protect your organization by providing time-of-click verification of web addresses (URLs) in email messages and Office documents. Protection is defined through ATP Safe Links policies.
  
We recommend that you do the following:
  
- Modify the default policy to increase protection.
    
- Add a new policy targeted to all recipients in your domain.
    
To set up ATP Safe Links, watch [this short training video](https://support.office.com/article/61492713-53c2-47da-a6e7-fa97479e97fa), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com), and sign in with your admin account. 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.
    
3. On the Policy page, choose **ATP Safe Links**.
    
To modify the default policy:
  
1. On the Safe links page, under **Policies that apply to the entire organization**, select the **Default** policy. 
    
2. Under **Settings that apply to content except email**, select **Office 365 ProPlus, Office for iOS and Android**.
    
3. Select **Save**. 
    
To create a new policy targeted to all recipients in your domain:
  
1. On the Safe links page, under **Policies that apply to the entire organization**, select **+** to create a new policy. 
    
2. Apply the settings listed in the following table.
    
3. Select **Save**. 

|**Setting or option**|**Recommended setting** <br/>|
|:-----|:-----|
|Name  <br/> |Safe links policy for all recipients in the domain  <br/> |
|Select the action for unknown potentially malicious URLs in messages  <br/> |Select **On - URLs will be rewritten and checked against a list of known malicious links when user clicks on the link**.  <br/> |
|Use Safe Attachments to scan downloadable content  <br/> |Select this box.  <br/> |
|Applied to  <br/> |The recipient domain is . . . select your domain.  <br/> |
   
For more information, see [Office 365 ATP safe links](https://go.microsoft.com/fwlink/?linkid=2016138&amp;clcid=0x409).

## Go to Intune admin center

1. Sign in to [Azure portal](https://portal.azure.com/).

2. Select **All services** and type in *Intune* in the **Search Box**.

3. Once the results appear, select the start next to **Microsoft Intune** to make it a favorite and easy to find later.

In addition to the admin center, you can use Intune to enroll and manage your organization's devices. For more information, see [Capabilities by enrollment method for Windows devices](https://docs.microsoft.com/intune/enrollment/enrollment-method-capab) and [Enrollment options for devices managed by Intune](https://docs.microsoft.com/intune/enrollment-options).
