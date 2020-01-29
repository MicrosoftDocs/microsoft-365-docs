---
title: "Configure the outbound spam policy"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 10/02/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: a44764e9-a5d2-4c67-8888-e7fb871c17c7
ms.collection:
- M365-security-compliance
description: "Outbound spam filtering is always enabled if you use the service for sending outbound email, thereby protecting organizations using the service and their intended recipients."
---

# Configure the outbound spam policy

Outbound spam filtering is always enabled if you use the service for sending outbound email, thereby protecting organizations using the service and their intended recipients. Similar to inbound filtering, outbound spam filtering is comprised of connection filtering and content filtering and allows some specific controls to handle outbound messages. Outbound spam filter policy settings types:

- Default: The default outbound spam filter policy is used to configure company-wide outbound spam filter settings. This policy can not be renamed and is always on.

- Custom: Custom outbound spam filter policies can be granular and applied to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy. You can change the order in which your custom policies run by changing the priority of each custom policy; however, only the highest priority (i.e. number closest to 0) policy will apply if the user matches multiple policies.

> [!NOTE]
> For more information about [Outbound spam controls in Office 365](https://docs.microsoft.com/office365/securitycompliance/outbound-spam-controls). <br><br> Updates to the outbound spam policy is currently being rolled out, with the expected update completed by the end of October 2019. During this time some options may not be available.  For more information see [Office 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?featureid=54125) 

## What do you need to know before you begin?
<a name="sectionSection0"> </a>

Estimated time to complete: 5 minutes

You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Anti-spam entry in the [Feature Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/feature-permissions) topic.

The following procedure can also be performed via remote PowerShell. Use the [Get-HostedOutboundSpamFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-hostedoutboundspamfilterpolicy) cmdlet to review your settings, and the [Set-HostedOutboundSpamFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedoutboundspamfilterpolicy) to edit your outbound spam policy settings. To learn how to use Windows PowerShell to connect to Exchange Online Protection, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell). To learn how to use Windows PowerShell to connect to Exchange Online, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

## Use the Security And Compliance Center (SCC) to edit the default outbound spam policy

Use the following procedure to edit the default outbound spam policy:

### To configure the default outbound spam policy

1. In the SCC, navigate to **Threat Management** \> **Policy** \> **Anti-spam**

2. Expand the **Outbound spam filter policy (always ON)** section and click **Edit policy**.

3. Expand the **Notifications** section and select the following check boxes pertaining to outbound messages, then select **Add people** to add an associated email address or addresses in the accompanying dialog box. (these can be distribution lists if they resolve as valid SMTP destinations):

   - **Send a copy of all suspicious outbound email messages to the following email address or addresses**: These are messages that are marked as spam by the filter (regardless of the SCL rating). They are not rejected by the filter but are routed through the higher risk delivery pool. Separate multiple addresses with a semicolon. Note that the recipients specified will receive the messages as a Blind carbon copy (Bcc) address (the From and To fields are the original sender and recipient).

   - **Send a notification to the following email address when a sender is blocked sending outbound spam**: Separate multiple addresses with a semicolon.

   When a significant amount of spam or other sending anomalies are detected from a particular user, the user is restricted from sending email messages and a notification is sent to the email addresses specified.

   The administrator for the domain, who is specified using this setting, will be informed that outbound messages are blocked for this user.  To see what this notification looks like, see [Sample notification when a sender is blocked sending outbound spam](sample-notification-when-a-sender-is-blocked-sending-outbound-spam.md).

   > [NOTE!] A system alert is also generated indicating the user has been restricted.  To learn more about the alert and how to recover the user see, [Removing a user from the Restricted Users portal after sending spam email](removing-user-from-restricted-users-portal-after-spam.md).

4. Expand the **Recipient limits** section to specify the maximum number of recipients that a user can send to, per hour for internal and external recipients together with the maximum number per day.

    > [NOTE!] The maximum number for any input is 10,000.  For more information see [receiving and sending limits within Exchange online](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#receiving-and-sending-limits)

7. Specify the **action** to take when a user exceeds the specified limits.  The actions that are possible are as follows:
    * **Restrict the user from sending mail till the following day**.  Once any sending limit has been exceeded (internal, external or daily) an alert will be generated for the admin and the user will be unable to send any further email until the following day, based on UTC time. There is no way for the administrator to override this block.

    * **Restrict the user from sending mail**.  Once any sending limit has been exceeded (internal, external or daily) an alert will be generated for the admin and the user will be unable to send any further email until the administrator removes the restriction.  In these cases the user will be listed on the [Restricted Users page](removing-user-from-restricted-users-portal-after-spam.md).  Once removed from the list the user will not be restricted again for that day.

    * **No Action/Alert only**. Once any sending limit has been exceeded (internal, external or daily) an alert will be generated for the admin but no action will be taken to restrict the user.

6. Expand the **Applies to** section and then create a condition-based rule to specify the users, groups, and domains to which to apply this policy. You can create multiple conditions, if they are unique.  Note: that users must meet all the conditions when multiple conditions are specified.  

      * To select users, select **The sender is**. In the subsequent dialog box, select one or more senders from your company from the user picker list, and then click add. To add senders who aren't on the list, type their email addresses, and then click Check names. When you are done making your selections, click ok to return to the main screen.

      * To select groups, select **The sender is a member of**. Then, in the subsequent dialog box, select or specify the groups. Click ok to return to the main screen.

      * To select domains, select **The sender domain is**. Then, in the subsequent dialog box, add the domains. Click ok to return to the main screen.

        You can create exceptions within the rule. For example, you can filter messages from all domains except for a certain domain. Click add exception, and then create your exception conditions similar to the way that you created the other conditions.

        Applying an outbound spam policy to a group is supported only for Mail Enabled Security Groups.

7. Click **save**.

## To create a custom policy for a specific set of users
1. In the SCC, navigate to **Threat Management** \> **Policy** \> **Anti-spam**

2. Click on the **Create an outbound policy** button.

3. Expand the **Notifications** section and select the following check boxes pertaining to outbound messages, then select **Add people** to add an associated email address or addresses in the accompanying dialog box.

4. Expand the **Recipient limits** section to specify the maximum number of recipients that a user can send to, per hour for internal and external recipients and maximum number per day.

7. Specify the **action** to take when a user exceeds the specified limits.

6. Expand the **Applies to** section and create a condition-based rule to specify the users, groups, and domains to which to apply this policy. You can create multiple conditions, if they are unique.  

8. Click **save**

## For more information

[Removing a user from the Restricted Users portal after sending spam email](https://docs.microsoft.com/office365/SecurityCompliance/removing-user-from-restricted-users-portal-after-spam)

[High-risk delivery pool for outbound messages](high-risk-delivery-pool-for-outbound-messages.md)

[Anti-spam protection FAQ](anti-spam-protection-faq.md)
