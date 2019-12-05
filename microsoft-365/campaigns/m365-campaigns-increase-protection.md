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
- M365-Campaigns
ms.custom:
- Adm_O365
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
ms.assetid: 5abfef7b-5957-484a-b06b-a7c55e013e44
description: "Get help with increasing the level of protection in Microsoft 365 Business"
---

# Increase threat protection

This article helps you increase the protection in your Microsoft 365 subscription to protect against phishing, malware, and other threats. These recommendations are appropriate for organizations with an increased need for security, like political campaigns, law offices, and health care clinics. 

Before you begin, check your Office 365 Secure Score. Office 365 Secure Score analyzes your Office 365 organization's security based on your regular activities and security settings and assigns a score. Begin by taking note of your current score. Taking the actions recommended in this article increases your score. The goal isn't to achieve the max score, but to be aware of opportunities to protect your environment that don't negatively affect productivity for your users. 

For more information, see [Microsoft Secure Score](https://docs.microsoft.com/office365/securitycompliance/microsoft-secure-score).


## Raise the level of protection against malware in mail

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

Ransomware restricts access to data by encrypting files or locking computer screens. It then attempts to extort money from victims by asking for "ransom," usually in the form of cryptocurrencies like Bitcoin, in exchange for access to data. 
  
You can protect against ransomware by creating one or more mail flow rules to block file extensions that are commonly used for ransomware (these were added in the [raise the level of protection against malware in mail](#raise-the-level-of-protection-against-malware-in-mail) step), or to warn users who receive these attachments in email.

In addition to the files that you blocked in the previous step, it's also good practice to create a rule to warn users before opening Office file attachments that include macros. Ransomware can be hidden inside macros, so warn users to not open these files from people they don't know.

To create a mail transport rule:
  
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a> and choose **Admin centers** \> **Exchange**.
    
2. In the **mail flow** category, click **rules**.
    
3. Click **+**, and then click **Create a new rule**.
    
4. Click **More options** at the bottom of the dialog box to see the full set of options. 
    
5. Apply the settings in the following table for the rule. Leave the rest of the settings at the default, unless you want to change them.
    
6. Click **Save**.
    
|**Setting**|**Warn users before opening attachments of Office files**||
|:-----|:-----|:-----|
|Name  <br/> |Anti-ransomware rule: warn users  <br/>  |
|Apply this rule if . . .  <br/> |Any attachment . . . file extension matches . . .  <br/> |
|Specify words or phrases  <br/> |Add these file types:  <br/> dotm, docm, xlsm, sltm, xla, xlam, xll, pptm, potm, ppam, ppsm, sldm  <br/>|
|Do the following . . .  <br/> |Notify the recipient with a message  <br/> |
|Provide message text  <br/> |Do not open these types of files from people you do not know because they might contain macros with malicious code.  <br/> |
   
For more information, see:
  
- [How to deal with ransomware](https://go.microsoft.com/fwlink/?linkid=2016501&amp;clcid=0x409)
    
- [Restore your OneDrive](https://support.office.com/article/fa231298-759d-41cf-bcd0-25ac53eb8a15.aspx)
    


## Stop auto-forwarding for email

Hackers who gain access to a user's mailbox can steal your mail by setting the mailbox to automatically forward email. This can happen even without the user's awareness. You can prevent this from happening by configuring a mail flow rule. 
  
To create a mail transport rule, either watch [this short video](https://support.office.com/article/f9d693ba-5c78-47c0-b156-8e461e062aa7) or follow these steps:
  
1. In the Microsoft 365 admin center, click **Admin centers** \> **Exchange**.
    
2. In the **mail flow** category, click **rules**.
    
3. Click **+**, and then click **Create a new rule**.
    
4. Click **More options** at the bottom of the dialog box to see the full set of options. 
    
5. Apply the settings in the following table. Leave the rest of the settings at the default, unless you want to change them.
    
6. Click **Save**.
    
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
    
5. Specify the name, description, and settings for your policy as recommended in the chart below. For more information, see [Learn about ATP anti-phishing policy options](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-anti-phishing-policies). 
    
6. After you've reviewed your settings, choose **Create this policy** or **Save**, as appropriate.
    

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
   
For more information, see [Set up Office 365 ATP anti-phishing policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-anti-phishing-policies).
  
## Protect against malicious attachments, files, and links with Advanced Threat Protection (ATP)

![Banner that point to https://aka.ms/aboutM365preview.](../business/media/m365admincenterchanging.png)

First, make sure, in the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a> that you have the new admin center preview turned on. Turn on the toggle next to the text **The new admin center**.

   ![The new admin center preview on.](media/previewon.png)

If you don't see the **Setup** page with cards in your tenant yet, see how to complete these steps in Office 365 Security &amp; Compliance Center. See [Set up ATP safe attachments in the Security & Compliance Center](#set-up-atp-safe-attachments-in-the-security--compliance-center) and [Set up ATP Safe Links in the Security & Compliance Center](#set-up-atp-safe-links-in-the-security--compliance-center).

1.  In the left nav, choose **Setup**.
2. On the **Setup** page, choose **View** on the **Increase protection from advanced threats** card.</br></br>
    ![Choose View on the Increase protection from advanced threats.](media/startatp.png) 

3. On the **Increase protection from advanced threats** page, choose **Get started**.
4. On the pane that opens, select the check boxes next to **Links and attachments in email**, **Scan files in SharePoint, OneDrive, and Teams**, and **Scan links in Office desktop and Office Online apps** under **Scan items for malicious content**.

      - Under **Links and attachments in email**, Type in All Users, or the specific users whose email you want scanned.

    ![Select all check boxes in Increase protection from advanced threats.](media/setatp.png)
5. Choose **Create policies** to turn on ATP safe attachments and ATP safe links.

### Set up ATP safe attachments in the Security & Compliance Center

People regularly send, receive, and share attachments, such as documents, presentations, spreadsheets, and more. It's not always easy to tell whether an attachment is safe or malicious just by looking at an email message. Office 365 Advanced Threat Protection includes ATP Safe Attachment protection, but this protection is not turned on by default. We recommend that you create a new rule to begin using this protection. This protection extends to files in SharePoint, OneDrive, and Microsoft Teams.
  
To create an ATP safe attachment policy, either watch [this short video](https://support.office.com/article/e7e68934-23dc-4b9c-b714-e82e27a8f8a5), or complete the following steps:
  
1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your admin account. 
    
2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.
    
3. On the Policy page, choose **ATP safe attachments**.
    
4. On the Safe attachments page, apply this protection broadly by selecting the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** check box. 
    
5. Select **+** to create a new policy. 
    
6. Apply the settings in the following table. 
    
7. After you review your settings, choose **Create this policy** or **Save**, as appropriate.
    

|**Setting or option**|**Recommended setting** <br/>|
|:-----|:-----|
|Name  <br/> |Block current and future emails with detected malware.  <br/> |
|Description  <br/> |Block current and future emails and attachments with detected malware.  <br/> |
|Save attachments unknown malware response  <br/> |Select **Block - Block the current and future emails and attachments with detected malware**.  <br/> |
|Redirect attachment on detection  <br/> |Enable redirection (select this box)          Enter the admin account or a mailbox setup for quarantine.          Apply the above selection if malware scanning for attachments times out or error occurs (select this box).  <br/> |
|Applied to  <br/> |The recipient domain is . . . select your domain.  <br/> |
   
For more information, see [Set up Office 365 ATP anti-phishing policies](https://docs.microsoft.com/microsoft-365/security/office-365-security/set-up-anti-phishing-policies).
  
### Set up ATP Safe Links in the Security & Compliance Center

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
  
## Turn on the Unified Audit Log

After you turn on the audit log search in the Security &amp; Compliance center, you can retain the admin and other user activity in the log and search it. 

You must be assigned the Audit Logs role in Exchange Online to turn audit log search on or off in your Microsoft 365 Business subscription. By default, this role is assigned to the Compliance Management and Organization Management role groups on the Permissions page in the Exchange admin center. Global admins in Microsoft 365 are members of this group by default.

1. To turn on the audit log search on, go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a> and then choose **Compliance** under **Admin centers** in the left nav. 
2. On the **Microsoft 365 compliance** page, choose **More resources**, and then **Open** on the **Office 365 security &amp; center** card.

    ![Choose Open on the Office 365 security & compliance cars.](media/gotosecandcomp.png)
3. On the security and compliance page, choose **Search** and then **Audit log search**.
1. On the top of the **Audit log search** page, choose **Turn on auditing**.

After the feature is turned on, you can search for files, folders, and many activities. For more information, see [search the audit log](https://docs.microsoft.com/office365/securitycompliance/search-the-audit-log-in-security-and-compliance).

## Tune-up anonymous sharing settings for SharePoint and OneDrive files and folders

(change default anonymous link expiration to 14 days, change default sharing type to "Specific People")
To change the sharing settings for OneDrive and SharePoint:
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a> and then choose **SharePoint** under **Admin centers** in the left nav. 
2. In the SharePoint admin center, go to **Policies** \> **Sharing**.
3. On the **Sharing** page, under **File and folder links**, select **Specific people**, and under **Advanced settings for "Anyone" links**, select **These links must expire within this many days**, and type in 14 (or another number of days you want to restrict the link lifetime to).

    ![Choose Specific people and set link expiration to 14 days.](media/anyonelinks.png)

## Activity alerts

You can use activity alerts to track admin and user activities and detect malware and data loss prevention incidents in your organization. Your subscription includes a set of default policies, but you can also create custom ones. For more information, see [alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies). For example, if you store an important file in SharePoint that you don't want anyone to share externally, you can create a notification that alerts you if someone does share it.

The following figure shows the default policies that are included with Microsoft 365 Business. <br/><br/>
    ![Default alert policies included with Microsoft 365 Business.](media/alertpolicies.png)

## Disable or manage calendar sharing

You can prevent people in your organization from sharing their calendars, or you can also manage what they can share. For example, you can restrict the sharing to free/busy times only.

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a> and choose **Settings** \> **Services & add-ins**.
2. On the **Services & add-ins** page, choose **Calendar**, and choose whether people in your organization can share their calendars with people outside who have Office 365 or Exchange, or with anyone. 
    If you choose the share with anyone option, you can decide to also only share free/busy information.

3. Choose **Save changes** on the bottom of the page.

    The following figure shows calendar sharing not allowed. </br></br>
    ![Screenshot of showing external calendar sharing as not allowed.](media/nocalendarsharing.png)

    The following figure shows the settings when calendar sharing is allowed with an email link with only free/busy information.

   ![Screenshot of calendar free/busy sharing with anyone.](media/sharefreebusy.png)

If your users are allowed to share their calendars, see [these instructions](https://support.office.com/article/7ecef8ae-139c-40d9-bae2-a23977ee58d5) for how to share from Outlook on the web.
