---
title: "Configure ATP anti-phishing policies"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid:
ms.collection:
- M365-security-compliance
description: ""
---

# Configure ATP anti-phishing policies in Office 365

ATP anti-phishing policies are part of [Office 365 Advanced Threat Protection](office-365-atp.md). ATP anti-phishing policies can help protect your organization from malicious impersonation-based phishing attacks and other types of phishing attacks. For more information about the differences between anti-phishing policies and ATP anti-phishing policies, see [Anti-phishing protection in Office 365](anti-phishing-protection.md).

For information about configuring the built-in anti-phishing policy that's available in Exchange Online Protection (that is, Office 365 organizations without ATP), see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md).

Admins can view, edit, and configure (but not delete) the default ATP anti-phishing policy. For greater granularity, you can also create custom ATP anti-phishing policies that apply to specific users, groups, or domains in your organization. Custom policies always take precedence over the default policy, but you can change the priority (running order) of your custom policies.

You can configure ATP anti-phishing policies in the Office 365 Security & Compliance Center or in Exchange Online PowerShell.

## ATP anti-phishing policies in the Office 365 Security & Compliance Center vs Exchange Online PowerShell

The basic elements of an ATP anti-phishing policy are:

- **The anti-phish policy**: Specifies the phishing protections to enable or disable, and the actions to apply options.

- **The anti-phish rule**: Specifies the priority and recipient filters (who the policy applies to) for a anti-phish policy.

The difference between these two elements isn't obvious when you manage ATP anti-phishing polices in the Security & Compliance Center:

- When you create an ATP anti-phishing policy in the Security & Compliance Center, you're actually creating a anti-phish rule and the associated anti-phish policy at the same time using the same name for both.

- When you modify an ATP anti-phishing policy in the Security & Compliance Center, settings related to the name, priority, enabled or disabled, and recipient filters modify the anti-phish rule. All other settings modify the associated anti-phish policy.

- When you remove an ATP anti-phishing policy from the Security & Compliance Center, the anti-phish rule and the associated anti-phish policy are removed.

In Exchange Online PowerShell, the difference between anti-phish policies and anti-phish rules is apparent. You manage anti-phish policies by using the **\*-AntiPhishPolicy** cmdlets, and you manage anti-phish rules by using the **\*-AntiPhishRule** cmdlets.

- In PowerShell, you create the anti-phish policy first, then you create the anti-phish rule that identifies the policy that the rule applies to.

- In PowerShell, you modify the settings in the anti-phish policy and the anti-phish rule separately.

- When you remove a anti-phish policy from PowerShell, the corresponding anti-phish rule isn't automatically removed, and vice versa.

### Default anti-phishing policy

Every organization has a built-in anti-phishing policy named Office 365 AntiPhish Default that has these properties:

- The anti-phish policy named Office 365 AntiPhish Default is applied to all recipients in the organization, even though there's no anti-phish rule (recipient filters) associated with the policy.

- The policy named Office 365 AntiPhish Default has the custom priority value **Lowest** that you can't modify (the policy is always applied last). Any custom policies that you create always have a higher priority than the policy named Office 365 AntiPhish Default.

- The policy named Office 365 AntiPhish Default is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.

To increase the effectiveness of anti-phishing protection, you can create custom ATP anti-phishing policies with stricter settings that are applied to specific users or groups of users.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **ATP anti-phishing** page, use <https://protection.office.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can perform these procedures. To add, modify, and delete anti-phishing policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to anti-phishing policies, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- For our recommended settings for ATP anti-phishing policies, see [Office ATP anti-phishing policy settings](recommended-settings-for-eop-and-office365-atp.md#office-atp-anti-phishing-policy-settings).

- Allow up to 30 minutes for a new or updated policy to to be applied.

- For information about where anti-phishing policies are applied in the filtering pipeline, see [Order and precedence of email protection in Office 365](how-policies-and-protections-are-combined.md).

## Use the Security & Compliance Center to create ATP anti-phishing policies

