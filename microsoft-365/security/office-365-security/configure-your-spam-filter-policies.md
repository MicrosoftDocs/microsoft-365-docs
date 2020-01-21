---
title: "Configure your spam filter policies"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 12/05/2018
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 316544cb-db1d-4c25-a5b9-c73bbcf53047
ms.collection:
- M365-security-compliance
description: "Basic spam filter settings include selecting the action to take on messages that are identified as spam."
---

# Configure your spam filter policies
Spam filter settings include selecting the action to take on messages that are identified as spam. Spam filter policy settings are applied to inbound messages only and there are two types:

  - Default: The default spam filter policy is used to configure company-wide spam filter settings. This policy can not be renamed and is always on.

  - Custom: Custom spam filter policies can be granular and applied to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy. You can change the order in which your custom policies run by changing the priority of each custom policy; however, only the highest priority (i.e. number closest to 0) policy will apply if multiple policies meet the criteria set.

## What you must know before you begin

Estimated time to complete: 30 minutes

You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the Anti-spam entry in the [Feature Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions) topic.

The spam filter policy settings are all in the Security & Compliance Center (SCC). More information can be found in [Go to the Office 365 Security & Compliance Center](../../compliance/go-to-the-securitycompliance-center.md). The Anti-spam settings page is inside the SCC \> **Threat management** \> **Policy** \> **Anti-spam** section.

## Access and create spam filter policies

Inside the Anti-spam settings page, the default settings can be viewed in the Standard tab. To change these settings, switch to the **Custom** tab. You will be able to see and configure some of the default settings inside the Default spam filter policy.

To enable more custom settings or to add custom policies, change the **Custom settings** selector to **On** to enable custom spam filter policies. You can view existing custom policies by expanding them from here.

## Configure custom spam filter policy settings

1. Select and click **Edit policy** if you are editing a policy; otherwise, click on **Create a policy**

2. You can specify a unique name for custom policies but you can not rename the default one. Optionally, you can also specify a more detailed description for any policy.

3. Under the **Spam and bulk actions** section:

   - Select an action for the **Spam**, **High confidence spam**, **High confidence phishing email**, **Phishing email**, and **Bulk email** types. The available values are:

     - **Move message to Junk Email folder**: Sends the message to the Junk Email folder of the specified recipients. This is the default action for spam, high confidence spam, and bulk.

       > [!NOTE]
       > In order for this action to work with on-premises mailboxes, you must configure two Exchange mail flow rules (also known as  transport rules) on your on-premises servers to detect spam headers added by EOP. For details, see how to [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md). This step is critical for standalone Exchange Online Protection (EOP) customers.

     - **Add X-header**: Sends the message to the specified recipients, but adds X-header text to the message header in order to identify the message as spam. Using this text as an identifier, you can optionally create inbox rules or use a downstream device to act on the message. The default X-header text is **This message appears to be spam**.
     
       You can customize the X-header text by using the **Add this X-header text** input box. If you customize the X-header text, be aware of the following conditions:

       - If you specify only the header in the format \< *header*  \>, where there are no spaces within the \<  *header*  \>, a colon will be appended to the custom text, followed by the default text. For example, if you specify "This-is-my-custom-header," the X-header text will appear as "This-is-my-custom-header: This message appears to be spam."

       - If you include spaces within the custom header text, or if you add the colon yourself (such as "X This is my custom header" or "X-This-is-my-custom-header:"), the X-header text reverts to the default as "X-This-Is-Spam: This message appears to be spam."

       - You can't specify the header text in the format \<*header*\>:\<*value*\>. If you do this, both values before and after the colon will be ignored, and the default X-header text appears instead: "X-This-Is-Spam: This message appears to be spam."

       - Be aware that mails with this X-header might be still moved to mailbox Junk Mail folder due to mailbox junk configuration. You can change this by disabling this feature with Set-MailboxJunkEmailConfiguration.

   - **Prepend subject line with text:** Sends the message to the intended recipients but prepends the subject line with the text that you specify in the **Prefix subject line with this text** input box. Using this text as an identifier, you can optionally create rules to filter or route the messages as necessary.
    
     > [!NOTE]
     > The message will still be routed to the Junk Email folder.

   - **Redirect message to email address:** Sends the message to a designated email address instead of to the intended recipients. Specify the "redirect" address in the **Redirect to this email address** input box.

   - **Delete message:** Deletes the entire message, including all attachments.

   - **Quarantine message:** Sends the message to quarantine instead of to the intended recipients. This is the default action for phish. If you select this option, in the **Retain spam for (days)** input box, specify the number of days during which the spam message will be quarantined. (It will automatically be deleted after the time elapses. The default value is 30 days which is the maximum value. The minimum value is 1 day.)

     > [!TIP]
     > For information about how admins can manage email messages in the quarantine, see [Quarantine](quarantine.md) and [Find and release quarantined messages as an administrator](find-and-release-quarantined-messages-as-an-administrator.md). <br/><br/> For information about how to configure spam notification messages for users, see [Configure end-user spam notifications in EOP](configure-end-user-spam-notifications-in-eop.md) or [Configure end-user spam notifications in Exchange Online](configure-end-user-spam-notifications-in-exchange-online.md).

   - Configure **Select the threshold** to determine how you want to treat bulk email as spam, based on the Bulk Complaint Level (BCL) of the message. You can choose a threshold setting from 1 to 9, where 1 indicates most bulk email as spam, and 9 allows the most bulk email to be delivered. The service then performs the configured action, such as sending the message to the recipient's Junk Email folder. See [Bulk Complaint Level values](bulk-complaint-level-values.md) and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md) for more details.

