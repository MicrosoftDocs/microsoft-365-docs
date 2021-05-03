---
title: "Data loss prevention and Microsoft Teams"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MET150
description: "You can now apply DLP policies to Microsoft Teams chats and channels. Read this article to learn more about how it works."
---

# Data loss prevention and Microsoft Teams

> [!NOTE]
> Data loss prevention capabilities were recently added to Microsoft Teams chat and channel messages for users licensed for Office 365 E5/A5, Microsoft 365 E5/A5, Microsoft 365 Information Protection and Governance or Office 365 Advanced Compliance. Office 365 and Microsoft 365 E3 include DLP protection for SharePoint Online, OneDrive, and Exchange Online. This also includes files that are shared through Teams because Teams uses SharePoint Online and OneDrive to share files.
Support for DLP protection in Teams Chat requires E5.
To learn more about licensing requirements, see [Microsoft 365 Tenant-Level Services Licensing Guidance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance).

## Overview of DLP for Microsoft Teams

Recently, [data loss prevention](dlp-learn-about-dlp.md) capabilities were extended to include Microsoft Teams chat and channel messages, **including private channel messages**. 

> [!IMPORTANT]
> DLP currently applies only to the actual messages in the chat or channel thread. Activity notifications -- which include a short message preview and appear based on a user's notification settings -- are **not** included in Teams DLP at this time. Any sensitive information present in the part of the message that appears in the preview will remain visible in the notification even after the DLP policy has been applied and removed sensitive information the message itself.

If your organization has DLP, you can now define policies that prevent people from sharing sensitive information in a Microsoft Teams channel or chat session. Here are some examples of how this protection works:

