---
title: "Configure Communication compliance for Microsoft 365 (preview)"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.SupervisoryReview'
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
- MOE150
description: "Set up Communication compliance policies to configure employee communications for review."
---

# Configure Communication compliance for Microsoft 365 (preview)

> [!IMPORTANT]
> This topic applies to configuring Communication compliance in a Microsoft 365 subscription. If you want to configure Supervision policies for an Office 365 subscription, see [Configure supervision for Office 365](supervision-policies.md).

Use Communication compliance policies to capture employee communications for examination by internal or external reviewers. For more information about how Communication compliance policies can help you monitor communications in your organization, see [Communication compliance policies in Microsoft 365](communication-compliance.md).

> [!NOTE]
> Users monitored by Communication compliance policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription.
> If you don't have an existing Enterprise E5 plan and want to try Communication compliance, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).
  
Follow these steps to set up and use Communication compliance in your Microsoft 365 organization:
  
- **Step 1 (optional)**: [Set up groups for Communication compliance](#step-1-set-up-groups-for-communication-compliance-optional) 

    Before you start using Communication compliance, determine who needs communications reviewed and who performs reviews. If you want to get started with just a few users to see how Communication compliance works, you can skip setting up groups for now.

- **Step 2 (required)**: [Make Communication compliance available in your organization](#step-2-make-communication-compliance-available-in-your-organization-required)

    Add yourself to the **Supervisory Review Administrator** role so you can set up policies. You'll also need to assign the **Case Management** and **Review** roles to people or groups that will take investigative and remediation action on messages with policy matches. Anyone who has these roles assigned can access the **Communication compliance** page in the Microsoft 365 compliance center. If reviewable email is hosted on Exchange Online, each reviewer must have [remote PowerShell access to Exchange Online](https://docs.microsoft.com/powershell/exchange/exchange-online/disable-access-to-exchange-online-powershell).

- **Step 3 (required)**: [Set up a Communication compliance policy](#step-3-set-up-a-communication-compliance-policy-required)

    You create Communication compliance policies in the Microsoft 365 compliance center. These policies define which communications are subject to review in your organization and specifies who performs reviews. Communications include email, Microsoft Teams, Skype for Business, and 3rd-party platform communications (such as Facebook, Twitter, etc.).

- **Step 4 (optional)**: [Create employee notice templates](#step-4-create-employee-notices-optional)

    Create custom notice templates to send email notifications to employees as a remediation option for policy matches.

- **Step 5 (optional)**: [Test your Communication compliance policy](#step-5-test-your-communication-compliance-policy-optional)

    Test your Communication compliance policy to make sure it functions as desired. It is important to ensure that your compliance strategy is meeting your standards.

## Step 1: Set up groups for Communication compliance (optional)

 When you create a Communication compliance policy, you define who has their communications reviewed and who performs reviews. In the policy, you'll use email addresses to identify individuals or groups of people. To simplify your setup, you can create groups for people who have their communication reviewed and groups for people who review those communications. If you're using groups, you may need several. For example, you want to monitor communications between two distinct groups of people or if you want to specify a group that isn't going to be supervised.

Use the following chart to help you configure groups in your organization for Communication compliance policies:

| **Policy Member** | **Supported Groups** | **Unsupported Groups** |
|:-----|:-----|:-----|
|Supervised users <br> Non-supervised users | Distribution groups <br> Office 365 groups | Dynamic distribution groups |
| Reviewers | Mail-enabled security groups  | Distribution groups <br> Dynamic distribution groups |
  
When you select an Office 365 group for supervised users, the policy monitors the content of the shared Office 365 mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy monitors individual user mailboxes.

For more information about setting up groups, see:

- [Create and manage distribution groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups)
- [Manage mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups)
- [Overview of Office 365 Groups](https://docs.microsoft.com/office365/admin/create-groups/office-365-groups?view=o365-worldwide)

## Step 2: Make Communication compliance available in your organization (required)

To make **Communication compliance** available as a menu option in Microsoft 365 compliance center, you must be assigned the Supervisory Review Administrator role. To investigate and remediate messages with policy matches, you must be assigned the **Case Management** and **Review** roles.
  
To do this, you can either add yourself as a member of the Supervisory Review role group, or you can create a new role group.
  
### Add required roles to the Supervisory Reviewer role group

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select the **Supervisory Review** role group and then click **Edit** in the **Assigned roles** section of the details page.

4. Select **Edit**, then select **Add**. Select the checkbox for **Case Management** and **Review**, then select **Add**.

5. Select **Done**, then select **Save**.

6. In the **Members** section, select **Edit** to add the people who you want to manage Communication compliance for your organization.

7. Select **Edit**, then select **Add**. Select the checkbox for all the users and groups you want manage messages with policy matches, then select **Add**.

8. Select **Done**, then select **Save**.

9. Select **Close** to exit the role group detail page.

### Create a new role group

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Office 365 organization.

2. In the Microsoft 365 compliance center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select **Create**.

4. In the **Name** field, give the new role group a friendly name. Select **Next**.

5. Select **Choose roles** and then select **Add**. Select the checkbox for **Supervisory Review Administrator**, **Case Management**, and **Review**, then select **Add** and **Done**. Select **Next**.

6. Select **Choose members** and then select **Add**. Select the checkbox for all the users and groups you want create policies and manage messages with policy matches, then select **Add** and **Done**. Select **Next**.

7. Select **Create role group** to finish.

For more information about role groups and permissions, see [Permissions in the Compliance Center](../security/office-365-security/protect-against-threats.md).

## Step 3: Create a Communication compliance policy (required)
  
1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, select **Communication compliance**.
  
3. Select the **Policies** tab.

4. Select **Create policy** to create and configure a new policy from a template or to create and configure a custom policy.

    If you choose a policy template to create a policy, you will:

    - Confirm or update the policy name.
    - Choose the users or groups to supervise, including choosing users or groups you'd like to exclude.
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Choose a limited condition field, usually a sensitive info type or keyword dictionary to apply to the policy.

    If you choose to use the policy wizard to create a custom policy, you will:

    - Give the policy a name and description.
    - Choose the users or groups to supervise, including choosing all users in your organization, specific users and groups, or other users and groups you'd like to exclude. -
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Choose the communication channels to scan, including Exchange, Microsoft Teams, or Skype for Business. You'll also choose to scan 3rd party sources if you've configured a connector in Microsoft 365.
    - Choose the communication direction to monitor, including inbound, outbound, or internal communications.
    - Define the Communication compliance policy [conditions](communication-compliance-feature-reference.md#ConditionalSettings). You can choose from message address, keyword, file types, and size match conditions.
    - Choose if you'd like to include sensitive information types. This is where you can select default and custom sensitive info types. You'll pick from existing custom sensitive information types or custom keyword dictionaries in the Communication compliance policy wizard, you can create these items before running the wizard if needed. If desired, you can also create new sensitive information types from within the Communication compliance policy wizard.
    - Choose if you'd like to enable the offensive language model. This detects inappropriate language sent or received in the body of email messages.
    - Define the percentage of communications to review.
    - Review your policy selections and create the policy.

5. Select **Create policy** when using the templates or **Submit** when using the custom policy wizard.

6. The **Your policy was created** page is displayed with guidelines on when policy will be activated and communications will be captured.

## Step 4: Create employee notice templates (optional)

If you want to have the option of responding to a policy alert by sending a reminder notice to the associated employee, you'll need to create at least one notice template in your organization. The notice template fields are editable prior to sending as part of the alert remediation process and creating a customized notice template for each Communication compliance policy is recommended.

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, go to **Communication compliance**.

3. Select the **Notice templates** tab and then select **Create notice template**.

4. On the **Modify a notice template** page, complete the following fields:

    - Notice template name (required)
    - Send from (required)
    - Cc and Bcc (optional)
    - Subject (required)
    - Message body (required)

5. Select **Save** to create and save the notice template.

## Step 5: Test your Communication compliance policy (optional)

After you create a Communication compliance policy, it's a good idea to test to make sure that the conditions you defined are being properly enforced by the policy. You may also want to [test your data loss prevention (DLP) policies](create-test-tune-dlp-policy.md) if your Communication compliance policies include sensitive information types. Make sure you give your policies time to activate so that the communications you want to test are captured.

Follow these steps to test your Communication compliance policy:

1. Open an email client or Microsoft Teams logged in as a supervised user defined in the policy you want to test.
2. Send an email or Microsoft Teams chat that meets the criteria you've defined in the Communication compliance policy. This can be a keyword, attachment size, domain, etc. Make sure that you determine if your configured conditional settings in the policy are too restrictive or too lenient.

    > [!NOTE]
    > Emails subject to defined policies are processed in near real-time and can be tested immediately after the policy is configured. Chats in Microsoft Teams can take up to 24 hours to fully process in a policy.

3. Log into Microsoft 365 as a reviewer designated in the Communication compliance policy. Navigate to **Communication compliance** > **Policies** > *Your Custom Policy* to view the alerts for the policy.

4. Remediate the the alert using the remediation controls and verify that the alert is properly resolved.
