---
title: "Configure communication compliance (preview)"
description: "Set up communication compliance policies to configure employee communications for review."
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
---

# Configure communication compliance in Microsoft 365 (preview)

> [!IMPORTANT]
> This topic applies to configuring communication compliance in a Microsoft 365 subscription. If you want to configure Supervision policies for an Office 365 subscription, see [Configure supervision for Office 365](supervision-policies.md).

Use communication compliance policies to capture employee communications for examination by internal or external reviewers. For more information about how communication compliance policies can help you monitor communications in your organization, see [communication compliance policies in Microsoft 365](communication-compliance.md).

> [!NOTE]
> Users monitored by communication compliance policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription.
> If you don't have an existing Enterprise E5 plan and want to try communication compliance, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).
  
Follow these steps to set up and use communication compliance in your Microsoft 365 organization:
  
- **Step 1 (optional)**: [Set up groups for communication compliance](#step-1-set-up-groups-for-communication-compliance-optional) 

    Before you start using communication compliance, determine who needs communications reviewed and who performs reviews. If you want to get started with just a few users to see how communication compliance works, you can skip setting up groups for now.

- **Step 2 (required)**: [Make communication compliance available in your organization](#step-2-make-communication-compliance-available-in-your-organization-required)

    Add yourself to the **Supervisory Review Administrator** role so you can set up policies. You'll also need to create a new group with the **Supervisory Review Administrator**, **Case Management**, and **Review** roles to people or groups that will take investigative and remediation action on messages with policy matches. Anyone who has these roles assigned can access the **Communication compliance** page in the Microsoft 365 compliance center. If reviewable email is hosted on Exchange Online, each reviewer must have [remote PowerShell access to Exchange Online](https://docs.microsoft.com/powershell/exchange/exchange-online/disable-access-to-exchange-online-powershell).

- **Step 3 (required)**: [Set up a communication compliance policy](#step-3-create-a-communication-compliance-policy-required)

    You create communication compliance policies in the Microsoft 365 compliance center. These policies define which communications are subject to review in your organization and specifies who performs reviews. Communications include email, Microsoft Teams, Skype for Business, and third-party platform communications (such as Facebook, Twitter, etc.).

- **Step 4 (optional)**: [Create employee notice templates](#step-4-create-employee-notice-templates-optional)

    Create custom notice templates to send email notifications to employees as a remediation option for policy matches.

- **Step 5 (optional)**: [Test your communication compliance policy](#step-5-test-your-communication-compliance-policy-optional)

    Test your communication compliance policy to make sure it functions as desired. It's important to ensure that your compliance strategy is meeting your standards.

- **Step 6 (optional)**: [Enable auditing for your communication compliance policies](#step-6-enable-auditing-for-your-communication-compliance-policies-optional)

    Enable auditing for your organization to record managment activities for communication compliance policies.

## Step 1: Set up groups for communication compliance (optional)

 When you create a communication compliance policy, you define who has their communications reviewed and who performs reviews. In the policy, you'll use email addresses to identify individuals or groups of people. To simplify your setup, you can create groups for people who have their communication reviewed and groups for people who review those communications. If you're using groups, you may need several. For example, if you want to monitor communications between two distinct groups of people or if you want to specify a group that isn't going to be supervised.

Use the following chart to help you configure groups in your organization for communication compliance policies:

| **Policy Member** | **Supported Groups** | **Unsupported Groups** |
|:-----|:-----|:-----|
|Supervised users <br> Non-supervised users | Distribution groups <br> Office 365 groups | Dynamic distribution groups |
| Reviewers | Mail-enabled security groups  | Distribution groups <br> Dynamic distribution groups |
  
When you select an Office 365 group for supervised users, the policy monitors the content of the shared Office 365 mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy monitors individual user mailboxes.

For more information about setting up groups, see:

- [Create and manage distribution groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups)
- [Manage mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups)
- [Overview of Office 365 Groups](https://docs.microsoft.com/office365/admin/create-groups/office-365-groups?view=o365-worldwide)

## Step 2: Make communication compliance available in your organization (required)

> [!Important]
> By default, Global Administrators do not have access to communication compliance features. The roles assigned in this step are required before any communication compliance features will be accessible.

To make **Communication compliance** available as a menu option in Microsoft 365 compliance center, you must be assigned the **Supervisory Review Administrator** role. Additionally, to investigate and remediate messages with policy matches, you must create a group for reviewers with the **Supervisory Review Administrator**, **Case Management**, and **Review** roles.

### Create a new role group

1. Sign into [https://protection.office.com/permissions](https://protection.office.com/permissions) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft Office 365 security and compliance center, go to **Permissions**. Select the link to view and manage roles in Office 365.

3. Select **Create**.

4. In the **Name** field, give the new role group a friendly name. Select **Next**.

5. Select **Choose roles** and then select **Add**. Select the checkbox for **Supervisory Review Administrator**, **Case Management**, and **Review**, then select **Add** and **Done**. Select **Next**.

    ![Communication compliance required role groups](media/communication-compliance-role-groups.png)

6. Select **Choose members** and then select **Add**. Select the checkbox for all the users and groups you want create policies and manage messages with policy matches, then select **Add** and **Done**. Select **Next**.

7. Select **Create role group** to finish.

For more information about role groups and permissions, see [Permissions in the Compliance Center](../security/office-365-security/protect-against-threats.md).

## Step 3: Create a communication compliance policy (required)
  
1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, select **Communication compliance**.
  
3. Select the **Policies** tab.

4. Select **Create policy** to create and configure a new policy from a template or to create and configure a custom policy.

    If you choose a policy template to create a policy, you will:

    - Confirm or update the policy name. Policy names cannot be changed once the policy is created.
    - Choose the users or groups to supervise, including choosing users or groups you'd like to exclude.
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Choose a limited condition field, usually a sensitive info type or keyword dictionary to apply to the policy.

    If you choose to use the policy wizard to create a custom policy, you will:

    - Give the policy a name and description. Policy names can't be changed once the policy is created.
    - Choose the users or groups to supervise, including all users in your organization, specific users and groups, or other users and groups you'd like to exclude. -
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Choose the communication channels to scan, including Exchange, Microsoft Teams, or Skype for Business. You'll also choose to scan third-party sources if you've configured a connector in Microsoft 365.
    - Choose the communication direction to monitor, including inbound, outbound, or internal communications.
    - Define the communication compliance policy [conditions](communication-compliance-feature-reference.md#ConditionalSettings). You can choose from message address, keyword, file types, and size match conditions.
    - Choose if you'd like to include sensitive information types. This step is where you can select default and custom sensitive info types. Pick from existing custom sensitive information types or custom keyword dictionaries in the communication compliance policy wizard. You can create these items before running the wizard if needed. You can also create new sensitive information types from within the communication compliance policy wizard.
    - Choose if you'd like to enable the offensive language classifier. This  classifier detects inappropriate language sent or received in the body of email messages.
    - Define the percentage of communications to review.
    - Review your policy selections and create the policy.

5. Select **Create policy** when using the templates or **Submit** when using the custom policy wizard.

6. The **Your policy was created** page is displayed with guidelines on when policy will be activated and which communications will be captured.

## Step 4: Create employee notice templates (optional)

If you want to have the option of responding to a policy alert by sending a reminder notice to the associated employee, you'll need to create at least one notice template in your organization. The notice template fields are editable before they're sent as part of the alert remediation process, and creating a customized notice template for each communication compliance policy is recommended.

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

## Step 5: Test your communication compliance policy (optional)

After you create a communication compliance policy, it's a good idea to test it to make sure that the conditions you defined are being properly enforced by the policy. You may also want to [test your data loss prevention (DLP) policies](create-test-tune-dlp-policy.md) if your communication compliance policies include sensitive information types. Make sure you give your policies time to activate so that the communications you want to test are captured.

Follow these steps to test your communication compliance policy:

1. Open an email client or Microsoft Teams while signed in as a supervised user defined in the policy you want to test.
2. Send an email or Microsoft Teams chat that meets the criteria you've defined in the communication compliance policy. This test can be a keyword, attachment size, domain, etc. Make sure you determine if your configured conditional settings in the policy are too restrictive or too lenient.

    > [!NOTE]
    > Communications in all source channels can take up to 24 hours to fully process in a policy.

3. Sign in to Microsoft 365 as a reviewer designated in the communication compliance policy. Navigate to **Communication compliance** > **Alerts** to view the alerts for your policies.

4. Remediate the alert using the remediation controls and verify that the alert is properly resolved.

## Step 6: Enable auditing for your communication compliance policies (optional)

After you've tested your policies, you may want to enable auditing so that activities associated with communication compliance management are recorded. This may be a summary of all activities associated with a defined organizational policy or anytime a communication compliance policy changes.

When auditing is enabled, communication compliance policies have built-in audit trails for complete readiness for internal or external audits. You can use the **Export review activities** control on the main page for any policy to generate an audit file or view audit activities in the unified audit log if auditing is enabled.

To turn auditing on, click **Start recording user and admin activity** on the **Audit log search** page in the Office 365 Security & Compliance Center. If you don't see this link, auditing has already been turned on for your organization. After you turn auditing on, a message is displayed that says the audit log is being prepared and that you can run a search in a couple of hours after the preparation is complete. You only have to do this once. For more information about the audit log, see [Search the audit log](search-the-audit-log-in-security-and-compliance.md).