4. On the **Spam Properties** page, you can set the Test mode options for the policy by configuring:

   - **None** Take no test mode action on the message. This is the default.

   - **Add the default test X-header text** Selecting this option sends the message to the specified recipients, but also adds a special X-header to the message to identify it as having matched a specific advanced spam filtering option.

   - **Send a Bcc message to this address** Selecting this option sends a blind carbon copy of the message to the email address that you specify in the input box. <br/><br/>For more information about the advanced spam filtering options, including descriptions about each option and the X-header text that is associated with each one, see [Advanced spam filtering  options](advanced-spam-filtering-asf-options.md).

5. For custom policies only, click the **Apply to** menu item, and then create a condition-based rule to specify the users, groups, and domains to which to apply this policy. You can create multiple conditions, if they are unique.

   - To select users, select **The recipient is**. In the subsequent dialog box, select one or more senders from your company from the user picker list, and then click **add**. To add senders who aren't on the list, type their email addresses, and then click **Check names**. In this box, you can also use wildcards for multiple email addresses (for example: \*@ _domainname_). When you are done making your selections, click **ok** to return to the main screen.

   - To select groups, select **The recipient is a member of**. Then, in the subsequent dialog box, select or specify the groups. Click **ok** to return to the main screen.

   - To select domains, select **The recipient domain is**. Then, in the subsequent dialog box, add the domains. Click **ok** to return to the main screen.

     You can create exceptions within the rule. For example, you can filter messages from all domains except for a certain domain. Click **add exception**, and then create your exception conditions similar to the way that you created the other conditions.

     Applying a spam policy to a group is supported only for **Mail Enabled Security Groups**.

6. Click **Save**. A summary of your policy settings appears in the right pane.

You can't disable or delete the default policy, and custom policies always take precedence over the default policy. For custom policies, you can select or clear the check boxes in the **ENABLED** column to enable or disable them. By default, all policies are enabled. To delete a custom policy, select the policy, click **Delete** ![Delete icon](../media/ITPro-EAC-DeleteIcon.gif), and then confirm that you want to delete the policy.

> [!TIP]
> You can change the priority (running order) of your custom policies by clicking the ![Up Arrow Icon](../media/ITPro-EAC-UpArrowIcon.gif) up arrow and ![Down Arrow Icon](../media/ITPro-EAC-DownArrowIcon.gif) down arrow. The policy that has a **PRIORITY** of **0** will run first, followed by **1**, then **2**, and so on.

## Use PowerShell to configure spam filter policies

You can also configure and apply spam filter policies in PowerShell. To learn how to use Windows PowerShell to connect to Exchange Online, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To learn how to use Windows PowerShell to connect to Exchange Online Protection, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- [Get-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-hostedcontentfilterpolicy) View your spam filter settings.