Creating a custom ATP anti-phishing policy in the Security & Compliance Center creates the anti-phish rule and the associated anti-phish policy at the same time using the same name for both.

When you create an ATP anti-phishing policy, you can only specify the policy name, description and the recipient filter that identifies who the policy applies to. After you create the policy, you can modify the policy to change or review the default anti-phishing settings.

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. On the **Anti-phishing** page, click **Create**.

3. The **Create a new anti-phishing policy** wizard opens. On the **Name your policy** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the policy.

   - **Description**: Enter an optional description for the policy.

   When you're finished, click **Next**.

4. On the **Applied to** page that appears, identify the internal recipients that the policy applies to.

   You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

   Click **Add a condition**. In the dropdown that appears, select a condition under **Applied if**:

   - **The recipient is**: Specifies one or more mailboxes, mail users, or mail contacts in your organization.
   - **The recipient is a member of**: Specifies one or more groups in your organization.
   - **The recipient domain is**: Specifies recipients in one or more of the configured accepted domains in Office 365.

   After you select the condition, a corresponding dropdown appears with an **Any of these** box.

   - Click in the box and scroll through the list of values to select.
   - Click in the box and start typing to filter the list and select a value.
   - To add additional values, click in an empty area in the box.
   - To remove individual entries, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the value.
   - To remove the whole condition, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the condition.

   To add an additional condition, click **Add a condition** and select a remaining value under **Applied if**.

   To add exceptions, click **Add a condition** and select an exception under **Except if**. The settings and behavior are exactly like the conditions.

   When you're finished, click **Next**.

5. On the **Review your settings** page that appears, review your settings. You can click **Edit** on each setting to modify it.

   When you're finished, click **Create this policy**.

6. Click **OK** in the confirmation dialog that appears.

## Use the Security & Compliance Center to modify custom ATP anti-phishing policies

After you create an ATP anti-phishing policy, you modify it to configure the anti-phishing settings. You use the same procedure to modify any existing custom ATP anti-phishing policy.

1. If you're not already there, open the Security & Compliance Center, and go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Select the custom ATP anti-phishing policy that you want to modify.

3. The **Edit your policy \<name\>** flyout appears. Clicking **Edit** in any section gives you access to all settings (you just land on that specific page).

   The settings in the following steps are described in the order they appear, but they aren't sequential (you can modify the settings in any order). You can switch between settings (steps) without losing your selections.

