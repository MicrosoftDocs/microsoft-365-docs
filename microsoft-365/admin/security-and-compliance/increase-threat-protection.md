---
title: "Increase threat protection for Microsoft 365 for business"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- scotvorg
- highpri
- M365-subscription-management
- M365-identity-device-management
- Adm_TOC
ms.custom:
- VSBFY23
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
- adminvideo
search.appverid:
- BCS160
- MET150
description: "Set up Microsoft Defender for Office 365 and safeguard sensitive data against phishing, malware, and other threats."
---
# Increase threat protection for Microsoft 365 for business

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

This article helps you increase the protection in your Microsoft 365 subscription to protect against phishing, malware, and other threats. These recommendations are appropriate for organizations with an increased need for security, like law offices and health care clinics.

Before you begin, check your Office 365 Secure Score. Office 365 Secure Score analyzes your organization's security based on your regular activities and security settings, and assigns a score. Begin by taking note of your current score. To increase your score, complete the actions recommended in this article. The goal isn't to achieve the maximum score, but to be aware of opportunities to protect your environment that don't negatively affect productivity for your users.

For more information, see [Microsoft Secure Score](../../security/defender/microsoft-secure-score.md).

## Watch: Raise the level of protection against malware in mail

Your Office 365 or Microsoft 365 environment includes protection against malware. You can increase this protection by blocking attachments with file types that are commonly used for malware. 

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4OA7Z?autoplay=false]

1. From the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, choose **Show more**, **Admin centers**, and then **Security**.

1. Go to **Email & collaboration** \> **Policies & rules** \> **Threat policies**.

1. From the policies available, choose **Anti-malware**.

To increase malware protection in email:

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-malware** in the **Policies** section.

1. On the **Anti-malware** page, double-click on **Default (Default)**. A flyout appears. 

1. Select **Edit protection settings** at the bottom of the flyout. 

1. under **Protection settings**, select the checkbox next to **Enable the common attachments filter**. The file types that are blocked are listed directly below this control. Make sure that you add these file types:

   `ade, adp, ani, bas, bat, chm, cmd, com, cpl, crt, hlp, ht, hta, inf, ins, isp, job, js, jse, lnk, mda, mdb, mde, mdz, msc, msi, msp, mst, pcd, reg, scr, sct, shs, url, vb, vbe, vbs, wsc, wsf, wsh, exe, pif`

   To add or delete file types, select **Customize file types** at the end of the list.

1. Select **Save.**

For more information, see [Anti-malware protection in EOP](../../security/office-365-security/anti-malware-protection.md).

## Watch: Protect against ransomware

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198018).

Ransomware restricts access to data by encrypting files or locking computer screens. It then attempts to extort money from victims by asking for "ransom," usually in the form of cryptocurrencies like Bitcoin, in exchange for access to data.

