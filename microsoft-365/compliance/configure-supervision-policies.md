---
title: "Configure supervision policies for your organization"
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
description: "Set up supervisory review policies to capture employee communications for review."
---

# Configure supervision policies for your organization

Use supervision policies to capture employee communications for examination by internal or external reviewers. For more information about how supervision policies can help you monitor communications in your organization, see [Supervision policies in Office 365](supervision-policies.md).

> [!NOTE]
> Users monitored by supervision policies must have either a Microsoft 365 E5 Compliance license, an Office 365 Enterprise E3 license with the Advanced Compliance add-on, or be included in an Office 365 Enterprise E5 subscription.
> If you don't have an existing Enterprise E5 plan and want to try supervision, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279).
  
Follow these steps to set up and use supervision in your Office 365 organization:
  
- **Step 1 (optional)**: [Set up groups for Supervision](#step-1-set-up-groups-for-supervision-optional) 

    Before you start using supervision, determine who needs communications reviewed and who performs reviews. If you want to get started with just a few users to see how supervision works, you can skip setting up groups for now.

- **Step 2 (required)**: [Make supervision available in your organization](#step-2-make-supervision-available-in-your-organization-required)

    Add yourself to the Supervisory Review role group so you can set up policies. Anyone who has this role assigned can access the **Supervision** page in the Compliance Center. If reviewable email is hosted on Exchange Online, each reviewer must have [remote PowerShell access to Exchange Online](https://docs.microsoft.com/powershell/exchange/exchange-online/disable-access-to-exchange-online-powershell).

- **Step 3 (optional)**: [Create custom sensitive information types and custom keyword dictionaries](#step-3-create-custom-sensitive-information-types-and-custom-keyword-dictionaries-optional)

    If you need a custom sensitive info type or a custom keyword dictionary for your supervision policy, you need to create it before starting the supervision wizard.

- **Step 4 (required)**: [Set up a supervision policy](#step-4-set-up-a-supervision-policy-required)

    You create supervision policies in the Compliance Center. These policies define which communications are subject to review in your organization and specifies who performs reviews. Communications include email and Microsoft Teams communications, and 3rd-party platform communications (such as Facebook, Twitter, etc.)

- **Step 5 (optional)**: [Test your supervision policy](#step-5-test-your-supervision-policy-optional)

    Test your supervision policy to make sure it functions as desired. It is important to ensure that your compliance strategy is meeting your standards.

- **Step 6 (optional)**: [Configure Outlook for reviewers who do not want to use Office 365 supervision dashboard to review supervised communications](#step-6-configure-outlook-for-reviewers-optional)

    Configure Outlook to give reviewers access to the supervision functionality within the Outlook client so they can assess and categorize each item.

## Step 1: Set up groups for Supervision (optional)

 When you create a supervision policy, you define who has their communications reviewed and who performs reviews. In the policy, you'll use email addresses to identify individuals or groups of people. To simplify your setup, you can create groups for people who have their communication reviewed and groups for people who review those communications. If you're using groups, you may need several. For example, you want to monitor communications between two distinct groups of people or if you want to specify a group that isn't going to be supervised.

Use the following chart to help you configure groups in your organization for supervision policies:

| **Policy Member** | **Supported Groups** | **Unsupported Groups** |
|:-----|:-----|:-----|
|Supervised users <br> Non-supervised users | Distribution groups <br> Office 365 groups | Dynamic distribution groups |
| Reviewers | Mail-enabled security groups  | Distribution groups <br> Dynamic distribution groups |
  
When you select an Office 365 group for supervised users, the policy monitors the content of the shared Office 365 mailbox and the Microsoft Teams channels associated with the group. When you select a distribution list, the policy monitors individual user mailboxes.

To manage supervised users in large enterprise organizations, you may need to monitor all users across large groups. You can use PowerShell to configure a distribution group for a global supervision policy for the assigned group. This enables you to monitor thousands of users with a single policy and keep the supervision policy updated as new employees join your organization.

1. Create a dedicated [distribution group](https://docs.microsoft.com/powershell/module/exchange/users-and-groups/new-distributiongroup?view=exchange-ps) for your global supervision policy with the following properties: Make sure that this distribution group isn't used for other purposes or other Office 365 services.

    - **MemberDepartRestriction = Closed**. Ensures that users cannot remove themselves from the distribution group.
    - **MemberJoinRestriction = Closed**. Ensures that users cannot add themselves to the distribution group.
    - **ModerationEnabled = True**. Ensures that all messages sent to this group are subject to approval and that the group is not being used to communicate outside of the supervision policy configuration.

    ```
    New-DistributionGroup -Name <your group name> -Alias <your group alias> -MemberDepartRestriction 'Closed' -MemberJoinRestriction 'Closed' -ModerationEnabled $true
    ```
2. Select an unused [Exchange custom attribute](https://docs.microsoft.com/Exchange/recipients/mailbox-custom-attributes?view=exchserver-2019&viewFallbackFrom=exchonline-ww) to track users added to the supervision policy in your organization.

3. Run the following PowerShell script on a recurring schedule to add users to the supervision policy:

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

## Step 2: Make supervision available in your organization (required)

To make **Supervision** available as a menu option in the Compliance Center, you must be assigned the Supervisory Review Administrator role.
  
To do this, you can either add yourself as a member of the Supervisory Review role group, or you can create a role group.
  
### Add members to the Supervisory Review role group

1. Sign into [https://protection.office.com](https://protection.office.com) using credentials for an admin account in your Office 365 organization.

2. In the Compliance Center, go to **Permissions**.

3. Select the **Supervisory Review** role group and then click the Edit icon.

4. In the **Members** section, add the people who you want to manage supervision for your organization.

### Create a new role group

1. Sign into [https://protection.office.com](https://protection.office.com) using credentials for an admin account in your Office 365 organization.

2. In the Compliance Center, go to **Permissions** and then click Add (**+**).

3. In the **Roles** section, click Add (**+**) and scroll down to **Supervisory Review Administrator**. Add this role to the role group.

4. In the **Members** section, add the people who you want to manage supervision for your organization.

For more information about role groups and permissions, see [Permissions in the Compliance Center](../security/office-365-security/protect-against-threats.md).

### Enable remote PowerShell access for reviewers (if email is hosted on Exchange Online)

1. Follow the guidance in [Enable or disable access to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/disable-access-to-exchange-online-powershell).

## Step 3: Create custom sensitive information types and custom keyword dictionaries (optional)

In order to pick from existing custom sensitive information types or custom keyword dictionaries in the supervision policy wizard, you first need to create these items if needed.

### Create custom keyword dictionary/lexicon (optional)

Use a text editor (like Notepad), to create a file that includes the keyword terms you'd like to monitor in a supervision policy. Make sure that each term is on a separate line and save the file in the **Unicode/UTF-16 (Little Endian)** format.

### Create custom sensitive information types

1. Create a new sensitive information type and add your custom dictionary in the Office 365 Security & Compliance Center. Navigate to **Classifications** \> **Sensitive info types** and follow the steps in the **New sensitive info type wizard**. Here you will:

    - Define a name and description for the sensitive info type
    - Define the proximity, confidence level, and primary pattern elements
    - Import your custom dictionary as a requirement for the matching element
    - Review your selections and create the sensitive info type

    For more detailed information, see [Create a custom sensitive information type](create-a-custom-sensitive-information-type.md) and [Create a keyword dictionary](create-a-keyword-dictionary.md)

    After the custom dictionary/lexicon is created, you can view the configured keywords with the [Get-DlpKeywordDictionary](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-dlp/get-dlpkeyworddictionary) cmdlet or add and remove terms using the [Set-DlpKeywordDictionary](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance-dlp/set-dlpkeyworddictionary) cmdlet.

## Step 4: Set up a supervision policy (required)
  
1. Sign into [https://protection.office.com](https://protection.office.com) using credentials for an admin account in your Office 365 organization.

2. In the Compliance Center, select **Supervision**.
  
3. Select **Create** and follow the wizard to set up the policy configuration. Using the wizard, you will:

    - Give the policy a name and description.
    - Choose the users or groups to supervise, including choosing users or groups you'd like to exclude.
    - Define the supervision policy [conditions](supervision-policies.md#ConditionalSettings). You can choose from message address, keyword, file types, and size match conditions.
    - Choose if you'd like to include sensitive information types. This is where you can select default and custom sensitive info types.
    - Choose if you'd like to enable the offensive language model. This detects inappropriate language sent or received in the body of email messages.
    - Define the percentage of communications to review.
    - Choose the reviewers for the policy. Reviewers can be individual users or [mail-enabled security groups](https://docs.microsoft.com/Exchange/recipients-in-exchange-online/manage-mail-enabled-security-groups#create-a-mail-enabled-security-group). All reviewers must have mailboxes hosted on Exchange Online.
    - Review your policy selections and create the policy.

## Step 5: Test your supervision policy (optional)

After you create a supervision policy, it's a good idea to test to make sure that the conditions you defined are being properly enforced by the policy. You may also want to [test your data loss prevention (DLP) policies](create-test-tune-dlp-policy.md) if your supervision policies include sensitive information types. Follow these steps to test your supervision policy:

1. Open an email client or Microsoft Teams logged in as a supervised user defined in the policy you want to test.
2. Send an email or Microsoft Teams chat that meets the criteria you've defined in the supervision policy. This can be a keyword, attachment size, domain, etc. Make sure that you determine if your configured conditional settings in the policy are too restrictive or too lenient.

    > [!Note]
    > Emails subject to defined policies are processed in near real-time and can be tested immediately after the policy is configured. Chats in Microsoft Teams can take up to 24 hours to fully process in a policy. 

3. Log into your Office 365 tenant as a reviewer designated in the supervision policy. Navigate to **Supervision** > *Your Custom Policy* > **Open** to view the report for the policy.

## Step 6: Configure Outlook for reviewers (optional)

Reviewers that want to use Outlook instead of the Supervision dashboard in Office 365 to review communications must configure their Outlook client.

### Step 1: Copy the address for the supervision mailbox

To configure review for Outlook desktop, you need the address for the supervision mailbox created as part of the supervision policy setup.
  
> [!NOTE]
> If someone else created the policy, you need to get this address from them to install the add-in.

**To find the supervision mailbox address**
  
1. Sign into the [Compliance Center](https://compliance.microsoft.com) using credentials for an admin account in your organization.

2. Go to **Supervision**.

3. Select a supervision policy for the communications you want to review.

4. In the policy details flyout, under **Supervision mailbox**, copy the address.<br/>![The 'Supervision Mailbox' section of a supervision policy's details flyout showing the supervision mailbox address highlighted](media/71779d0e-4f01-4dd3-8234-5f9c30eeb067.jpg)
  
### Step 2: Configure the supervision mailbox for Outlook access

Next, reviewers need to run a couple Exchange Online PowerShell commands so they can connect Outlook to the supervision mailbox.
  
1. Connect to Exchange Online PowerShell. [How do I do this?](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell)

2. Run the following commands, where  *SupervisoryReview{GUID}@domain.onmicrosoft.com*  is the address you copied in Step 1 above, and  *User*  is the name of the reviewer who will connect to the supervision mailbox in Step 3.

    ```Add-MailboxPermission "SupervisoryReview{GUID}@domain.onmicrosoft.com" -User <alias or email address of the account that has reviewer permissions to the supervision mailbox> -AccessRights FullAccess```

    ```Set-Mailbox "<SupervisoryReview{GUID}@domain.onmicrosoft.com>" -HiddenFromAddressListsEnabled: $false```

3. Wait at least an hour before moving on to Step 3.

### Step 3: Create an Outlook profile to connect to the supervision mailbox

For the final step, reviewers need to create an Outlook profile to connect to the supervision mailbox.

> [!NOTE]
> To create a new Outlook profile, you'll use the Mail settings in the Windows Control Panel. The path you take to get to these settings might depend on which Windows operating system (Windows 7, Windows 8, or Windows 10) you're using, and which version of Outlook is installed.
  
1. Open the Control Panel. In the **Search** box at the top of the window, type **Mail**.<br/>(Not sure how to get to the Control Panel? See [Where is Control Panel?](https://support.microsoft.com/help/13764/windows-where-is-control-panel))
  
2. Open the **Mail** app.

3. In **Mail Setup - Outlook**, click **Show Profiles**.<br/>![The 'Mail Setup - Outlook' dialog box with the 'Show Profiles' button highlighted](media/28b5dae9-d10c-4f2b-926a-294c857d555c.jpg)
  
4. In **Mail**, click **Add**. Then, in **New Profile**, enter a name for the supervision mailbox (such as **Supervision**).<br/>![The 'New Profile' dialog showing the name 'Supervision' in the 'Profile Name' box](media/d02ae181-b541-4ec6-8f51-698f30033204.jpg)
  
5. In **Connect Outlook to Office 365**, click **Connect to a different account**.<br/>![The 'Connect Outlook to Office 365' message with the 'Connect to a different account' link highlighted](media/fac49ff8-a7f0-4e82-a271-9ec045a95de1.jpg)
  
6. In **Auto Account Setup**, choose **Manual setup or additional server types**, and then click **Next**.

7. In **Choose Your Account Type**, choose **Office 365**. Then, in the **Email Address** box, enter the address of the supervision mailbox you copied previously.<br/>![The 'Choose Your Account Type' page of the 'Add Account' dialog in Outlook showing the 'Email Address' box highlighted.](media/4f601236-9f69-4cf6-a58c-0b91204aa8cb.jpg)
  
8. When prompted, enter your Office 365 credentials.

9. If successful, the **Supervision — \<policy name\>** folder is listed in the Folder List view in Outlook.

## PowerShell reference

If needed, you can create and manage supervision policies with the following PowerShell cmdlets:

- [New-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-supervisoryreviewpolicyv2?view=exchange-ps)
- [Get-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/get-supervisoryreviewpolicyv2?view=exchange-ps)
- [Set-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-supervisoryreviewpolicyv2?view=exchange-ps)
- [Remove-SupervisoryReviewPolicyV2](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/remove-supervisoryreviewpolicyv2?view=exchange-ps)
- [New-SupervisoryReviewRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-supervisoryreviewrule?view=exchange-ps)
- [Set-SupervisoryReviewRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/set-supervisoryreviewrule?view=exchange-ps)
- [Get-SupervisoryReviewActivity](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewactivity)
- [Get-SupervisoryReviewOverallProgressReport](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewoverallprogressreport)
- [Get-SupervisoryReviewTopCasesReport](https://docs.microsoft.com/powershell/module/exchange/reporting/get-supervisoryreviewtopcasesreport)
