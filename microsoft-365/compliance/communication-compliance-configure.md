---
title: "Configure communication compliance for Microsoft 365 (preview)"
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
description: "Set up communication compliance policies to configure employee communications for review."
---

# Configure communication compliance for Microsoft 365 (preview)

> [!IMPORTANT]
> This topic applies to configuring communication compliance in a Microsoft 365 subscription. If you want to configure supervision policies for an Office 365 subscription, see [Configure supervision for Office 365](supervision-policies.md).

Use communication compliance policies to capture employee communications for examination by internal or external reviewers. For more information about how communication compliance policies can help you monitor communications in your organization, see [Communication compliance policies in Microsoft 365](communication-compliance.md).

> [!NOTE]
> Users monitored by communication compliance policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription.
> If you don't have an existing Enterprise E5 plan and want to try communication compliance, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).
  
Follow these steps to set up and use communication compliance in your Microsoft 365 organization:
  
- **Step 1 (optional)**: [Set up groups for communication compliance](#step-1-set-up-groups-for-communication-compliance-optional) 

    Before you start using communication compliance, determine who needs communications reviewed and who performs reviews. If you want to get started with just a few users to see how communication compliance works, you can skip setting up groups for now.

- **Step 2 (required)**: [Make communication compliance available in your organization](#step-2-make-communication-compliance-available-in-your-organization-required)

    Add yourself to the Supervisory Review role group so you can set up policies. Anyone who has this role assigned can access the **Communication compliance** page in the Microsoft 365 compliance center. If reviewable email is hosted on Exchange Online, each reviewer must have [remote PowerShell access to Exchange Online](https://docs.microsoft.com/powershell/exchange/exchange-online/disable-access-to-exchange-online-powershell).

- **Step 3 (required)**: [Set up a communication compliance policy](#step-3-set-up-a-communication-compliance-policy-required)

    You create communication compliance policies in the Microsoft 365 compliance center. These policies define which communications are subject to review in your organization and specifies who performs reviews. Communications include email, Microsoft Teams, Skype for Business, and 3rd-party platform communications (such as Facebook, Twitter, etc.).

- **Step 4 (optional)**: [Create employee notice templates](#step-4-create-employee-notices-optional)

    Create custom notice templates to send email notifications to employees as a remediation option for policy matches.

- **Step 5 (optional)**: [Test your communication compliance policy](#step-5-test-your-communication-compliance-policy-optional)

    Test your communication compliance policy to make sure it functions as desired. It is important to ensure that your compliance strategy is meeting your standards.

## Step 1: Set up groups for communication compliance (optional)

 When you create a communication compliance policy, you define who has their communications reviewed and who performs reviews. In the policy, you'll use email addresses to identify individuals or groups of people. To simplify your setup, you can create groups for people who have their communication reviewed and groups for people who review those communications. If you're using groups, you may need several. For example, you want to monitor communications between two distinct groups of people or if you want to specify a group that isn't going to be supervised.

Use the following chart to help you configure groups in your organization for communication compliance policies:

| **Policy Member** | **Supported Groups** | **Unsupported Groups** |
|:-----|:-----|:-----|
|Supervised users <br> Non-supervised users | Distribution groups <br> Office 365 groups | Dynamic distribution groups |
| Reviewers | Mail-enabled security groups  | Distribution groups <br> Dynamic distribution groups |
  
When you select an Office 365 group for supervised users, the policy monitors the content of the shared Office 365 mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy monitors individual user mailboxes.

To manage supervised users in large enterprise organizations, you may need to monitor all users across large groups. You can use PowerShell to configure a distribution group for a global communication compliance policy for the assigned group. This enables you to monitor thousands of users with a single policy and keep the communication compliance policy updated as new employees join your organization.

1. Create a dedicated [distribution group](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-distributiongroup?view=exchange-ps) for your global communication compliance policy with the following properties: Make sure that this distribution group isn't used for other purposes or other Office 365 services.

    - **MemberDepartRestriction = Closed**. Ensures that users cannot remove themselves from the distribution group.
    - **MemberJoinRestriction = Closed**. Ensures that users cannot add themselves to the distribution group.
    - **ModerationEnabled = True**. Ensures that all messages sent to this group are subject to approval and that the group is not being used to communicate outside of the communication compliance policy configuration.

    ```
    New-DistributionGroup -Name <your group name> -Alias <your group alias> -MemberDepartRestriction 'Closed' -MemberJoinRestriction 'Closed' -ModerationEnabled $true
    ```
2. Select an unused [Exchange custom attribute](https://docs.microsoft.com/Exchange/recipients/mailbox-custom-attributes?view=exchserver-2019&viewFallbackFrom=exchonline-ww) to track users added to the communication compliance policy in your organization.

3. Run the following PowerShell script on a recurring schedule to add users to the communication compliance policy:

    ```
    $Mbx = (Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize Unlimited -Filter {CustomAttribute9 -eq $Null})
    $i = 0
    ForEach ($M in $Mbx) 
    {
      Write-Host "Adding" $M.DisplayName
      Add-DistributionGroupMember -Identity <your group name> -Member $M.DistinguishedName -ErrorAction SilentlyContinue
      Set-Mailbox -Identity $M.Alias -<your custom attribute name> SRAdded 
      $i++
    }
    Write-Host $i "Mailboxes added to supervisory review distribution group."
    ```

For more information about setting up groups, see:

- [Create and manage distribution groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-distribution-groups/manage-distribution-groups)
- [Manage mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups)
- [Overview of Office 365 Groups](https://docs.microsoft.com/office365/admin/create-groups/office-365-groups?view=o365-worldwide)

## Step 2: Make communication compliance available in your organization (required)

To make **Communication compliance** available as a menu option in Microsoft 365 compliance center, you must be assigned the Supervisory Review Administrator role.
  
To do this, you can either add yourself as a member of the Supervisory Review role group, or you can create a role group.
  
### Add members to the Supervisory Review role group

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, go to **Permissions**.

3. Select the **Supervisory Review** role group and then click the Edit icon.

4. In the **Members** section, add the people who you want to manage communication compliance for your organization.

### Create a new role group

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Office 365 organization.

2. In the Microsoft 365 compliance center, go to **Permissions** and then click Add (**+**).

3. In the **Roles** section, click Add (**+**) and scroll down to **Supervisory Review Administrator**. Add this role to the role group.

4. In the **Members** section, add the people who you want to manage communication compliance for your organization.

For more information about role groups and permissions, see [Permissions in the Compliance Center](../security/office-365-security/protect-against-threats.md).

## Step 3: Create a communication compliance policy (required)
  
1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, select **Communication compliance**.
  
3. Select the **Policies** tab.

4. Select **Create policy** to create and configure a new policy from a template or to create and configure a custom policy.

    If you choose a policy template to create a policy, you will:

    - Confirm or update the policy name
    - Choose the users or groups to supervise, including choosing users or groups you'd like to exclude.
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Choose a limited condition field, usually a keyword dictionary to apply to the policy.

    If you choose to use the wizard to create a custom policy, you will:

    - Give the policy a name and description.
    - Choose the users or groups to supervise, including choosing users or groups you'd like to exclude.
    - Define the communication compliance policy [conditions](communication-compliance-feature-reference.md#ConditionalSettings). You can choose from message address, keyword, file types, and size match conditions.
    - Choose if you'd like to include sensitive information types. This is where you can select default and custom sensitive info types. You'll pick from existing custom sensitive information types or custom keyword dictionaries in the communication compliance policy wizard, you can create these items before running the wizard if needed. If desired, you can also create new sensitive information types from within the communication compliance policy wizard.
    - Choose if you'd like to enable the offensive language model. This detects inappropriate language sent or received in the body of email messages.
    - Define the percentage of communications to review.
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Review your policy selections and create the policy.

## Step 4: Create employee notice templates (optional)

If you want to have the option of responding to a policy alert by sending a reminder notice to the associated employee, you'll need to create at least one notice template in your organization. The notice template fields are editable prior to sending as part of the alert remediation process and creating a customized notice template for each communication compliance policy is recommended.

1. Sign into [https://compliance.microsoft.com](https://compliance.microsoft.com) using credentials for an admin account in your Microsoft 365 organization.

2. In the Microsoft 365 compliance center, go to **Communication compliance**.

3. Select the **Notice templates** tab and then select **Create notice template**.

4. On the **Modify a notice template** page, complete the following fields:

    - Notice template name (required)
    - Send from (required)
    - CC and BCC (optional)
    - Subject (required)
    - Message body (required)

5. Select **Save** to create and save the notice template.

## Step 5: Test your communication compliance policy (optional)

After you create a communication compliance policy, it's a good idea to test to make sure that the conditions you defined are being properly enforced by the policy. You may also want to [test your data loss prevention (DLP) policies](create-test-tune-dlp-policy.md) if your communication compliance policies include sensitive information types. Follow these steps to test your communication compliance policy:

1. Open an email client or Microsoft Teams logged in as a supervised user defined in the policy you want to test.
2. Send an email or Microsoft Teams chat that meets the criteria you've defined in the communication compliance policy. This can be a keyword, attachment size, domain, etc. Make sure that you determine if your configured conditional settings in the policy are too restrictive or too lenient.

    > [!NOTE]
    > Emails subject to defined policies are processed in near real-time and can be tested immediately after the policy is configured. Chats in Microsoft Teams can take up to 24 hours to fully process in a policy.

3. Log into Microsoft 365 as a reviewer designated in the communication compliance policy. Navigate to **Communication compliance** > **Policies** > *Your Custom Policy* to view the alerts for the policy.