To protect against ransomware, create one or more mail flow rules to block file extensions that are commonly used for ransomware. (You added these rules in the [Watch: Raise the level of protection against malware in mail](#watch-raise-the-level-of-protection-against-malware-in-mail) step.) You can also warn users who receive these attachments in email.

In addition to the files that you blocked in the previous step, it's a good practice to create a rule to warn users before opening Office file attachments that include macros. Ransomware can be hidden inside macros, so warn users not to open these files from people they don't know.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWrWGt?autoplay=false]

1. From the admin center at [https://admin.microsoft.com](https://admin.microsoft.com), choose **Exchange** under **Admin centers**.

1. From the menu on the left, choose **mail flow**.
 
1. On the rules tab, choose the arrow next to the plus (+) symbol, and then choose **Create a new rule**.

1. On the **new rule** page, enter a name for your rule, scroll to the bottom, and then choose **More options**.

To create a mail transport rule:

1. Go to the admin center at <https://admin.microsoft.com>, and choose **Admin centers** \> **Exchange**.

2. In the **mail flow** category, select **rules**.

3. Select **+**, and then select **Create a new rule**.

4. Select **More options** at the bottom of the dialog box to see the full set of options.

5. Apply the settings in the following table for the rule. Use the default values for the rest of the settings, unless you want to change them.

6. Select **Save**.

|Setting|Warn users before opening attachments of Office files|
|---|---|
|Name|Anti-ransomware rule: warn users|
|Apply this rule if . . .|Any attachment . . . file extension matches . . .|
|Specify words or phrases|Add these file types:  <br/> dotm, docm, xlsm, sltm, xla, xlam, xll, pptm, potm, ppam, ppsm, sldm|
|Do the following . . .|Notify the recipient with a message|
|Provide message text|Do not open these types of files from people you do not know because they might contain macros with malicious code.|

For more information, see:

- [Ransomware: how to reduce risk](https://www.microsoft.com/security/blog/2020/04/28/ransomware-groups-continue-to-target-healthcare-critical-services-heres-how-to-reduce-risk/)

- [Restore your OneDrive](https://support.microsoft.com/office/fa231298-759d-41cf-bcd0-25ac53eb8a15)

## Stop auto-forwarding for email

Hackers who gain access to a user's mailbox can steal mail by setting the mailbox to automatically forward email. This can happen even without the user's awareness. To prevent this from happening, configure a mail flow rule.

To create a mail transport rule, follow these steps:

1. In the Microsoft 365 admin center, select **Admin centers** \> **Exchange**.

2. In the **mail flow** category, select **rules**.

3. Select **+**, and then select **Create a new rule**.

4. To see all the options, select **More options** at the bottom of the dialog box.

5. Apply the settings in the following table. Use the default values for the rest of the settings, unless you want to change them.

6. Select **Save**.

|Setting|Warn users before opening attachments of Office files|
|---|---|
|Name|Prevent auto forwarding of email to external domains|
|Apply this rule if ...|The sender . . . is external/internal . . . Inside the organization|
|Add condition|The message properties . . . include the message type . . . Auto-forward|
|Do the following ...|Block the message . . . reject the message and include an explanation.|
|Provide message text|Auto-forwarding email outside this organization is prevented for security reasons.|

## Watch: Protect your email from phishing attacks

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198014).

If you've configured one or more custom domains for your Office 365 or Microsoft 365 environment, you can configure targeted anti-phishing protection. Anti-phishing protection, part of Microsoft Defender for Office 365, can help protect your organization from malicious impersonation-based phishing attacks and other phishing attacks. If you haven't configured a custom domain, you don't need to do this.

We recommend that you get started with this protection by creating a policy to protect your most important users and your custom domain.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWvt9r?autoplay=false]

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.

2. Go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section.

3. On the **Anti-phishing** page, select **+ Create**. A wizard launches that steps you through defining your anti-phishing policy.

4. Specify the name, description, and settings for your policy as recommended in the following table. For more details, see [Learn about anti-phishing policy in Microsoft Defender for Office 365 options](../../security/office-365-security/set-up-anti-phishing-policies.md).

5. After you've reviewed your settings, choose **Create this policy** or **Save**, as appropriate.

|Setting or option|Recommended setting|
|---|---|
|Name|Domain and most valuable campaign staff|
|Description|Ensure most important staff and our domain are not being impersonated.|
|Add users to protect|Select **+ Add a condition, The recipient is**. Type user names or enter the email address of the candidate, campaign manager, and other important staff members. You can add up to 20 internal and external addresses that you want to protect from impersonation.|
|Add domains to protect|Select **+ Add a condition, The recipient domain is**. Enter the custom domain associated with your Microsoft 365 subscription, if you defined one. You can enter more than one domain.|
|Choose actions|If email is sent by an impersonated user: Choose **Redirect message to another email address**, and then type the email address of the security administrator; for example, *Alice<span><span>@contoso.com*. If email is sent by an impersonated domain: Choose **Quarantine message**.|
|Mailbox intelligence|By default, mailbox intelligence is selected when you create a new anti-phishing policy. Leave this setting **On** for best results.|
|Add trusted senders and domains|Here you can add your own domain, or any other trusted domains.|
|Applied to|Select **The recipient domain is**. Under **Any of these**, select **Choose**. Select **+ Add**. Select the check box next to the name of the domain, for example, *contoso.<span><span>com*, in the list, and then select **Add**. Select **Done**.|

## Watch: Protect against malicious attachments and files with Safe Attachments

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198019).

People regularly send, receive, and share attachments, such as documents, presentations, spreadsheets, and more. It's not always easy to tell whether an attachment is safe or malicious just by looking at an email message. Microsoft Defender for Office 365, formerly called Microsoft 365 ATP, or Advanced Threat Protection, includes Safe Attachment protection, but this protection is not turned on by default. We recommend that you create a new rule to begin using this protection. This protection extends to files in SharePoint, OneDrive, and Microsoft Teams.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWtn3I?autoplay=false]

1. Go to the [admin center](https://admin.microsoft.com), and select **Setup**.
1. Scroll down to **Increase protection from advanced threats**. Select **View**, **Manage**, and then **ATP safe attachments**.
1. Select your safe attachments rule, and then choose the **Edit** icon.
1. Select **settings**, and then verify that Block is selected.
1. Scroll down. Choose **Enable redirect**, and enter your email address or the address of the person you want to review the blocked attachments.
1. Select **applied to**, and then select your domain name.
1. Choose any additional domains you own (such as your onmicrosoft.com domain) that you would like the rule applied to. Select **add**, and then **OK**.
1. Select **Save**.

Your ATP safe attachments rule has been updated. Now that protection is in place, you won't be able to open a malicious file from Outlook, OneDrive, SharePoint, or Teams. Affected files will have red shields next to them. If someone attempts to open a blocked file, they'll receive a warning message.

After your policy has been in place for a while, visit the Reports page to see what has been scanned.

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, and sign in with your admin account.

2. Go to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-malware** in the **Policies** section.

3. Select **+ Create** to create a new policy.

4. Apply the settings in the following table.

5. After you have reviewed your settings, select **Create this policy** or **Save**, as appropriate.

|Setting or option|Recommended setting|
|---|---|
|Name|Block current and future emails with detected malware.|
|Description|Block current and future emails and attachments with detected malware.|
|Save attachments unknown malware response|Select **Block - Block the current and future emails and attachments with detected malware**.|
|Redirect attachment on detection|Enable redirection (select this box)          Enter the admin account or a mailbox setup for quarantine.          Apply the above selection if malware scanning for attachments times out or error occurs (select this box).|
|Applied to|The recipient domain is . . . select your domain.|

For more information, see [Set up anti-phishing policies in Microsoft Defender for Office 365](../../security/office-365-security/set-up-anti-phishing-policies.md).

## Watch: Protect against phishing attacks with Safe Links

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198201).

Hackers sometimes hide malicious websites in links in email or other files. Safe Links, part of Microsoft Defender for Office 365, can help protect your organization by providing time-of-click verification of web addresses (URLs) in email messages and Office documents. Protection is defined through Safe Links policies.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWvdwy?autoplay=false]

