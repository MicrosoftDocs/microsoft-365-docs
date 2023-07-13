---
title: Configure anti-phishing policies in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
ms.assetid:
ms.collection:
  - m365-security
  - tier2
ms.custom:
description: Admins can learn how to create, modify, and delete the advanced anti-phishing policies that are available in organizations with Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 7/5/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure anti-phishing policies in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365, anti-phishing policies provide the following types of protection:

- The same anti-spoofing protection that's available in Exchange Online Protection (EOP). For more information, see [Spoof settings](anti-phishing-policies-about.md#spoof-settings).
- Anti-impersonation protection from other types of phishing attacks. For more information, see [Exclusive settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

The default anti-phishing policy automatically applies to all recipients. For greater granularity, you can also create custom anti-phishing policies that apply to specific users, groups, or domains in your organization.

You configure anti-phishing policies in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

For anti-phishing policy procedures in organizations without Defender for Office 365, see [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo):
    - _Add, modify, and delete policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to policies_: Membership in the **Global Reader**, **Security Reader**, or **View-Only Organization Management** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- For our recommended settings for anti-phishing policies in Defender for Office 365, see [Anti-phishing policy in Defender for Office 365 settings](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365).

- Allow up to 30 minutes for a new or updated policy to be applied.

- For information about where anti-phishing policies are applied in the filtering stack, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Use the Microsoft 365 Defender portal to create anti-phishing policies

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

2. On the **Anti-phishing** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to open the new anti-phishing policy wizard.

3. On the **Policy name** page, configure these settings:
   - **Name**: Enter a unique, descriptive name for the policy.
   - **Description**: Enter an optional description for the policy.

   When you're finished on the **Policy name** page, select **Next**.

4. On the **Users, groups, and domains** page, identify the internal recipients that the policy applies to (recipient conditions):
   - **Users**: The specified mailboxes, mail users, or mail contacts.
   - **Groups**:
     - Members of the specified distribution groups or mail-enabled security groups (dynamic distribution groups aren't supported).
     - The specified Microsoft 365 Groups.
   - **Domains**: All recipients in the specified [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization.

   Click in the appropriate box, start typing a value, and select the value that you want from the results. Repeat this process as many times as necessary. To remove an existing value, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

   For users or groups, you can use most identifiers (name, display name, alias, email address, account name, etc.), but the corresponding display name is shown in the results. For users or groups, enter an asterisk (\*) by itself to see all available values.

   Multiple values in the same condition use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   - **Exclude these users, groups, and domains**: To add exceptions for the internal recipients that the policy applies to (recipient exceptions), select this option and configure the exceptions. The settings and behavior are exactly like the conditions.

   > [!IMPORTANT]
   > Multiple different types of conditions or exceptions are not additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
   >
   > - Users: romain@contoso.com
   > - Groups: Executives
   >
   > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
   >
   > Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

   When you're finished on the **Users, groups, and domains** page, select **Next**.

5. On the **Phishing threshold & protection** page, configure the following settings:

   - **Phishing email threshold**: Use the slider to select one of the following values:
     - **1 - Standard** (This is the default value.)
     - **2 - Aggressive**
     - **3 - More aggressive**
     - **4 - Most aggressive**

     For more information about this setting, see [Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

   - **Impersonation**: These settings are conditions for the policy that identify specific senders to look for (individually or by domain) in the From address of inbound messages. For more information, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

     - **Enable users to protect**: This setting isn't selected by default. To turn on user impersonation protection, select the check box, and then select the **Manage (nn) sender(s)** link. You identify the action for user impersonation detections on the next page.

       You identify the internal and external senders to protect by the combination of their display name and email address.

       Select :::image type="icon" source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **Add user**. In the **Add user** flyout that opens, do the following steps:

       - **Internal users**: Click in the **Add a valid email** box or start typing the user's email address. Select the email address in the **Suggested contacts** dropdown list that appears. The user's display name is added to the **Add a name** box (which you can change). When you're finished selecting the user, select **Add**.

       - **External users**: Type the external user's full email address in the **Add a valid email** box, and then select the email address in the **Suggested contacts** dropdown list that appears. The email address is also added in the **Add a name** box (which you can change to a display name).

       The users you added are listed on the **Add user** flyout by **Name** and **Email address**. To remove a user, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: next to the entry.

       When you're finished on the **Add user** flyout, select **Add**.

       Back on the **Manage senders for impersonation protection** flyout, the users you selected are listed by **Display name** and **Sender email address**.

       To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

       Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the flyout.

       To add entries, select :::image type="icon" source="../../media/m365-cc-sc-add-internal-icon.png" border="false"::: **Add user** and repeat the previous steps.

       To remove entries, do either of the following steps:

       - Select one or more entries by selecting the round check box that appears in the blank area next to the display name value.
       - Select all entries at once by selecting the round check box that appears in the blank area next to the **Display name** column header.

       When you're finished on the **Manage senders for impersonation protection** flyout, select **Done** to return to the **Phishing threshold & protection** page.

       > [!NOTE]
       > You can specify a maximum of 350 users for user impersonation protection in each anti-phishing policy.
       >
       > User impersonation protection does not work if the sender and recipient have previously communicated via email. If the sender and recipient have never communicated via email, the message can be identified as an impersonation attempt.
       >
       > You might get the error "The email address already exists" if you try to add a user to user impersonation protection when that email address is already specified for user impersonation protection in another anti-phishing policy. This error occurs only in the Defender portal. You won't get the error if you use the corresponding _TargetedUsersToProtect_ parameter in the **New-AntiPhishPolicy** or **Set-AntiPhishPolicy** cmdlets in Exchange Online PowerShell.

     - **Enable domains to protect**: This setting isn't selected by default. To turn on domain impersonation protection, select the check box, and then configure one or both of the following settings that appear. You identify the action for domain impersonation detections on the next page.

       - **Include the domains I own**: To turn on this setting, select the check box. To view the domains that you own, select **View my domains**.

       - **Include custom domains**: To turn on this setting, select the check box, and then select the **Manage (nn) custom domain(s)** link. In the **Manage custom domains for impersonation protection** flyout that opens, do the following steps:

       Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add domains**.

       In the **Add custom domains** flyout that appears, click in the **Domain** box, enter a domain value, and then select the value that's displayed below the box. Repeat this step as many times as necessary.

       The domains you added are listed on the **Add custom domains** flyout. To remove the domain, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the value.

       When you're finished on the **Add custom domains** flyout, select **Add domains**

       Back on the **Manage custom domains for impersonation protection** flyout, the domains you entered are listed.

       To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

       Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the flyout.

       To add entries, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add domains** and repeat the previous steps.

       To remove entries, do either of the following steps:

       - Select one or more entries by selecting the round check box that appears in the blank area next to the domain value.
       - Select all entries at once by selecting the round check box that appears in the blank area next to the **Domains** column header.

       When you're finished on the **Manage custom domains for impersonation protection** flyout, select **Done** to return to the **Phishing threshold & protection** page.

     - **Add trusted senders and domains**: Specify impersonation protection exceptions for the policy by selecting **Manage (nn) trusted sender(s) and domain(s)**. On the **Manage custom domains for impersonation protection** flyout that opens, you enter senders on the **Sender** tab and domains on the **Domain** tab.

       > [!NOTE]
       > The maximum number of trusted sender and domain entries is 1024.

       - **Sender** tab: Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add senders**.

         In the **Add trusted senders** flyout that opens, enter an email address in the **Add a valid email** box, and then select **Add**. Repeat this step as many times as necessary. To remove an existing entry, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: for the entry.

         When you're finished on the **Add trusted senders** flyout, select **Add**.

         Back on the **Sender** tab, the senders you entered are listed.

         To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

         Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the flyout.

         To add entries, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add senders** and repeat the previous steps.

         To remove entries, do either of the following steps:

         - Select one or more entries by selecting the round check box that appears in the blank area next to the sender value.
         - Select all entries at once by selecting the round check box that appears in the blank area next to the **Sender** column header.

         When you're finished on the **Sender** tab of the **Manage custom domains for impersonation protection** flyout, select the **Domain** tab to add domains, or select **Done** to return to the **Phishing threshold & protection** page.

         > [!TIP]
         > If Microsoft 365 system messages from the following senders are identified as impersonation attempts, you can add the senders to the trusted senders list:
         >
         > - `noreply@email.teams.microsoft.com`
         > - `noreply@emeaemail.teams.microsoft.com`
         > - `no-reply@sharepointonline.com`
         > - `noreply@planner.office365.com`

       - **Domain** tab: Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add domains**. In the **Add trusted domains** flyout that opens, enter domain in the **Domain** box, and then select the domain in dropdown list that appears. Repeat this step as many times as necessary. To remove an existing entry, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: for the entry.

         When you're finished on the **Add trusted domains** flyout, select **Add domains**.

         Back on the **Domain** tab, the domains you added are now listed.

         To change the list of entries from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

         Use the :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Search** box to find entries on the tab.

         To add entries, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add domains** and repeat the previous steps.

         To remove entries, do either of the following steps:

         - Select one or more entries by selecting the round check box that appears in the blank area next to the domain value.
         - Select all entries at once by selecting the round check box that appears in the blank area next to the **Domain** column header.

         When you're finished on the **Domain** tab of the **Manage custom domains for impersonation protection** flyout, select the **Sender** tab to add senders, or select **Done** to return to the **Phishing threshold & protection** page.

         > [!NOTE]
         > Trusted domain entries don't include subdomains of the specified domain. You need to add an entry for each subdomain.

       When you're finished on the **Manage custom domains for impersonation protection** flyout, select **Done**to return to the **Phishing threshold & protection** page.

     - **Enable mailbox intelligence**: This setting is selected by default, and we recommend that you leave it selected. To turn off mailbox intelligence, clear the check box.

     - **Enable intelligence for impersonation protection**: This setting is available only if **Enable mailbox intelligence** is selected. This setting allows mailbox intelligence to take action on messages that are identified as impersonation attempts. You specify the action to take for mailbox intelligence detections on the next page.

       > [!NOTE]
       > Mailbox intelligence protection doesn't work if the sender and recipient have previously communicated via email. If the sender and recipient have never communicated via email, the message can be identified as an impersonation attempt by mailbox intelligence.

       To turn on mailbox intelligence protection, select the check box. You specify the action for mailbox intelligence detections on the next page.

   - **Spoof** section: Use the **Enable spoof intelligence** check box to turn spoof intelligence on or off. This setting is selected by default, and we recommend that you leave it selected. You specify the action to take on messages from blocked spoofed senders on the next page.

     To turn off spoof intelligence, clear the check box.

     > [!NOTE]
     > You don't need to turn off spoof intelligence if your MX record doesn't point to Microsoft 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

   When you're finished on the **Phishing threshold & protection** page, select **Next**.

6. On the **Actions** page, configure the following settings:

   - **Message actions** section: Configure the following actions:

     - **If a message is detected as user impersonation**: This setting is available only if you selected **Enable users to protect** on the previous page. Select one of the following actions in the dropdown list:
       - **Don't apply any action** (default)
       - **Redirect the message to other email addresses**
       - **Move the message to the recipients' Junk Email folders**
       - **Quarantine the message**: If you select this action, an **Apply quarantine policy** box appears where you select the quarantine policy that applies to messages that are quarantined by user impersonation protection. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information about quarantine policies, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

         If you don't select a quarantine policy, the default quarantine policy for user impersonation detections is used (DefaultFullAccessPolicy). When you later view or edit the anti-phishing policy settings, the quarantine policy name is shown.

       - **Deliver the message and add other addresses to the Bcc line**
       - **Delete the message before it's delivered**

     - **If the message is detected as an impersonated domain**: This setting is available only if you selected **Enable domains to protect** on the previous page. Select one of the following actions in the dropdown list:
       - **Don't apply any action** (default)
       - **Redirect the message to other email addresses**
       - **Move the message to the recipients' Junk Email folders**
       - **Quarantine the message**: If you select this action, an **Apply quarantine policy** box appears where you select the quarantine policy that applies to messages that are quarantined by domain impersonation protection.

         If you don't select a quarantine policy, the default quarantine policy for domain impersonation detections is used (DefaultFullAccessPolicy). When you later view or edit the anti-phishing policy settings, the quarantine policy name is shown.

       - **Deliver the message and add other addresses to the Bcc line**
       - **Delete the message before it's delivered**

     - **If mailbox intelligence detects an impersonated user**: This setting is available only if you selected **Enable intelligence for impersonation protection** on the previous page. Select one of the following actions in the dropdown list:
       - **Don't apply any action** (default)
       - **Redirect the message to other email addresses**
       - **Move the message to the recipients' Junk Email folders**
       - **Quarantine the message**: If you select this action, an **Apply quarantine policy** box appears where you select the quarantine policy that applies to messages that are quarantined by mailbox intelligence protection.

         If you don't select a quarantine policy, the default quarantine policy for mailbox intelligence detections is used (DefaultFullAccessPolicy). When you later view or edit the anti-phishing policy settings, the quarantine policy name is shown.

       - **Deliver the message and add other addresses to the Bcc line**
       - **Delete the message before it's delivered**

     - **Honor DMARC record policy when the message is detected as spoof**: This setting is selected by default, and allows you to control what happens to messages where the sender fails explicit [DMARC](email-authentication-dmarc-configure.md) checks and the DMARC policy is set to `p=quarantine` or `p=reject`:
       - **If the message is detected as spoof and DMARC Policy is set as p=quarantine**: Select one of the following actions:
         - **Quarantine the message**: This is the default value.
         - **Move message to the recipients' Junk Email folders**

       - **If the message is detected as spoof and DMARC Policy is set as p=reject**: Select one of the following actions:
         - **Quarantine the message**
         - **Reject the message**: This is the default value.

       For more information, see [Spoof protection and sender DMARC policies](anti-phishing-policies-about.md#spoof-protection-and-sender-dmarc-policies).

     - **If the message is detected as spoof by spoof intelligence**: This setting is available only if you selected **Enable spoof intelligence** on the previous page. Select one of the following actions in the dropdown list for messages from blocked spoofed senders:
       - **Move the message to the recipients' Junk Email folders** (default)
       - **Quarantine the message**: If you select this action, an **Apply quarantine policy** box appears where you select the quarantine policy that applies to messages that are quarantined by spoof intelligence protection.

         If you don't select a quarantine policy, the default quarantine policy for spoof intelligence detections is used (DefaultFullAccessPolicy). When you later view or edit the anti-phishing policy settings, the quarantine policy name is shown.

   - **Safety tips & indicators** section: Configure the following settings:
     - **Show first contact safety tip**: For more information, see [First contact safety tip](anti-phishing-policies-about.md#first-contact-safety-tip).
     - **Show user impersonation safety tip**: This setting is available only if you selected **Enable users to protect** on the previous page.
     - **Show domain impersonation safety tip**: This setting is available only if you selected **Enable domains to protect** on the previous page.
     - **Show user impersonation unusual characters safety tip** This setting is available only if you selected **Enable users to protect** or **Enable domains to protect** on the previous page.
     - **Show (?) for unauthenticated senders for spoof**: This setting is available only if you selected **Enable spoof intelligence** on the previous page. Adds a question mark (?) to the sender's photo in the From box in Outlook if the message doesn't pass SPF or DKIM checks **and** the message doesn't pass DMARC or [composite authentication](email-authentication-about.md#composite-authentication). This setting is selected by default.
     - **Show "via" tag**: This setting is available only if you selected **Enable spoof intelligence** on the previous page. Adds tag named via (chris@contoso.com via fabrikam.com) to the From address if it's different from the domain in the DKIM signature or the **MAIL FROM** address. This setting is selected by default.

     To turn on a setting, select the check box. To turn it off, clear the check box.

   When you're finished on the **Actions** page, select **Next**.

7. On the **Review** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review** page, select **Submit**.

8. On the **New anti-phishing policy created** page, you can select the links to view the policy, view anti-phishing policies, and learn more about anti-phishing policies.

   When you're finished on the **New anti-phishing policy created** page, select **Done**.

   Back on the **Anti-phishing** page, the new policy is listed.

## Use the Microsoft 365 Defender portal to view anti-phishing policy details

In the Microsoft 365 Defender portal, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. Or, to go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

On the **Anti-phishing** page, the following properties are displayed in the list of anti-phishing policies:

- **Name**
- **Status**: Values are:
  - **Always on** for the default anti-phishing policy.
  - **On** or **Off** for other anti-spam policies.
- **Priority**: For more information, see the [Set the priority of custom anti-spam policies](#use-the-microsoft-365-defender-portal-to-set-the-priority-of-custom-anti-phishing-policies) section.
To change the list of policies from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the policies by **Time range** (creation date) or **Status**.

Use the :::image type="icon" source="../../media/search-icon.png" border="false"::: **Search** box and a corresponding value to find specific anti-phishing policies.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of policies to a CSV file.

Select a policy by clicking anywhere in the row other than the check box next to the name to open the details flyout for the policy.

> [!TIP]
> To see details about other anti-phishing policies without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

## Use the Microsoft 365 Defender portal to take action on anti-phishing policies

1. In the Microsoft 365 Defender portal, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. Or, to go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

2. On the **Anti-phishing** page, select the anti-phishing policy by using either of the following methods:

   - Select the policy from the list by selecting the check box next to the name. The following actions are available in the :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** dropdown list that appears:
     - **Enable selected policies**.
     - **Disable selected policies**.
     - **Delete selected policies**.

     :::image type="content" source="../../media/anti-phishing-policies-main-page.png" alt-text="The Anti-phishing page with a policy selected and the More actions control expanded." lightbox="../../media/anti-phishing-policies-main-page.png":::

   - Select the policy from the list by clicking anywhere in the row other than the check box next to the name. Some or all following actions are available in the details flyout that opens:
     - Modify policy settings by selecting **Edit** in each section (custom policies or the default policy)
     - :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** or :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** (custom policies only)
     - :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** or :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** (custom policies only)
     - :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** (custom policies only)

     :::image type="content" source="../../media/anti-phishing-policies-details-flyout.png" alt-text="The details flyout of a custom anti-phishing policy." lightbox="../../media/anti-phishing-policies-details-flyout.png":::

The actions are described in the following subsections.

### Use the Microsoft 365 Defender portal to modify anti-phishing policies

After you select the default anti-phishing policy or a custom policy by clicking anywhere in the row other than the check box next to the name, the policy settings are shown in the details flyout that opens. Select **Edit** in each section to modify the settings within the section. For more information about the settings, see the [create anti-phishing policies](#use-the-microsoft-365-defender-portal-to-create-anti-phishing-policies) section earlier in this article.

For the default policy, you can't modify the name of the policy, and there are no recipient filters to configure (the policy applies to all recipients). But, you can modify all other settings in the policy.

For the anti-phishing policies named **Standard Preset Security Policy** and **Strict Preset Security Policy** that are associated with [preset security policies](preset-security-policies.md), you can't modify the policy settings in the details flyout. Instead, you select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **View preset security policies** in the details flyout to go to the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies> to modify the preset security policies.

### Use the Microsoft 365 Defender portal to enable or disable custom anti-phishing policies

You can't disable the default anti-phishing policy (it's always enabled).

You can't enable or disable the anti-phishing policies that are associated with Standard and Strict preset security policies. You enable or disable the Standard or Strict preset security policies on the **Preset security policies** page at <https://security.microsoft.com/presetSecurityPolicies>.

After you select an enabled custom anti-phishing policy (the **Status** value is **On**), use either of the following methods to disable it:

- **On the Anti-phishing page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Disable selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn off** at the top of the flyout.

After you select a disabled custom anti-phishing policy (the **Status** value is **Off**), use either of the following methods to enable it:

- **On the Anti-phishing page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Enable selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-turn-on-off-icon.png" border="false"::: **Turn on** at the top of the flyout.

On the **Anti-phishing** page, the **Status** value of the policy is now **On** or **Off**.

### Use the Microsoft 365 Defender portal to set the priority of custom anti-phishing policies

Anti-phishing policies are processed in the order that they're displayed on the **Anti-phishing** page:

- The anti-phishing policy named **Strict Preset Security Policy** that's associated with the Strict preset security policy is always applied first (if the Strict preset security policy is [enabled](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users)).
- The anti-phishing policy named **Standard Preset Security Policy** that's associated with the Standard preset security policy is always applied next (if the Standard preset security policy is enabled).
- Custom anti-phishing policies are applied next in priority order (if they're enabled):
  - A lower priority value indicates a higher priority (0 is the highest).
  - By default, a new policy is created with a priority that's lower than the lowest existing custom policy (the first is 0, the next is 1, etc.).
  - No two policies can have the same priority value.
- The default anti-phishing policy always has the priority value **Lowest**, and you can't change it.

Anti-phishing protection stops for a recipient after the first policy is applied (the highest priority policy for that recipient). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

After you select the custom anti-phishing policy by clicking anywhere in the row other than the check box next to the name, you can increase or decrease the priority of the policy in the details flyout that opens:

- The custom policy with the **Priority** value **0** on the **Anti-Phishing** page has the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** action at the top of the details flyout.
- The custom policy with the lowest priority (highest **Priority** value; for example, **3**) has the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** action at the top of the details flyout.
- If you have three or more policies, the policies between **Priority** 0 and the lowest priority have both the :::image type="icon" source="../../media/m365-cc-sc-increase-icon.png" border="false"::: **Increase priority** and the :::image type="icon" source="../../media/m365-cc-sc-decrease-icon.png" border="false"::: **Decrease priority** actions at the top of the details flyout.

When you're finished in the policy details flyout, select **Close**.

Back on the **Anti-phishing** page, the order of the policy in the list matches the updated **Priority** value.

### Use the Microsoft 365 Defender portal to remove custom anti-phishing policies

You can't remove the default anti-phishing policy or the anti-phishing policies named **Standard Preset Security Policy** and **Strict Preset Security Policy** that are associated with [preset security policies](preset-security-policies.md).

After you select the custom anti-phishing policy, use either of the following methods to remove it:

- **On the Anti-phishing page**: Select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> **Delete selected policies**.
- **In the details flyout of the policy**: Select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete policy** at the top of the flyout.

Select **Yes** in the warning dialog that opens.

On the **Anti-phishing** page, the deleted policy is no longer listed.

## Use Exchange Online PowerShell to configure anti-phishing policies

In PowerShell, the basic elements of an anti-phishing policy are:

- **The anti-phish policy**: Specifies the phishing protections to enable or disable, the actions to apply for those protections, and other options.
- **The anti-phish rule**: Specifies the priority and recipient filters (who the policy applies to) for the associated anti-phish policy.

The difference between these two elements isn't obvious when you manage anti-phishing policies in the Microsoft 365 Defender portal:

- When you create a policy in the Defender portal, you're actually creating an anti-phish rule and the associated anti-phish policy at the same time using the same name for both.
- When you modify a policy in the Defender portal, settings related to the name, priority, enabled or disabled, and recipient filters modify the anti-phish rule. All other settings modify the associated anti-phish policy.
- When you remove a policy in the Defender portal, the anti-phish rule and the associated anti-phish policy are removed at the same time.

In Exchange Online PowerShell, the difference between anti-phish policies and anti-phish rules is apparent. You manage anti-phish policies by using the **\*-AntiPhishPolicy** cmdlets, and you manage anti-phish rules by using the **\*-AntiPhishRule** cmdlets.

- In PowerShell, you create the anti-phish policy first, then you create the anti-phish rule, which identifies the associated policy that the rule applies to.
- In PowerShell, you modify the settings in the anti-phish policy and the anti-phish rule separately.
- When you remove an anti-phish policy from PowerShell, the corresponding anti-phish rule isn't automatically removed, and vice versa.

### Use PowerShell to create anti-phishing policies

Creating an anti-phishing policy in PowerShell is a two-step process:

1. Create the anti-phish policy.
2. Create the anti-phish rule that specifies the anti-phish policy that the rule applies to.

 **Notes**:

- You can create a new anti-phish rule and assign an existing, unassociated anti-phish policy to it. An anti-phish rule can't be associated with more than one anti-phish policy.
- You can configure the following settings on new anti-phish policies in PowerShell that aren't available in the Microsoft 365 Defender portal until after you create the policy:
  - Create the new policy as disabled (_Enabled_ `$false` on the **New-AntiPhishRule** cmdlet).
  - Set the priority of the policy during creation (_Priority_ _\<Number\>_) on the **New-AntiPhishRule** cmdlet).
- A new anti-phish policy that you create in PowerShell isn't visible in the Microsoft 365 Defender portal until you assign the policy to an anti-phish rule.

#### Step 1: Use PowerShell to create an anti-phish policy

To create an anti-phish policy, use this syntax:

```PowerShell
New-AntiPhishPolicy -Name "<PolicyName>" [-AdminDisplayName "<Comments>"] <Additional Settings>
```

This example creates an anti-phish policy named Research Quarantine with the following settings:

- The policy is enabled (we aren't using the _Enabled_ parameter, and the default value is `$true`).
- The description is: Research department policy.
- Enables organization domains protection for all accepted domains, and targeted domains protection for fabrikam.com.
- Specifies Quarantine as the action for domain impersonation detections, and uses the default quarantine policy for the quarantined messages (we aren't using the _TargetedDomainQuarantineTag_ parameter).
- Specifies Mai Fujito (mfujito@fabrikam.com) as the user to protect from impersonation.
- Specifies Quarantine as the action for user impersonation detections, and uses the default quarantine policy for the quarantined messages (we aren't using the _TargetedUserQuarantineTag_ parameter).
- Enables mailbox intelligence (_EnableMailboxIntelligence_), allows mailbox intelligence protection to take action on messages (_EnableMailboxIntelligenceProtection_), specifies Quarantine as the action for detected messages, and uses the default quarantine policy for the quarantined messages (we aren't using the _MailboxIntelligenceQuarantineTag_ parameter).
- Changes the default action for spoofing detections to Quarantine, and uses the default quarantine policy for the quarantined messages (we aren't using the _SpoofQuarantineTag_ parameter).
- Honoring `p=quarantine` and `p=reject` in sender DMARC policies is on by default (we aren't using the _HonorDmarcPolicy_ parameter, and the default value is `$true`).
  - Messages that fail DMARC where the sender's DMARC policy is `p=quarantine` are quarantined (we aren't using the _DmarcQuarantineAction_ parameter, and the default value is Quarantine).
  - Messages that fail DMARC where the sender's DMARC policy is `p=reject` are rejected (we aren't using the _DmarcRejectAction_ parameter, and the default value is Reject).
- Enables all safety tips.

```powershell
New-AntiPhishPolicy -Name "Monitor Policy" -AdminDisplayName "Research department policy" -EnableOrganizationDomainsProtection $true -EnableTargetedDomainsProtection $true -TargetedDomainsToProtect fabrikam.com -TargetedDomainProtectionAction Quarantine -EnableTargetedUserProtection $true -TargetedUsersToProtect "Mai Fujito;mfujito@fabrikam.com" -TargetedUserProtectionAction Quarantine -EnableMailboxIntelligence $true -EnableMailboxIntelligenceProtection $true -MailboxIntelligenceProtectionAction -AuthenticationFailAction Quarantine -EnableSimilarUsersSafetyTips $true -EnableSimilarDomainsSafetyTips $true -EnableUnusualCharactersSafetyTips $true
```

For detailed syntax and parameter information, see [New-AntiPhishPolicy](/powershell/module/exchange/New-AntiPhishPolicy).

> [!TIP]
> For detailed instructions to specify the quarantine policies to use in an anti-phish policy, see [Use PowerShell to specify the quarantine policy in anti-phishing policies](quarantine-policies.md#anti-phishing-policies).

#### Step 2: Use PowerShell to create an anti-phish rule

To create an anti-phish rule, use this syntax:

```PowerShell
New-AntiPhishRule -Name "<RuleName>" -AntiPhishPolicy "<PolicyName>" <Recipient filters> [<Recipient filter exceptions>] [-Comments "<OptionalComments>"]
```

This example creates an anti-phish rule named Research Department with the following conditions:

- The rule is associated with the anti-phish policy named Research Quarantine.
- The rule applies to members of the group named Research Department.
- Because we aren't using the _Priority_ parameter, the default priority is used.

```powershell
New-AntiPhishRule -Name "Research Department" -AntiPhishPolicy "Research Quarantine" -SentToMemberOf "Research Department"
```

For detailed syntax and parameter information, see [New-AntiPhishRule](/powershell/module/exchange/New-AntiPhishRule).

### Use PowerShell to view anti-phish policies

To view existing anti-phish policies, use the following syntax:

```PowerShell
Get-AntiPhishPolicy [-Identity "<PolicyIdentity>"] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all anti-phish policies along with the specified properties.

```PowerShell
Get-AntiPhishPolicy | Format-Table Name,IsDefault
```

This example returns all the property values for the anti-phish policy named Executives.

```PowerShell
Get-AntiPhishPolicy -Identity "Executives"
```

For detailed syntax and parameter information, see [Get-AntiPhishPolicy](/powershell/module/exchange/Get-AntiPhishPolicy).

### Use PowerShell to view anti-phish rules

To view existing anti-phish rules, use the following syntax:

```PowerShell
Get-AntiPhishRule [-Identity "<RuleIdentity>"] [-State <Enabled | Disabled] [| <Format-Table | Format-List> <Property1,Property2,...>]
```

This example returns a summary list of all anti-phish rules along with the specified properties.

```PowerShell
Get-AntiPhishRule | Format-Table Name,Priority,State
```

To filter the list by enabled or disabled rules, run the following commands:

```PowerShell
Get-AntiPhishRule -State Disabled | Format-Table Name,Priority
```

```PowerShell
Get-AntiPhishRule -State Enabled | Format-Table Name,Priority
```

This example returns all the property values for the anti-phish rule named Contoso Executives.

```PowerShell
Get-AntiPhishRule -Identity "Contoso Executives"
```

For detailed syntax and parameter information, see [Get-AntiPhishRule](/powershell/module/exchange/Get-AntiPhishrule).

### Use PowerShell to modify anti-phish policies

Other than the following items, the same settings are available when you modify an anti-phish policy in PowerShell as when you create the policy as described in the [Step 1: Use PowerShell to create an anti-phish policy](#step-1-use-powershell-to-create-an-anti-phish-policy) section earlier in this article.

- The _MakeDefault_ switch that turns the specified policy into the default policy (applied to everyone, always **Lowest** priority, and you can't delete it) is only available when you modify an anti-phish policy in PowerShell.

- You can't rename an anti-phish policy (the **Set-AntiPhishPolicy** cmdlet has no _Name_ parameter). When you rename an anti-phishing policy in the Microsoft 365 Defender portal, you're only renaming the anti-phish _rule_.

To modify an anti-phish policy, use this syntax:

```PowerShell
Set-AntiPhishPolicy -Identity "<PolicyName>" <Settings>
```

For detailed syntax and parameter information, see [Set-AntiPhishPolicy](/powershell/module/exchange/Set-AntiPhishPolicy).

> [!TIP]
> For detailed instructions to specify the quarantine policies to use in an anti-phish policy, see [Use PowerShell to specify the quarantine policy in anti-phishing policies](quarantine-policies.md#anti-phishing-policies).

### Use PowerShell to modify anti-phish rules

The only setting that isn't available when you modify an anti-phish rule in PowerShell is the _Enabled_ parameter that allows you to create a disabled rule. To enable or disable existing anti-phish rules, see the next section.

Otherwise, no additional settings are available when you modify an anti-phish rule in PowerShell. The same settings are available when you create a rule as described in the [Step 2: Use PowerShell to create an anti-phish rule](#step-2-use-powershell-to-create-an-anti-phish-rule) section earlier in this article.

To modify an anti-phish rule, use this syntax:

```PowerShell
Set-AntiPhishRule -Identity "<RuleName>" <Settings>
```

For detailed syntax and parameter information, see [Set-AntiPhishRule](/powershell/module/exchange/set-antiphishrule).

### Use PowerShell to enable or disable anti-phish rules

Enabling or disabling an anti-phish rule in PowerShell enables or disables the whole anti-phishing policy (the anti-phish rule and the assigned anti-phish policy). You can't enable or disable the default anti-phishing policy (it's always applied to all recipients).

To enable or disable an anti-phish rule in PowerShell, use this syntax:

```PowerShell
<Enable-AntiPhishRule | Disable-AntiPhishRule> -Identity "<RuleName>"
```

This example disables the anti-phish rule named Marketing Department.

```PowerShell
Disable-AntiPhishRule -Identity "Marketing Department"
```

This example enables same rule.

```PowerShell
Enable-AntiPhishRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Enable-AntiPhishRule](/powershell/module/exchange/enable-antiphishrule) and [Disable-AntiPhishRule](/powershell/module/exchange/disable-antiphishrule).

### Use PowerShell to set the priority of anti-phish rules

The highest priority value you can set on a rule is 0. The lowest value you can set depends on the number of rules. For example, if you have five rules, you can use the priority values 0 through 4. Changing the priority of an existing rule can have a cascading effect on other rules. For example, if you have five custom rules (priorities 0 through 4), and you change the priority of a rule to 2, the existing rule with priority 2 is changed to priority 3, and the rule with priority 3 is changed to priority 4.

To set the priority of an anti-phish rule in PowerShell, use the following syntax:

```PowerShell
Set-AntiPhishRule -Identity "<RuleName>" -Priority <Number>
```

This example sets the priority of the rule named Marketing Department to 2. All existing rules that have a priority less than or equal to 2 are decreased by 1 (their priority numbers are increased by 1).

```PowerShell
Set-AntiPhishRule -Identity "Marketing Department" -Priority 2
```

**Notes**:

- To set the priority of a new rule when you create it, use the _Priority_ parameter on the **New-AntiPhishRule** cmdlet instead.
- The default anti-phish policy doesn't have a corresponding anti-phish rule, and it always has the unmodifiable priority value **Lowest**.

### Use PowerShell to remove anti-phish policies

When you use PowerShell to remove an anti-phish policy, the corresponding anti-phish rule isn't removed.

To remove an anti-phish policy in PowerShell, use this syntax:

```PowerShell
Remove-AntiPhishPolicy -Identity "<PolicyName>"
```

This example removes the anti-phish policy named Marketing Department.

```PowerShell
Remove-AntiPhishPolicy -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-AntiPhishPolicy](/powershell/module/exchange/Remove-AntiPhishPolicy).

### Use PowerShell to remove anti-phish rules

When you use PowerShell to remove an anti-phish rule, the corresponding anti-phish policy isn't removed.

To remove an anti-phish rule in PowerShell, use this syntax:

```PowerShell
Remove-AntiPhishRule -Identity "<PolicyName>"
```

This example removes the anti-phish rule named Marketing Department.

```PowerShell
Remove-AntiPhishRule -Identity "Marketing Department"
```

For detailed syntax and parameter information, see [Remove-AntiPhishRule](/powershell/module/exchange/Remove-AntiPhishRule).

## How do you know these procedures worked?

To verify that you've successfully configured anti-phishing policies in Defender for Office 365, do any of the following steps:

- On the **Anti-phishing** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antiphishing>, verify the list of policies, their **Status** values, and their **Priority** values. To view more details, select the policy from the list by clicking anywhere in the row other than the check box next to the name and viewing the details in the flyout that appears.

- In Exchange Online PowerShell, replace \<Name\> with the name of the policy or rule, and run the following command and verify the settings:

  ```PowerShell
  Get-AntiPhishPolicy -Identity "<Name>"
  ```

  ```PowerShell
  Get-AntiPhishRule -Identity "<Name>"
  ```