4. **Policy setting**: Click **Edit** to modify the same settings that were available when you created the policy [created the policy](#use-the-security--compliance-center-to-create-anti-phishing-policies):

   - **Name**
   - **Description**
   - **Applied to**

   When you're finished, click **Save** on the **Review your settings** page. To leave without saving, click **Cancel** on the **Review your settings** page, or **Close** ![Close icon](../../media/scc-remove-icon.png) on any page.

5. **Impersonation**: Click **Edit** to modify the following settings that are fully explained at [Impersonation settings in ATP anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-atp-anti-phishing-policies):

   - **Add users to protect**: The default value is **Off**. To turn it on, slide the toggle to **On**, and then click the **Add user** button that appears.

     In the **Add user** flyout that appears, configure the following values:

     - **Email address**:

        - Click in the box and scroll through the list of users to select.
        - Click in the box and start typing to filter the list and select a user.
        - To remove an entry, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the user.

     - **Name**: This value is populated based on the email address you selected, but you can change it.

       When you're finished, click **Save**.

    To edit an existing entry, select the protected user in the list.

   - **Add domains to protect**: Configure one or both of the following settings:

     - **Automatically include the domains I own**:  The default value is **Off**. To turn it on, slide the toggle to **On**.
     - **Include custom domains**: The default value is **Off**. To turn it on, slide the toggle to **On**, and in the **Add domains** box, enter the domain name (for example, contoso,com), press ENTER, and repeat as necessary.

6. **Actions**:  Click **Edit**

   - **If email is sent by an impersonated user**: Configure one of the following actions for protected users:

     - **Don't apply any action**
     - **Redirect message to other email addresses**
     - **Move message to Junk Email folder**
     - **Quarantine the message**
     - **Deliver the message and add other addresses to the Bcc line**
     - **Delete the message before it's delivered**

   - **If email is sent by an impersonated domain**: Configure one of the following actions for protected domains:

     - **Don't apply any action**
     - **Redirect message to other email addresses**
     - **Move message to Junk Email folder**
     - **Quarantine the message**
     - **Deliver the message and add other addresses to the Bcc line**
     - **Delete the message before it's delivered**

   - Click **turn on impersonation safety tips** and configure any of the following settings:

     - **Show tip for impersonated users**: The default value is **Off**. To turn it on, slide the toggle to **On**.
     - **Show tip for impersonated domains**: The default value is **Off**. To turn it on, slide the toggle to **On**.
     - **Show tip for unusual characters**: The default value is **Off**. To turn it on, slide the toggle to **On**.

     When you're finished, click **Save**.

7. **Mailbox intelligence**:

   - **Enable mailbox intelligence?**: The default value is **On**. To turn it off, slide the toggle to **Off**.

   - **Enable mailbox intelligence based impersonation protection?**: This setting is only available if **Enable mailbox intelligence?** is **On**.

     In **If email is sent by an impersonated user**, you can specify one of the following actions to take on messages that fail mailbox intelligence (the same actions that are available for protected users and protected domains):

     - **Don't apply any action**
     - **Redirect message to other email addresses**
     - **Move message to Junk Email folder**
     - **Quarantine the message**
     - **Deliver the message and add other addresses to the Bcc line**
     - **Delete the message before it's delivered**

8. **Add trusted senders and domains**: Specify exceptions for the policy:

   - **Trusted senders**:

     - Click in the box and scroll through the list of users to select.
     - Click in the box and start typing to filter the list and select a user.
     - To remove an entry, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the user.

   - **Trusted domains**: Enter the domain name (for example, contoso,com), press ENTER, and repeat as necessary.

9. **Review your settings**: instead of clicking on each individual step, the settings are displayed in a big summary.

   - You can click **Edit** in each section to jump back to that settings page.

   - You can toggle the following settings **On** or **Off** directly on this page:

     - **Protected users**
     - **Protected domains** \> **Include domains I own**
     - **Protected domains** \> **Protected domains** (custom domains)
     - **Mailbox intelligence**

10. When you're finished, click **Save** on any page.

11. Back on the **Edit your policy \<Name\>** page, click **Close**.

## Use the Security & Compliance Center to modify the default anti-phishing policy

The default anti-phishing policy is named Office 365 AntiPhish Default, and it doesn't appear in the list of policies. To modify the default anti-phishing policy, do the following steps:

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. On the **Anti-phishing** page, click **Default**.

3. The **Edit your policy Office365 AntiPhish Default** page appears. The following settings are available, which are identical to the settings that are available when you [modify a custom policy](#use-the-security--compliance-center-to-modify-custom-atp-anti-phishing-policies):

   - **Impersonation**
   - **Spoof**
   - **Advanced settings**

4. The following settings aren't available when you modify the default policy:

   - You can see the **Policy setting** area, but you can't modify the settings (policy name, description, or who the policy applies to; it applies to all recipients).
   - You can't delete the default policy.
   - You can't change the priority of the default policy (it's always applied last).

## Review the prerequisites

- To define (or edit) ATP policies, you must be assigned an appropriate role. Some examples are described in the following table:

  |Role|Where/how assigned|
  |---------|---------|
  |Office 365 Global Administrator|The person who signs up to buy Office 365 is a global admin by default. (See [About Office 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles) to learn more.)|
  |Security Administrator|Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com))|
  |Exchange Online Organization Management|Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) <br>or <br>  PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell))|

  To learn more about roles and permissions, see [Permissions in the Office 365 Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md).