Microsoft Defender for Office 365, formerly called Microsoft 365 ATP, or Advanced Threat Protection, helps protect your business against malicious sites when people click links in Office apps.

1. Go to the [admin center](https://admin.microsoft.com), and select **Setup**.

1. Scroll down to **Increase protection from advanced threats**. Select **Manage**,and then **Safe Links**.

1. Select **Global Settings** and in **Block the following URLs**, enter the URL that you want to block.

We recommend that you do the following:

- Modify the default policy to increase protection.

- Add a new policy targeted to all recipients in your domain.

To set up Safe Links, complete the following steps:

1. Go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, and sign in with your admin account.

2. o to **Email & collaboration** \> **Policies & rules** \> **Threat policies** \> **Anti-malware** in the **Policies** section.

3. Select **+ Create** to create a new policy, or modify the default policy.

To modify the default policy:

1. Double-click the **Default** policy. A flyout appears. 

2. Select **Edit protection settings** at the bottom of the flyout.

3. After modifying the default policy, select **Save**.

|Setting or option|Recommended setting|
|---|---|
|Name|Safe links policy for all recipients in the domain|
|Select the action for unknown potentially malicious URLs in messages|Select **On - URLs will be rewritten and checked against a list of known malicious links when user clicks on the link**.|
|Use Safe Attachments to scan downloadable content|Select this box.|
|Applied to|The recipient domain is . . . select your domain.|

For more information, see [Safe Links](../../security/office-365-security/safe-links.md).

## Go to Intune admin center

1. Sign in to [Azure portal](https://portal.azure.com/).

2. Select **All services** and type in *Intune* in the **Search Box**.

3. Once the results appear, select the start next to **Microsoft Intune** to make it a favorite and easy to find later.

In addition to the admin center, you can use Intune to enroll and manage your organization's devices. For more information, see [Capabilities by enrollment method for Windows devices](/intune/enrollment/enrollment-method-capab) and [Enrollment options for devices managed by Intune](/intune/enrollment-options).
