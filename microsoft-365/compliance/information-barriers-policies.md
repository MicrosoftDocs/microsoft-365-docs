---
title: "Get started with information barriers"
description: Learn how to get started with information barriers in Microsoft Purview.
keywords: Microsoft 365, Microsoft Purview, compliance, information barriers
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 03/21/2023
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- highpri 
- tier2
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
---

# Get started with information barriers

This article describes how to configure information barriers (IB) policies in your organization. Several steps are involved, so make sure you review the entire process before you begin configuring IB policies.

You'll configure IB in your organization using the [Microsoft Purview compliance portal](https://compliance.microsoft.com) or by using [Office 365 Security and Compliance PowerShell](/powershell/exchange/scc-powershell). For organizations configuring IB for the first time, we recommend using the **Information barriers** solution in the compliance portal. If you're managing an existing IB configuration and you're comfortable using PowerShell, you still have this option.

For more information about IB scenarios and features, see [Learn about information barriers](information-barriers.md).

> [!TIP]
> To help you prepare your plan, an [example scenario](#example-scenario-contosos-departments-segments-and-policies) is included in this article.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Required subscriptions and permissions

Before you get started with IB, you should confirm your Microsoft 365 subscription and any add-ons. To access and use IB, your organization must have one of the following subscriptions or add-ons:

- Microsoft 365 E5/A5 subscription (paid or trial version)
- Office 365 E5/A5/A3/A1 subscription (paid or trial version)
- Office 365 Advanced Compliance add-on (no longer available for new subscriptions)
- Microsoft 365 E3/A3/A1 subscription + the Microsoft 365 E5/A5 Compliance add-on
- Microsoft 365 E3/A3/A1 subscription + the Microsoft 365 E5/A5 Insider Risk Management add-on

For more information, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

To [manage IB policies](information-barriers-policies.md), you must be assigned one of the following roles:

- Microsoft 365 global administrator
- Office 365 global administrator
- Compliance administrator
- IB Compliance Management

To learn more about roles and permissions, see [Roles and role groups in the Microsoft 365 Defender and Microsoft Purview compliance portals](../security/office-365-security/scc-permissions.md).

## Configuration concepts

When you configure IB, you'll work with several objects and concepts.

- **User account attributes** are defined in Azure Active Directory (or Exchange Online). These attributes can include department, job title, location, team name, and other job profile details. You'll assign users or groups to segments with these attributes.
- **Segments** are sets of groups or users that are defined in the compliance portal or by using PowerShell that uses selected group or user account attributes.

    Your organization can have up to 5,000 segments and users can be assigned to a maximum of 10 segments. See the list of [IB supported attributes](information-barriers-attributes.md) for details.

    > [!IMPORTANT]
    > Support for 5,000 segments and assigning users to multiple segments is only available when your organization isn't in *Legacy* mode. Assigning users to multiple segments requires additional actions to change the information barriers mode for your organization. For more information, see [Use multi-segment support in information barriers](information-barriers-multi-segment.md) for details. <br><br> For organizations in *Legacy* mode, the maximum number of segments supported is 250 and users are restricted to being assigned to only one segment. Organizations in *Legacy* mode will be eligible to upgrade to the newest version of information barriers in the future. For more information, see the [information barriers roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=information%2Cbarriers).

- **IB policies** determine communication limits or restrictions. When you define IB policies, you choose from two kinds of policies:
  - *Block* policies prevent one segment from communicating with another segment.
  - *Allow* policies allow one segment to communicate with only certain other segments.

    > [!NOTE]
    > **For organizations in *Legacy* mode**: Non-IB groups and users **will not be visible** to users included in IB segments and policies for *allow* policies. If you need non-IB groups and users to be visible to users included in IB segments and policies, you must use *block* policies. <br><br> **For organizations in *SingleSegment* or *MultiSegment* mode**: Non-IB groups and users **will be visible** to users included in IB segments and policies for *allow* policies. <br><br> To verify your IB mode, see [Check the IB mode for your organization](/microsoft-365/compliance/information-barriers-multi-segment#check-the-ib-mode-for-your-organization).

- **Policy application** is done after all IB policies are defined, and you're ready to apply them in your organization.
- **Visibility of non-IB users and groups**: Non-IB users and groups are users and groups excluded from IB segments and policies. Depending on when you configure IB policies in your organization and the type of IB policies (block or allow), the behavior for these users and group will differ in Microsoft Teams, SharePoint, OneDrive, and in your global address list.
    - **For organizations in *Legacy* mode**: For users defined in *allow* policies, non-IB groups and users won't be visible to users included in IB segments and policies. For users defined in *block* policies, non-IB groups and users will be visible to users included in IB segments and policies.
    - **For organizations in *SingleSegment* or *MultiSegment* mode**: For users defined in *allow* and *block* policies, non-IB groups and users will be visible to users included in IB segments and policies.
- **Group support**. Only Modern Groups are currently supported in IB and Distribution Lists/Security Groups are treated as non-IB groups.
- **Hidden/disabled user and guest accounts**. For hidden/disabled user and guest accounts in your organization, the *HiddenFromAddressListEnabled* parameter is automatically set to *True* when user accounts are hidden or disabled, or when a guest is created. When the organization mode is *Legacy* for IB-enabled organizations, these accounts are prevented from communicating with all other user accounts. Administrators can disable this default behavior by manually setting the *HiddenFromAddressListEnabled* parameter to *False*.

## Configuration overview

| **Steps** | **What's involved** |
|:------|:----------------|
| **Step 1**: [Make sure prerequisites are met](#step-1-make-sure-prerequisites-are-met) | - Verify that you have the required subscriptions and permissions <br/>- Verify that your directory includes data for segmenting users<br/>- Enable [search by name for Microsoft Teams](/microsoftteams/teams-scoped-directory-search)<br/>- Make sure audit logging is turned on <br/> - Check the IB mode for your organization <br/>- Configure how Exchange address book policies are implemented  (depending on when you've enable IB in your organization) <br/>- Provide admin consent for Microsoft Teams (steps are included) |
| **Step 2**: [Segment users in your organization](#step-2-segment-users-in-your-organization) | - Determine what policies are needed<br/>- Make a list of segments to define<br/>- Identify which attributes to use<br/>- Define segments in terms of policy filters |
| **Step 3**: [Create information barriers policies](#step-3-create-ib-policies) | - Create your policies (don't apply yet)<br/>- Choose from two kinds (block or allow) |
| **Step 4**: [Apply information barriers policies](#step-4-apply-ib-policies) | - Set policies to active status<br/>- Run the policy application<br/>- View policy status |
| **Step 5**: [Configuration for information barriers on SharePoint and OneDrive (optional)](#step-5-configuration-for-information-barriers-on-sharepoint-and-onedrive) | - Configure IB for SharePoint and OneDrive |
| **Step 6**: [Information barriers modes (optional)](#step-6-information-barriers-modes-optional) | - Update IB modes if applicable |
| **Step 7**: [Configure user discoverability for information barriers (optional)](#step-7-configure-user-discoverability-for-information-barriers-optional) | - Enable or restrict user discoverability in IB with the people picker if applicable. |

## Step 1: Make sure prerequisites are met

In addition to the required subscriptions and permissions, make sure that the following requirements are met before configuring IB:

- **Directory data**: Make sure that your organization's structure is reflected in directory data. To take this action, make sure that user account attributes (such as group membership, department name, etc.) are populated correctly in Azure Active Directory (or Exchange Online). To learn more, see the following resources:
  - [Attributes for information barriers policies](information-barriers-attributes.md)
  - [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal)
  - [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md)

- **Scoped directory search**: Before you define your organization's first IB policy, you must [enable scoped directory search in Microsoft Teams](/MicrosoftTeams/teams-scoped-directory-search). Wait at least 24 hours after enabling scoped directory search before you set up or define IB policies.

- **Verify audit logging is enabled**: In order to look up the status of an IB policy application, audit logging must be turned on. Auditing is enabled for Microsoft 365 organizations by default. Some organizations may have disabled auditing for specific reasons. If auditing is disabled for your organization, it might be because another administrator has turned it off. We recommend confirming that it's OK to turn auditing back on when completing this step. For more information, see [Turn the audit log search on or off](audit-log-enable-disable.md).

- **Check the IB mode for your organization**: Support for multiple segments, people discoverability options, Exchange ABPs, and other features is determined by the IB mode for your organization. To verify the IB mode for your organization, see [Check the IB mode for your organization](/microsoft-365/compliance/information-barriers-multi-segment#check-the-ib-mode-for-your-organization).

- **Remove existing Exchange Online address book policies (optional)**:
    - **For organizations in *Legacy* mode**: Before you define and apply IB policies, you must remove all existing Exchange Online address book policies in your organization. IB policies are based on address book policies and existing ABPs policies aren't compatible with the ABPs created by IB. To remove your existing address book policies, see [Remove an address book policy in Exchange Online](/exchange/address-books/address-book-policies/remove-an-address-book-policy). For more information about IB policies and Exchange Online, see [Information barriers and Exchange Online](information-barriers.md#information-barriers-and-exchange-online).
    - **For organizations in *SingleSegment* or *MultiSegment* mode**: Information barriers is no longer based on Exchange Online Address Book Policies (ABPs). Organizations using ABPs won't have any impact to the existing ABPs when enabling information barriers.

- **Manage using PowerShell (optional)**: IB segments and policies can be defined and managed in the compliance portal, but you can also use the Office 365 Security & Compliance PowerShell if preferred or needed. Although several examples are provided in this article, you'll need to be familiar with PowerShell cmdlets and parameters if you choose to use PowerShell to configure and manage IB segments and policies. You'll also need the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) if you choose this configuration option.
  - [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell)
  - [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation)

- **Admin consent for IB in Microsoft Teams**: When your IB policies are in place, they can remove non-IB compliance users from Groups (for example, Teams channels, which are based on groups). This configuration helps ensure your organization remains compliant with policies and regulations. Use the following procedure to enable IB policies to work as expected in Microsoft Teams.

   1. Prerequisite: [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation).

   2. Run the following PowerShell cmdlets:

      ```powershell
      Connect-MgGraph -Tenant "<yourtenantdomain.com>"  //for example: Connect-MgGraph -Tenant "Contoso.onmicrosoft.com"
      $appId="bcf62038-e005-436d-b970-2a472f8c1982" 
      $sp=Get-MgServicePrincipal -Filter "appid eq '$($appid)'"
      if ($sp -eq $null) { New-MgServicePrincipal -AppId $appId }
      Start-Process  "https://login.microsoftonline.com/common/adminconsent?client_id=$appId"
      ```

   3. When prompted, sign in using your work or school account for Office 365.

   4. In the **Permissions requested** dialog box, review the information, and then choose **Accept**.

When all the prerequisites are met, proceed to the next step.

## Step 2: Segment users in your organization

In this step, you'll determine what IB policies are needed, make a list of segments to define, and define your segments. Defining segments doesn't affect users, it just sets the stage for IB policies to be defined and then applied.

### Determine what policies are needed

Considering the needs of your organization, determine the groups within your organization who will need IB policies. Ask yourself the following questions:

- Are there internal, legal, or industry regulations that require the restriction of communication and collaboration between groups and users in your organization?
- Are there any groups or users who should be prevented from communicating with another group of users?
- Are there any groups or users that should be allowed to communicate only with one or two other groups of users?

Think about the policies you need as belonging to one of two types:

- *Block* policies prevent one group from communicating with another group.
- *Allow* policies allow a group to communicate with only specific groups.

When you have your initial list of needed groups and policies, proceed to identify the segments you'll need for the IB policies.

### Identify segments

In addition to your initial list of policies, make a list of segments for your organization. Users who will be included in IB policies should belong to at least one segment. Users can be assigned to multiple segments if needed. You can have up to 5,000 segments in your organization and each segment can have only one IB policy applied.

> [!IMPORTANT]
> A user can only be in one segment for organizations in *Legacy* or *SingleSegement* modes. To verify your IB mode, see [Check the IB mode for your organization](/microsoft-365/compliance/information-barriers-multi-segment#check-the-ib-mode-for-your-organization).

Determine which attributes in your organization's directory data you'll use to define segments. You can use *Department*, *MemberOf*, or any of the supported IB attributes. Make sure that you have values in the attribute you select for users. For more information, see the [supported attributes for IB](information-barriers-attributes.md).

> [!IMPORTANT]
> **Before you proceed to the next section, make sure your directory data has values for attributes that you can use to define segments**. If your directory data does not have values for the attributes you want to use, then the user accounts must be updated to include that information before you proceed with configuring IB. To get help with this, see the following resources: <br/><br/>- [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md)<br/>- [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal)

### Enable multiple segment support for users (optional)

Support for assigning users to multiple segments is only available when your organization isn't in *Legacy* mode. If you want to support assigning users to multiple segments, see [Use multi-segment support in information barriers](information-barriers-multi-segment.md).

Users are restricted to being assigned to only one segment for organizations in *Legacy* mode. Organizations in *Legacy* mode will be eligible to upgrade to the newest version of information barriers in the future. For more information, see the [information barriers roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=information%2Cbarriers).



### Define segments using the compliance portal

To define segments in the compliance portal, complete the following steps:

1. Sign into the [compliance portal](https://compliance.microsoft.com) using credentials for an admin account in your organization.
2. In the compliance portal, select **Information barriers** > **Segments**.
3. On the **Segments** page, select **New segment** to create and configure a new segment.
4. On the **Name** page, enter a name for the segment. You can't rename a segment once it's created.
5. Select **Next**.
6. On the **User group filter** page, select **Add** to configure the group and user attributes for the segment. Choose an attribute for the segment from the list of available attributes.
7. For the selected attribute, select either *Equal* or *Not equal* and then enter the value for the attribute. For example, if you selected *Department* as the attribute and *Equals*, you could enter *Marketing* as the defined *Department* for this segment condition. You can add additional conditions for an attribute by selecting **Add condition**. If you need to delete an attribute or attribute condition, select the delete icon for the attribute or condition.
8. Add additional attributes as needed on the **User group filter** page, then select **Next**.
9. On the **Review your settings** page, review the settings you've chosen for the segment and any suggestions or warnings for your selections. Select **Edit** to change any of the segment attributes and conditions or select **Submit** to create the segment.

### Define segments using PowerShell

To define segments with PowerShell, complete the following steps:

1. Use the **New-OrganizationSegment** cmdlet with the **UserGroupFilter** parameter that corresponds to the [attribute](information-barriers-attributes.md) you want to use.

    | Syntax | Example |
    |:---------|:----------|
    | `New-OrganizationSegment -Name "segmentname" -UserGroupFilter "attribute -eq 'attributevalue'"` |`New-OrganizationSegment -Name "HR" -UserGroupFilter "Department -eq 'HR'"` <p>In this example, a segment called *HR* is defined using *HR*, a value in the *Department* attribute. The **-eq** portion of the cmdlet refers to "equals." (Alternately, you can use **-ne** to mean "not equals". See [Using "equals" and "not equals" in segment definitions](#using-equals-and-not-equals-in-powershell-segment-definitions).) |

    After you run each cmdlet, you should see a list of details about the new segment. Details include the segment's type, who created or last modified it, and so on. 

2. Repeat this process for each segment you want to define.

After you've defined your segments, proceed to [Step 3: Create IB policies](#step-3-create-ib-policies).

### Using "equals" and "not equals" in PowerShell segment definitions

In the following example, we're configuring IB segments using PowerShell and defining a segment such that 'Department equals HR'.

| Example | Note |
|:----------|:-------|
|`New-OrganizationSegment -Name "HR" -UserGroupFilter "Department -eq 'HR'"` | Notice that in this example, the segment definition includes an "equals" parameter denoted as **-eq**. |

You can also define segments using a "not equals" parameter, denoted as **-ne**, as shown in the following table:

| Syntax | Example |
|:---------|:----------|
| `New-OrganizationSegment -Name "NotSales" -UserGroupFilter "Department -ne 'Sales'"` | In this example, we defined a segment called *NotSales* that includes everyone who isn't in *Sales*. The **-ne** portion of the cmdlet refers to "not equals". |

In addition to defining segments using "equals" or "not equals", you can define a segment using both "equals" and "not equals" parameters. You can also define complex group filters using logical *AND* and *OR* operators.

| Syntax | Example |
|:---------|:----------|
| `New-OrganizationSegment -Name "LocalFTE" -UserGroupFilter "Location -eq 'Local'" -and "Position -ne 'Temporary'"` | In this example, we defined a segment called *LocalFTE* that includes users who are located locally and whose positions aren't listed as *Temporary*. |
| `New-OrganizationSegment -Name "Segment1" -UserGroupFilter "MemberOf -eq 'group1@contoso.com'' -and MemberOf -ne 'group3@contoso.com'"`| In this example, we defined a segment called *Segment1* that includes users who are members of group1@contoso.com and not members of group3@contoso.com. |
| `New-OrganizationSegment -Name "Segment2" -UserGroupFilter "MemberOf -eq 'group2@contoso.com' -or MemberOf -ne 'group3@contoso.com'"` | In this example, we defined a segment called *Segment2* that includes users who are members of group2@contoso.com and not members of group3@contoso.com. |
| `New-OrganizationSegment -Name "Segment1and2" -UserGroupFilter "(MemberOf -eq 'group1@contoso.com' -or MemberOf -eq 'group2@contoso.com') -and MemberOf -ne 'group3@contoso.com'"`| In this example, we defined a segment called *Segment1and2* that includes users in group1@contoso.com and group2@contoso.com and not members of group3@contoso.com. |

> [!TIP]
> If possible, use segment definitions that include "-eq" or "-ne". Try not to define complex segment definitions.

## Step 3: Create IB policies

When you create your IB policies, you'll determine whether you need to prevent communications between certain segments or limit communications to certain segments. Ideally, you'll use the minimum number of IB policies to ensure your organization is compliant with internal, legal, and industry requirements. You can use the compliance portal or PowerShell to create and apply IB policies.

> [!TIP]
> For user experience consistency, we recommend using *Block* policies for most scenarios if possible.

With your list of user segments and the IB policies you want to define, select a scenario, and then follow the steps.

- [Scenario 1: Block communications between segments](#scenario-1-block-communications-between-segments)
- [Scenario 2: Allow a segment to communicate only with one other segment](#scenario-2-allow-a-segment-to-communicate-only-with-one-other-segment)

> [!IMPORTANT]
> **Make sure that as you define policies, you do not assign more than one policy to a segment**. For example, if you define one policy for a segment called *Sales*, do not define an additional policy for the *Sales* segment.<br><br> In addition, as you define IB policies, make sure to set those policies to inactive status until you are ready to apply them. Defining (or editing) policies does not affect users until those policies are set to active status and then applied.

### Scenario 1: Block communications between segments

When you want to block segments from communicating with each other, you define two policies: one for each direction. Each policy blocks communication in one direction only.

For example, suppose you want to block communications between Segment A and Segment B. In this case, you'd define two policies:

- One policy preventing Segment A from communicating with Segment B
- A second policy to prevent Segment B from communicating with Segment A

#### Create policies using the compliance portal for Scenario 1

To define policies in the compliance portal, complete the following steps:

1. Sign into the [compliance portal](https://compliance.microsoft.com) using credentials for an admin account in your organization.
2. In the compliance portal, select **Information barriers** > **Policies**.
3. On the **Policies** page, select **Create policy** to create and configure a new IB policy.
4. On the **Name** page, enter a name for the policy, then select **Next**.
5. On the **Assigned segment** page, select **Choose segment**. Use the search box to search for a segment by name or scroll to select the segment from the displayed list. Select **Add** to add the selected segment to the policy. You can only select one segment.
6. Select **Next**.
7. On the **Communication and collaboration** page, select the policy type in the **Communication and collaboration** field. The policy options are either *Allowed* or *Blocked*. In this example scenario, *Blocked* would be selected for the first policy.

    >[!IMPORTANT]
    >The Allowed and Blocked status for segments can't be changed after creating a policy. To change the status after you create a policy, you must delete the policy and create a new one.

8. Select **Choose segment** to define the actions for the target segment. You can assign more than one segment in this step. For example, if you wanted to block users in a segment called *Sales* from communicating with users in a segment called *Research*, you would have defined the *Sales* segment in Step 5 and you would assign *Research* in the **Choose segment** option in this step.
9. Select **Next**.
10. On the **Policy status** page, toggle the active policy status to **On**. Select **Next** to continue.
11. On the **Review your settings** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Select **Edit** to change any of the policy segments and status or select **Submit** to create the policy.

In this example, you would repeat the previous steps to create a second *Block* policy to restrict to block users in a segment called *Research* from communicating with users in a segment called *Sales*. You would have defined the *Research* segment in Step 5 and you would assign *Sales* (or multiple segments) in the **Choose segment** option.

#### Create policies using PowerShell for Scenario 1

To define policies with PowerShell, complete the following steps:

1. To define your first blocking policy, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsBlocked** parameter.

    | Syntax | Example |
    |:--------|:----------|
    | `New-InformationBarrierPolicy -Name "policyname" -AssignedSegment "segmentAname" -SegmentsBlocked "segmentBname"` | `New-InformationBarrierPolicy -Name "Sales-Research" -AssignedSegment "Sales" -SegmentsBlocked "Research" -State Inactive` <p> In this example, we defined a policy called *Sales-Research* for a segment called *Sales*. When active and applied, this policy prevents users in *Sales* from communicating with users in a segment called *Research*. |

2. To define your second blocking segment, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsBlocked** parameter again, this time with the segments reversed.

    | Example | Note |
    |:----------|:-------|
    |`New-InformationBarrierPolicy -Name "Research-Sales" -AssignedSegment "Research" -SegmentsBlocked "Sales" -State Inactive` | In this example, we defined a policy called *Research-Sales* to prevent *Research* from communicating with *Sales*. |

3. Proceed to one of the following actions:

   - (If needed) [Define a policy to allow a segment to communicate only with one other segment](#scenario-2-allow-a-segment-to-communicate-only-with-one-other-segment) 
   - (After all your policies are defined) [Apply IB policies](#step-4-apply-ib-policies)

### Scenario 2: Allow a segment to communicate only with one other segment

When you want to allow a segment to communicate with only one other segment, you define two policies: one for each direction. Each policy allows communication in one direction only.

In this example, you'd define two policies:

- One policy allows Segment A to communicate with Segment B
- A second policy to allow Segment B to communicate with Segment A

#### Create policies using the compliance portal for Scenario 2

To define policies in the compliance portal, complete the following steps:

1. Sign into the [compliance portal](https://compliance.microsoft.com) using credentials for an admin account in your organization.
2. In the compliance portal, select **Information barriers** > **Policies**.
3. On the **Policies** page, select **Create policy** to create and configure a new IB policy.
4. On the **Name** page, enter a name for the policy, then select **Next**.
5. On the **Assigned segment** page, select **Choose segment**. Use the search box to search for a segment by name or scroll to select the segment from the displayed list. Select **Add** to add the selected segment to the policy. You can only select one segment.
6. Select **Next**.
7. On the **Communication and collaboration** page, select the policy type in the **Communication and collaboration** field. The policy options are either *Allowed* or *Blocked*. In this example scenario, *Allowed* would be selected for the policy.

    >[!IMPORTANT]
    >The Allowed and Blocked status for segments can't be changed after creating a policy. To change the status after you create a policy, you must delete the policy and create a new one.

8. Select **Choose segment** to define the actions for the target segment. You can assign more than one segment in this step. For example, if you wanted to allow users in a segment called *Manufacturing* to communicate with users in a segment called *HR*, you would have defined the *Manufacturing* segment in Step 5 and you would assign *HR* in the **Choose segment** option in this step.
9. Select **Next**.
10. On the **Policy status** page, toggle the active policy status to **On**. Select **Next** to continue.
11. On the **Review your settings** page, review the settings you've chosen for the policy and any suggestions or warnings for your selections. Select **Edit** to change any of the policy segments and status or select **Submit** to create the policy.
12. In this example, you would repeat the previous steps to create a second *Allow policy* to allow users in a segment called *Research* to communicate with users in a segment called *Sales*. You would have defined the *Research* segment in **Step 5** and you would assign *Sales* (or multiple segments) in the **Choose segment** option.

#### Create a policy using PowerShell for Scenario 2

To define policies with PowerShell, complete the following steps:

1. To allow one segment to communicate with the other segment, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsAllowed** parameter.

    | Syntax | Example |
    |:----------|:----------|
    | `New-InformationBarrierPolicy -Name "policyname" -AssignedSegment "segmentAname" -SegmentsAllowed "segmentBname","segment1name"` | `New-InformationBarrierPolicy -Name "Manufacturing-HR" -AssignedSegment "Manufacturing" -SegmentsAllowed "HR","Manufacturing" -State Inactive` <p> In this example, we defined a policy called *Manufacturing-HR* for a segment called *Manufacturing*. When active and applied, this policy allows users in *Manufacturing* to communicate only with users in a segment called *HR*. In this case, *Manufacturing* can't communicate with users who aren't part of *HR*. |

    **If needed, you can specify multiple segments with this cmdlet, as shown in the following example.**

    | Syntax | Example |
    |:---------|:----------|
    | `New-InformationBarrierPolicy -Name "policyname" -AssignedSegment "segmentAname" -SegmentsAllowed "segmentBname", "segmentCname","segmentDname"` | `New-InformationBarrierPolicy -Name "Research-HRManufacturing" -AssignedSegment "Research" -SegmentsAllowed "HR","Manufacturing","Research" -State Inactive` <p> In this example, we defined a policy that allows the *Research* segment to communicate with only *HR* and *Manufacturing*. |

    Repeat this step for each policy you want to define to allow specific segments to communicate with only certain other specific segments.

2. To define your second allowing segment, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsAllowed** parameter again, this time with the segments reversed.

    | Example | Note |
    |:--------|:-----|
    | `New-InformationBarrierPolicy -Name "Research-Sales" -AssignedSegment "Research" -SegmentsAllowed "Sales" -State Inactive` | In this example, we defined a policy called *Research-Sales* to allow *Research* to communicate with *Sales*. |

3. Proceed to one of the following actions:

   - (If needed) [Define a policy to block communications between segments](#scenario-1-block-communications-between-segments) 
   - (After all your policies are defined) [Apply IB policies](#step-4-apply-ib-policies)

## Step 4: Apply IB policies

IB policies aren't in effect until you set them to active status and apply the policies.

### Apply policies using the compliance portal

To apply policies in the compliance portal, complete the following steps:

1. Sign into the [compliance portal](https://compliance.microsoft.com) using credentials for an admin account in your organization.
2. In the compliance portal, select **Information barriers** > **Policy application**.
3. On the **Policies application** page, select **Apply all policies** to apply all IB policies in your organization.

    >[!NOTE]
    >Allow 30 minutes for the system to start applying the policies. The system applies policies user by user. The system processes about 5,000 user accounts per hour.

### Apply policies using PowerShell

To apply policies using PowerShell, complete the following steps:

1. Use the **Get-InformationBarrierPolicy** cmdlet to see a list of policies that have been defined. Note the status and identity (GUID) of each policy.

    Syntax: `Get-InformationBarrierPolicy`

2. To set a policy to active status, use the **Set-InformationBarrierPolicy** cmdlet with an **Identity** parameter, and the **State** parameter set to **Active**. 

    | Syntax | Example |
    |:---------|:----------|
    | `Set-InformationBarrierPolicy -Identity GUID -State Active` | `Set-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c93772471 -State Active` <p> In this example, we set an IB policy that has the GUID *43c37853-ea10-4b90-a23d-ab8c93772471* to active status. |

    Repeat this step as appropriate for each policy.

3. When you have finished setting your IB policies to active status, use the **Start-InformationBarrierPoliciesApplication** cmdlet in Security & Compliance PowerShell.

    Syntax: `Start-InformationBarrierPoliciesApplication`

    After you run `Start-InformationBarrierPoliciesApplication`, allow 30 minutes for the system to start applying the policies. The system applies policies user by user. The system processes about 5,000 user accounts per hour.

### View status of user accounts, segments, policies, or policy application

With PowerShell, you can view status of user accounts, segments, policies, and policy application, as listed in the following table.

| To view this information | Take this action |
|:---------------|:----------|
| User accounts | Use the **Get-InformationBarrierRecipientStatus** cmdlet with Identity parameters. <p> Syntax: `Get-InformationBarrierRecipientStatus -Identity <value> -Identity2 <value>` <p> You can use any value that uniquely identifies each user, such as name, alias, distinguished name, canonical domain name, email address, or GUID. <p> Example: `Get-InformationBarrierRecipientStatus -Identity meganb -Identity2 alexw` <p> In this example, we refer to two user accounts in Office 365: *meganb* for *Megan*, and *alexw* for *Alex*. <p> (You can also use this cmdlet for a single user: `Get-InformationBarrierRecipientStatus -Identity <value>`) <p> This cmdlet returns information about users, such as attribute values and any IB policies that are applied.|
| Segments | Use the **Get-OrganizationSegment** cmdlet.<p> Syntax: `Get-OrganizationSegment` <p> This cmdlet will display a list of all segments defined for your organization. |
| IB policies | Use the **Get-InformationBarrierPolicy** cmdlet. <p> Syntax: `Get-InformationBarrierPolicy` <p> This cmdlet will display a list of IB policies that were defined, and their status. |
| The most recent IB policy application | Use the **Get-InformationBarrierPoliciesApplicationStatus** cmdlet. <p> Syntax: `Get-InformationBarrierPoliciesApplicationStatus`<p> This cmdlet will display information about whether policy application completed, failed, or is in progress. |
| All IB policy applications|Use `Get-InformationBarrierPoliciesApplicationStatus -All`<p> This cmdlet  will display information about whether policy application completed, failed, or is in progress.|

### What if I need to remove or change policies?

Resources are available to help you manage your IB policies.

- To edit, stop, or remove IB policies, see [Manage information barriers policies](information-barriers-edit-segments-policies.md).
- If something goes wrong with IB, see [Troubleshooting information barriers](/office365/troubleshoot/information-barriers/information-barriers-troubleshooting).

## Step 5: Configuration for information barriers on SharePoint and OneDrive

If you're configuring IB for SharePoint and OneDrive, you'll need to enable IB on these services. You'll also need to enable IB on these services if you're configuring IB for Microsoft Teams. When a team is created in Microsoft Teams team, a SharePoint site is automatically created and associated with Microsoft Teams for the files experience. IB policies aren't honored on this new SharePoint site and files by default.

To enable IB in SharePoint and OneDrive, follow the guidance and steps in the [Use information barriers with SharePoint](/sharepoint/information-barriers) article.

## Step 6: Information barriers modes (optional)

Modes can help strengthen access, sharing, and membership of a Microsoft 365 resource based on the resource's IB mode. Modes are supported on Microsoft 365 Groups, Microsoft Teams, OneDrive, and SharePoint sites and are automatically enabled in your new or existing IB configuration.

The following IB modes are supported on Microsoft 365 resources:

| **Mode** | **Description** | **Example** |
|:-----|:------------|:--------|
| **Open** | There aren't any IB policies or segments associated with the Microsoft 365 resource. Anyone can be invited to be a member of the resource. | A team site created for a picnic event for your organization. |
| **Owner Moderated** | The IB policy of the Microsoft 365 resource is determined from the resource owner's IB policy. The resource owners can invite any user to the resource based on their IB policies. This mode is useful when your company wants to allow collaboration among incompatible segment users that are moderated by the owner. Only the resource owner can add new members per their IB policy. | The VP of HR wants to collaborate with the VPs of Sales and Research. A new SharePoint site that is set with IB mode *Owner Moderated* to add both Sales and Research segment users to the same site. It's the responsibility of the owner to ensure appropriate members are added to the resource. |
| **Implicit** | The IB policy or segments of the Microsoft 365 resource is inherited from the resource members IB policy. The owner can add members as long as they're compatible with the existing members of the resource. This mode is the default IB mode for Microsoft Teams. | The Sales segment user creates a Microsoft Teams team to collaborate with other compatible segments in the organization. |
| **Explicit** | The IB policy of the Microsoft 365 resource is per the segments associated with the resource. The resource owner or SharePoint administrator has the ability to manage the segments on the resource. | A site created only for Sales segment members to collaborate by associating the Sales segment with the site. |
| **Mixed** | Only applicable to OneDrive. The IB policy of the OneDrive is per the segments associated with the OneDrive. The resource owner or OneDrive administrator has the ability to manage the segments on the resource. | A OneDrive created for Sales segment members to collaborate is allowed to be shared with unsegmented users. |

### Implicit mode updates

Depending on when you've enable IB in your organization, your organization will be in either *Legacy*, *SingleSegment*, or *MultiSegment* organization mode. To verify your mode, see [Check the IB mode for your organization](/microsoft-365/compliance/information-barriers-multi-segment#check-the-ib-mode-for-your-organization).

If your organization is in *SingleSegment* or *MultiSegment* mode and the information barriers mode of the Teams group is *Implicit*, the Teams-connected groups/sites won't have any segments associated with it.

For more information about IB modes and how they're configured across services, see the following articles:

- [Information barriers modes and Microsoft Teams](/microsoftteams/information-barriers-in-teams)
- [Information barriers modes and OneDrive](/onedrive/information-barriers)
- [Information barriers modes and SharePoint](/sharepoint/information-barriers)

## Step 7: Configure user discoverability for information barriers (optional)

Information barriers policies allow administrators to enable or disable search restrictions in the people picker. By default, the people picker restriction is enabled for IB policies. For example, IB policies that block two specific users from communication can also restrict the users from seeing each other when using the people picker.

> [!IMPORTANT]
> Support for enabling or disabling search restrictions is only available when your organization isn't in *Legacy* mode. Organizations in *Legacy* mode cannot enable or disable search restrictions. Enabling or disabling search restrictions requires additional actions to change the information barriers mode for your organization. For more information, see [Use multi-segment support in information barriers)](information-barriers-multi-segment.md) for details.<br><br> Organizations in *Legacy* mode will be eligible to upgrade to the newest version of information barriers in the future. For more information, see the [information barriers roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=information%2Cbarriers).

To disable the people picker search restriction using PowerShell, complete the following steps:

1. Use the **Set-PolicyConfig** cmdlet to disable the people picker restriction:

```powershell
Set-PolicyConfig -InformationBarrierPeopleSearchRestriction 'Disabled'
```

## Example scenario: Contoso's departments, segments, and policies

To see how an organization might approach defining segments and policies, consider the following example scenario.

### Contoso's departments and plan

Contoso has five departments: *HR*, *Sales*, *Marketing*, *Research*, and *Manufacturing*. In order to remain compliant with industry regulations, users in some departments aren't supposed to communicate with other departments, as listed in the following table:

| **Segment** | **Can communicate with** | **Can't communicate with** |
|:------------|:-------------------------|:---------------------------|
| HR | Everyone | (no restrictions) |
| Sales | HR, Marketing, Manufacturing | Research |
| Marketing | Everyone | (no restrictions) |
| Research | HR, Marketing, Manufacturing | Sales |
| Manufacturing | HR, Marketing | Anyone other than HR or Marketing |

For this structure, Contoso's plan includes three IB policies:

1. An IB policy designed to prevent Sales from communicating with Research
2. Another IB policy to prevent Research from communicating with Sales.
3. An IB policy designed to allow Manufacturing to communicate with HR and Marketing only.

For this scenario, it's not necessary to define IB policies for *HR* or *Marketing*.

### Contoso's defined segments

Contoso will use the Department attribute in Azure Active Directory to define segments, as follows:

| Department | Segment Definition |
|:-------------|:---------------------|
| HR | `New-OrganizationSegment -Name "HR" -UserGroupFilter "Department -eq 'HR'"` |
| Sales | `New-OrganizationSegment -Name "Sales" -UserGroupFilter "Department -eq 'Sales'"` |
| Marketing | `New-OrganizationSegment -Name "Marketing" -UserGroupFilter "Department -eq 'Marketing'"` |
| Research | `New-OrganizationSegment -Name "Research" -UserGroupFilter "Department -eq 'Research'"` |
| Manufacturing | `New-OrganizationSegment -Name "Manufacturing" -UserGroupFilter "Department -eq 'Manufacturing'"` |

With the segments defined, Contoso proceeds to define the IB policies.

### Contoso's IB policies

Contoso defines three IB policies, as described in the following table:

| Policy | Policy Definition |
|:---------|:--------------------|
| **Policy 1: Prevent Sales from communicating with Research** | `New-InformationBarrierPolicy -Name "Sales-Research" -AssignedSegment "Sales" -SegmentsBlocked "Research" -State Inactive` <p> In this example, the IB policy is called *Sales-Research*. When this policy is active and applied, it will help prevent users who are in the Sales segment from communicating with users in the Research segment. This policy is a one-way policy; it won't prevent Research from communicating with Sales. For that, Policy 2 is needed. |
| **Policy 2: Prevent Research from communicating with Sales** | `New-InformationBarrierPolicy -Name "Research-Sales" -AssignedSegment "Research" -SegmentsBlocked "Sales" -State Inactive` <p> In this example, the IB policy is called *Research-Sales*. When this policy is active and applied, it will help prevent users who are in the Research segment from communicating with users in the Sales segment. |
| **Policy 3: Allow Manufacturing to communicate with HR and Marketing only** | `New-InformationBarrierPolicy -Name "Manufacturing-HRMarketing" -AssignedSegment "Manufacturing" -SegmentsAllowed "HR","Marketing","Manufacturing" -State Inactive` <p> In this case, the IB policy is called *Manufacturing-HRMarketing*. When this policy is active and applied, Manufacturing can communicate only with HR and Marketing. HR and Marketing aren't restricted from communicating with other segments. |

With segments and policies defined, Contoso applies the policies by running the **Start-InformationBarrierPoliciesApplication** cmdlet.

When the cmdlet finishes, Contoso is compliant with industry requirements.

## Resources

- [Learn about information barriers](information-barriers.md)
- [Use multi-segment support in information barriers](information-barriers-multi-segment.md)
- [Learn more about information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams)
- [Learn more about information barriers in SharePoint Online](/sharepoint/information-barriers)
- [Learn more about information barriers in OneDrive](/onedrive/information-barriers)