- **Example 1: Protecting sensitive information in messages**. Suppose that someone attempts to share sensitive information in a Teams chat or channel with guests (external users). If you have a DLP policy defined to prevent this, messages with sensitive information that are sent to external users are deleted. This happens automatically, and within seconds, according to how your DLP policy is configured.

    > [!NOTE]
    > DLP for Microsoft Teams blocks sensitive content when shared with Microsoft Teams users who have:<br/>- [guest access](/MicrosoftTeams/guest-access) in teams and channels; or<br/>- [external access](/MicrosoftTeams/manage-external-access) in meetings and chat sessions. <p>DLP for external chat sessions will only work if both the sender and the receiver are in Teams Only mode and using [Microsoft Teams native federation](/microsoftteams/manage-external-access). DLP for Teams does not block messages in [interop](/microsoftteams/teams-and-skypeforbusiness-coexistence-and-interoperability#interoperability-of-teams-and-skype-for-business) with Skype for Business or non-native federated chat sessions.

- **Example 2: Protecting sensitive information in documents**. Suppose that someone attempts to share a document with guests in a Microsoft Teams channel or chat, and the document contains sensitive information. If you have a DLP policy defined to prevent this, the document won't open for those users. Note that in this case, your DLP policy must include SharePoint and OneDrive in order for protection to be in place. (This is an example of DLP for SharePoint that shows up in Microsoft Teams, and therefore requires that users are licensed for Office 365 DLP (included in Office 365 E3), but does not require users to be licensed for Office 365 Advanced Compliance.)

## Policy tips help educate users

Similar to how DLP works in [Exchange, Outlook, Outlook on the web](data-loss-prevention-policies.md#policy-evaluation-in-exchange-online-outlook-and-outlook-on-the-web), [SharePoint Online, OneDrive for Business sites](data-loss-prevention-policies.md#policy-evaluation-in-onedrive-for-business-and-sharepoint-online-sites), and [Office desktop clients](data-loss-prevention-policies.md#policy-evaluation-in-the-office-desktop-programs), policy tips appear when an action conflicts with a DLP policy. Here's an example of a policy tip:

![Blocked message notification in Teams](../media/dlp-teams-blockedmessage-notification.png)

In this case, the sender attempted to share a social security number in a Microsoft Teams channel. The **What can I do?** link opens a dialog box that provides options for the sender to resolve the issue. Notice that in this case, the sender can opt to override the policy, or notify an admin to review and resolve it.

![Options to resolve blocked message](../media/dlp-teams-blockedmessage-possibleactions.png)

In your organization, you can choose to allow users to override a DLP policy. And, when you configure your DLP policies, you can use the default policy tips, or [customize policy tips](#to-customize-policy-tips) for your organization.

Returning to our example, where a sender shared a social security number in a Teams channel, here's what the recipient saw:

> [!div class="mx-imgBorder"]
> ![Message blocked](../media/dlp-teams-blockedmessage-notification-to-user.png)

### To customize policy tips

To perform this task, you must be assigned a role that has permissions to edit DLP policies. To learn more, see [Permissions](data-loss-prevention-policies.md#permissions).

1. Go to the Security & Compliance Center ([https://protection.office.com](https://protection.office.com)) and sign in.

2. Choose **Data loss prevention** > **Policy**.

3. Select a policy, and next to **Policy settings**, choose **Edit**.

4. Either create a new rule, or edit an existing rule for the policy.

    > [!div class="mx-imgBorder"]
    > ![Editing a rule for a policy](../media/dlp-teams-editrule.png)

5. On the **User notifications** tab, select **Customize the email text** and/or **Customize the policy tip text** options.

    > [!div class="mx-imgBorder"]
    > ![Customize user notifications and policy tips](../media/dlp-teams-editrule-usernotifications.png)<br/>  

6. Specify the text you want to use for email notifications and/or policy tips, and then choose **Save**.

7. On the **Policy settings** tab, choose **Save**.

Allow approximately one hour for your changes to work their way through your data center and sync to user accounts.
 <!-- why are these syncing to user accounts? -->

## Add Microsoft Teams as a location to existing DLP policies

To perform this task, you must be assigned a role that has permissions to edit DLP policies. To learn more, see [Permissions](data-loss-prevention-policies.md#permissions).

1. Go to the Security & Compliance Center ([https://protection.office.com](https://protection.office.com)) and sign in.

2. Choose **Data loss prevention** > **Policy**.

3. Select a policy, and look at the values under **Locations**. If you see **Teams chat and channel messages**, you're all set. If you don't, click **Edit**.

    > [!div class="mx-imgBorder"]
    > ![Locations for existing policy](../media/dlp-teams-editexistingpolicy.png)

4. In the **Status** column, turn the policy on for **Teams chat and channel messages**.

    > [!div class="mx-imgBorder"]
    > ![DLP for Teams chats and channels](../media/dlp-teams-addteamschatschannels.png)

5. On the **Choose locations** tab, keep the default setting of all accounts, or select **Let me choose specific locations**. You can specify:

    1. up to 1000 individual accounts to include or exclude
    1. distribution lists and security groups to include or exclude. 
    <!-- 1. the shared mailbox of a shared channel. **This is a public preview feature.**--> 
    
6. Then choose **Next**.

7. Click **Save**.

Allow approximately one hour for your changes to work their way through your data center and sync to user accounts.
<!-- again, why user accounts? -->

## Define a new DLP policy for Microsoft Teams

To perform this task, you must be assigned a role that has permissions to edit DLP policies. To learn more, see [Permissions](data-loss-prevention-policies.md#permissions).

1. Go to the Security & Compliance Center ([https://protection.office.com](https://protection.office.com)) and sign in.

2. Choose **Data loss prevention** > **Policy** > **+ Create a policy**.

3. Choose a [template](data-loss-prevention-policies.md#dlp-policy-templates), and then choose **Next**.

    In our example, we chose the U.S. Personally Identifiable Information Data template.

    > [!div class="mx-imgBorder"]
    > ![Privacy template for DLP policy](../media/dlp-teams-createnewpolicy-template.png)<br/>

4. On the **Name your policy** tab, specify a name and description for the policy, and then choose **Next**.

5. On the **Choose locations** tab, keep the default setting of all accounts, or select **Let me choose specific locations**. You can specify:

    1. up to 1000 individual accounts to include or exclude
    1. distribution lists and security groups to include or exclude. **This is a public preview feature.**
    <!-- 1. the shared mailbox of a shared channel. **This is a public preview feature.**-->  

    ![DLP policy locations](../media/dlp-teams-selectlocationsnewpolicy.png)

    > [!NOTE]
    > If you want to make sure documents that contain sensitive information are not shared inappropriately in Teams, make sure **SharePoint sites** and **OneDrive accounts** are turned on, along with **Teams chat and channel messages**.

6. On the **Policy settings** tab, under **Customize the type of content you want to protect**, keep the default simple settings, or choose **Use advanced settings**, and then choose **Next**. If you choose advanced settings, you can create or edit rules for your policy. (To get help with this, see [Simple settings vs. advanced settings](data-loss-prevention-policies.md#simple-settings-vs-advanced-settings).)

7.  On the **Policy settings** tab, under **What do you want to do if we detect sensitive info?**, review the settings. (Here's where you can choose to keep default [policy tips and email notifications](use-notifications-and-policy-tips.md), or customize them.)

    > [!div class="mx-imgBorder"]
    > ![DLP policy settings with tips and notifications](../media/dlp-teams-policysettings-tipsemails.png)

    When you're finished reviewing or editing settings, choose **Next**.

8. On the **Policy settings** tab, under **Do you want to turn on the policy or test things out first?**, choose whether to turn the policy on, [test it first](data-loss-prevention-policies.md#roll-out-dlp-policies-gradually-with-test-mode), or keep it turned off for now, and then choose **Next**.

    > [!div class="mx-imgBorder"]
    > ![Specify whether to turn the policy on](../media/dlp-teams-policysettings-turnonnow.png)

9. On the **Review your settings** tab, review the settings for your new policy. Choose **Edit** to make changes. When you're finished, choose **Create**.

Allow approximately one hour for your new policy to work its way through your data center and sync to user accounts.

## Prevent external access to sensitive documents

To ensure that SharePoint documents that contain sensitive information cannot be accessed by external guests either from SharePoint or Teams by default, select the following:

- You can ensure that documents are protected until DLP scans and marks them as safe to share by [marking new files as sensitive by default](/sharepoint/sensitive-by-default).

- Recommended DLP policy structure

    - **Conditions**
        - Content contains any of these sensitive information types: [Select all that applies]
        
        - Content is shared from Microsoft 365 with people outside my organization
        
          > [!div class="mx-imgBorder"]
          > ![DLP conditions to detect external sharing of sensitive content](../media/dlp-teams-external-sharing/external-condition.png)

    - **Actions**
        - Restrict access to the content for external users
        
        - Notify users with email and policy tips
        
        - Send incident reports to the Administrator
        
        > [!div class="mx-imgBorder"]
        > ![DLP action to block external sharing of sensitive content](../media/dlp-teams-external-sharing/external-action.png)

DLP policy in action when attempting to share a document in SharePoint that contains sensitive information with an external guest:

> [!div class="mx-imgBorder"]
> ![External sharing blocked](../media/dlp-teams-external-sharing/external-sharing-blocked.png)


DLP policy in action when guest attempts to open a document in Teams with block external:

> [!div class="mx-imgBorder"]
> ![External access blocked](../media/dlp-teams-external-sharing/external-access-blocked.png)

## Related articles

[Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)

[Send email notifications and show policy tips for DLP policies](use-notifications-and-policy-tips.md)