- [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterpolicy) Edit your spam filter settings.

- [New-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/new-hostedcontentfilterpolicy) Create a new custom spam filter policy.

- [Remove-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/remove-hostedcontentfilterpolicy) Delete a custom spam filter policy.

To apply a custom spam filter policy to users, groups, and/or domains, use the [New-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/new-hostedcontentfilterrule) cmdlet (to create a new filter rule that can be applied to custom policies) or the [Set-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterrule) cmdlet (to edit an existing filter rule that can be applied to custom policies). Use the [Enable-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/enable-hostedcontentfilterrule) cmdlet or the [Disable-HostedContentFilterRule](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/disable-hostedcontentfilterrule) cmdlet to enable or disable the rule applied to the policy.

## How do you know this worked?

To ensure that spam is being properly detected and acted upon, you can send a GTUBE message through the service. Similar to the EICAR antivirus test file, GTUBE provides a test by which you can verify that the service is detecting incoming spam. A GTUBE message should always be detected as spam by the spam filter, and the actions that are performed upon the message should match your configured settings.

Include the following GTUBE text in a mail message on a single line, without any spaces or line breaks:

```text
XJS*C4JDBQADN1.NSBN3*2IDNEN*GTUBE-STANDARD-ANTI-UBE-TEST-EMAIL*C.34X
```

## Fine tuning your spam filter policy to prevent false positives and false negatives

You can enable advanced spam filtering techniques if you want to pursue a more aggressive approach to spam filtering. For general spam settings that apply to the whole organization, take a look at [How to prevent good email from being marked as spam in Office 365](prevent-email-from-being-marked-as-spam.md) or [Block email spam with the Office 365 spam filter to prevent false negative issues](reduce-spam-email.md). These are helpful if you have administrator-level control and you want to prevent false positives or false negatives.

## Allow/Block Lists

There will be times when our filters will miss the message or it takes time for our systems to catch up to it. In this cases, the antispam policy has an Allow and a Block list available to override the current verdict. This option should only be used sparingly since lists can become unmanageable and temporarily since our filtering stack should be doing what it is supposed to be doing.

Both Allow and Block lists are configured as part of any customer Anti-spam policy:

1. On the **Allow lists** section, you can specify entries, such as senders or domains, that will always be delivered to the inbox. Email from these entries is not processed by the spam filter.

   - Add trusted senders to the Sender allow list. Click **Edit**![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the sender addresses you wish to allow. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Allow Lists** page.

   - Add trusted domains to the Domain allow list. Click **Edit**![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the domains you wish to allow. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Allow Lists** page.

   > [!CAUTION]
   > You should never list accepted domains (domains that you own) or common domains like Microsoft.com, office.com, etc to an Allow list. This would easily allow spoofers to send mail unrestricted into your organization.

2. On the **Block Lists** page, you can specify entries, such as senders or domains, that will always be marked as spam. The service will apply the configured high confidence spam action on email that matches these entries.

   - Add unwanted senders to the Sender block list. Click **Edit**![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the sender addresses you want to block. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Block Lists** page.

   - Add unwanted domains to the Domain block list. Click **Edit**![Add Icon](../media/ITPro-EAC-AddIcon.gif), and then in the selection dialog box, add the domains you want to block. You can separate multiple entries using a semi-colon or a new line. Click **Save** to return to the **Block Lists** page.

> [!TIP]
> There may be situations where your organization may not agree with the verdict the service provides. In this case, you may want to keep the Allow or Block listing permanent. However, if you are going to put a domain on the Allow list for extended periods of time, you should tell the sender to make sure that their domain is authenticated and set to DMARC reject if it is not.

## For more information
<a name="sectionSection6"> </a>

[Setting up your domain for DMARC](use-dmarc-to-validate-email.md)

[Quarantine](quarantine.md)

[How to prevent good email from being marked as spam in Office 365](prevent-email-from-being-marked-as-spam.md)

[How to reduce spam email in Office 365](reduce-spam-email.md)

[Spam confidence levels](spam-confidence-levels.md)