- You will probably set up multiple anti-phishing policies for your organization. Office 365 enforces these policies in the order they're listed on the **Anti-phishing page** and **ATP anti-phishing** pages in the Security &amp; Compliance Center. Once you've reviewed your [policy options](#learn-about-atp-anti-phishing-policy-options), take some time to determine how many policies you'll need and the priority for each.

- Plan to spend about 5-15 minutes to set up your first anti-phishing policy.

- Allow up to 30 minutes for your new or updated policy to spread to all Office 365 datacenters.

## Set up an anti-phishing or ATP anti-phishing policy

Each organization in Office 365 has a default anti-phishing policy that applies to all users. You can create multiple custom anti-phishing policies that you can scope to specific users, groups, or domains within your organization. The custom policies you create take precedence over the default policy. You add, edit, and delete anti-phishing policies in the Office 365 Security &amp; Compliance Center.

1. Go to [https://protection.office.com](https://protection.office.com) and sign in with your work or school account.

2. In the Office 365 Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.

3. On the **Policy** page, choose **Anti-phishing** or **ATP anti-phishing**.

4. On the **Anti-phishing** or **ATP anti-phishing** page, do one of the following:

   - To add a new policy select **+ Create**.

   - To edit an existing policy, select the policy name from the list displayed on the **Anti-phishing** page. (Alternately, you can or choose **Default Policy** above the list.) On the page that appears, choose **Edit policy**.

5. Specify the name, description, and settings for your policy. See [Learn about ATP anti-phishing policy options](#learn-about-atp-anti-phishing-policy-options) for more details.

6. Once you have reviewed your settings, choose **Create this policy** (or **Save**).

## Learn about ATP anti-phishing policy options

After your organization has set up anti-phishing policies or ATP anti-phishing policies, you can see how the service is working by [viewing reports for Advanced Threat Protection](view-reports-for-atp.md).

## Example: Anti-phishing policy to protect a user and a domain

This example sets up a policy called "Domain and CEO" that provides both user and domain protection from impersonation and then applies the policy to all email received by users within the domain `contoso.com`. The security administrator has determined that the policy must meet these business requirements:

- The policy needs to provide protection for the CEO's email account and the entire domain.

- Messages that are determined to be impersonation attempts against the CEO's user account need to be redirected to the security administrator's email address.

- Messages that are determined to be impersonation attempts against the domain are less urgent and should be quarantined for later review.

The security administrator at Contoso might use values like the following in order to create an anti-phishing policy that meets these needs.

|||
|:-----|:-----|
|**Setting or option**|**Example**|
|Name|Domain and CEO|
|Description|Ensure that the CEO and our domain are not being impersonated.|
|Add users to protect|The CEO's email address at a minimum.|
|Add domains to protect|The organizational domain that includes the office of the CEO.|
|Choose actions|If email is sent by an impersonated user: Choose **Redirect message to another email address** and then type the email address of the security administrator, for example, `securityadmin@contoso.com`.  <br/> If email is sent by an impersonated domain: Choose **Quarantine message**.|
|Mailbox intelligence|By default, mailbox intelligence is selected when you create a new anti-phishing policy. Leave this setting **On** for best results.|
|Add trusted senders and domains|For this example, don't define any overrides.|
|Applied to|Select **The recipient domain is**. Under **Any of these**, select **Choose**. Select **+ Add**. Select the checkbox next to the name of the domain, for example, `contoso.com`, in the list and then select **Add**. Select **Done**.|

## Next steps

Once your anti-phishing policies are in place, you can see how your threat protection features are working for your organization by viewing reports. See the following resources to learn more:

- [View reports for Office 365 ATP](view-reports-for-atp.md) or [View email security reports](view-email-security-reports.md)

- [Use Threat Explorer (or real-time detections)](threat-explorer.md)

Stay on top of new features coming to ATP. visit the [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=O365) and learn about [new features that are being added to ATP](office-365-atp.md#new-features-in-office-365-atp).