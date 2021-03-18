---
title: "Define information barrier policies"
description: Learn how to define policies for information barriers in Microsoft Teams.
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
localization_priority: None
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
---

# Define information barrier policies

With information barriers, you can define policies that are designed to prevent certain segments of users from communicating with each other, or allow specific segments to communicate only with certain other segments. Information barrier policies can help your organization maintain compliance with relevant industry standards and regulations, and avoid potential conflicts of interest. To learn more, see [Information barriers](information-barriers.md).

This article describes how to plan, define, implement, and manage information barrier policies. Several steps are involved, and the work flow is divided into several parts. Make sure to read through the [prerequisites](#prerequisites) and the entire process before you begin defining (or editing) information barrier policies.

> [!TIP]
> This article includes an [example scenario](#example-contosos-departments-segments-and-policies) and a [downloadable Excel workbook](https://github.com/MicrosoftDocs/OfficeDocs-O365SecComp/raw/public/SecurityCompliance/media/InfoBarriers-PowerShellGenerator.xlsx) to help you plan and define your information barrier policies.

## Concepts of information barrier policies

When you define policies for information barriers, you'll work with user account attributes, segments, "block" and/or "allow" policies, and policy application.

- User account attributes are defined in Azure Active Directory (or Exchange Online). These attributes can include department, job title, location, team name, and other job profile details. 
- Segments are sets of users that are defined in the Security & Compliance Center using a selected **user account attribute**. (See the [list of supported attributes](information-barriers-attributes.md).)
- Information barrier policies determine communication limits or restrictions. When you define information barrier policies, you choose from two kinds of policies:
    - "Block" policies prevent one segment from communicating with another segment.
    - "Allow" policies allow one segment to communicate with only certain other segments.
- Policy application is done after all information barrier policies are defined, and you are ready to apply them in your organization.

## The work flow at a glance

| Phase | What's involved |
|:--------|:------------------|
| [Make sure prerequisites are met](#prerequisites) | - Verify that you have the [required licenses and permissions](information-barriers.md#required-licenses-and-permissions)<br/>- Verify that your directory includes data for segmenting users<br/>- Enable scoped directory search for Microsoft Teams<br/>- Make sure audit logging is turned on<br/>- Make sure no Exchange address book policies are in place<br/>- Use PowerShell (examples are provided)<br/>- Provide admin consent for Microsoft Teams (steps are included) |
| [Part 1: Segment users in your organization](#part-1-segment-users) | - Determine what policies are needed<br/>- Make a list of segments to define<br/>- Identify which attributes to use<br/>- Define segments in terms of policy filters |
| [Part 2: Define information barrier policies](#part-2-define-information-barrier-policies) | - Define your policies (do not apply yet)<br/>- Choose from two kinds (block or allow) |
| [Part 3: Apply information barrier policies](#part-3-apply-information-barrier-policies) | - Set policies to active status<br/>- Run the policy application<br/>- View policy status |
| (As needed) [Edit a segment or a policy](information-barriers-edit-segments-policies.md) | - Edit a segment<br/>- Edit or remove a policy<br/>- Rerun the policy application<br/>- View policy status |
| (As needed) [Troubleshooting](information-barriers-troubleshooting.md)| - Take action when things are not working as expected|

## Prerequisites

In addition to the [required licenses and permissions](information-barriers.md#required-licenses-and-permissions), make sure that the following requirements are met:

- Directory data - Make sure that your organization's structure is reflected in directory data. To take this action, make sure that user account attributes, such as group membership, department name, etc. are populated correctly in Azure Active Directory (or Exchange Online). To learn more, see the following resources:
  - [Attributes for information barrier policies](information-barriers-attributes.md)
  - [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal)
  - [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md)

- Scoped directory search - Before you define your organization's first information barrier policy, you must [enable scoped directory search in Microsoft Teams](/MicrosoftTeams/teams-scoped-directory-search). Wait at least 24 hours after enabling scoped directory search before you set up or define information barrier policies.

- EXO license - IB policies work only if the target users have been assigned an EXO license.

- Audit logging - In order to look up the status of a policy application, audit logging must be turned on. We recommend you enable auditing before you begin to define segments or policies. To learn more, see [Turn the audit log search on or off](turn-audit-log-search-on-or-off.md).

- No address book policies -  Before you define and apply information barrier policies, make sure no Exchange address book policies are in place. Information barriers are based on address book policies, but the two kinds of policies are not compatible. If you do have such policies, make sure to [remove your address book policies](/exchange/address-books/address-book-policies/remove-an-address-book-policy) first. Once information barrier policies are enabled and you have hierarchical address book enabled, all users ***who are not included*** in an information barrier segment will see the [hierarchical address book](/exchange/address-books/hierarchical-address-books/hierarchical-address-books) in Exchange online.

- PowerShell -  Currently, information barrier policies are defined and managed in the Office 365 Security & Compliance Center using PowerShell cmdlets. Although several examples are provided in this article, you'll need to be familiar with PowerShell cmdlets and parameters. You will also need the Azure PowerShell module.
    - [Connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell)
    - [Install the Azure PowerShell module](/powershell/azure/install-az-ps?view=azps-2.3.2)

- Admin consent for information barriers in Microsoft Teams -  When your IB policies are in place, they can remove non-IB compliance users from Groups (i.e. Teams channels, which are based on groups). This configuration helps ensure your organization remains compliant with policies and regulations. Use the following procedure to enable information barrier policies to work as expected in Microsoft Teams.

   1. Pre-requisite: Install Azure PowerShell from [Install Azure PowerShell](https://docs.microsoft.com/powershell/azure/install-az-ps).

   1. Run the following PowerShell cmdlets:

      ```powershell
      Connect-AzAccount -Tenant "<yourtenantdomain.com>"  //for example: Connect-AzAccount -Tenant "Contoso.onmicrosoft.com"
      $appId="bcf62038-e005-436d-b970-2a472f8c1982" 
      $sp=Get-AzADServicePrincipal -ServicePrincipalName $appId
      if ($sp -eq $null) { New-AzADServicePrincipal -ApplicationId $appId }
      Start-Process  "https://login.microsoftonline.com/common/adminconsent?client_id=$appId"
      ```

   1. When prompted, sign in using your work or school account for Office 365.

   1. In the **Permissions requested** dialog box, review the information, and then choose **Accept**. The permissions requested by the App is given below.
      
      > [!div class="mx-imgBorder"]
      > ![image](https://user-images.githubusercontent.com/8932063/107690955-b1772300-6c5f-11eb-9527-4235de860b27.png)


When all the prerequisites are met, proceed to the next section.

> [!TIP]
> To help you prepare your plan, an example scenario is included in this article. [See Contoso's departments, segments, and policies](#example-contosos-departments-segments-and-policies).<p>In addition, a downloadable Excel workbook is available to help you plan and define your segments and policies (and create your PowerShell cmdlets). [Get the workbook](https://github.com/MicrosoftDocs/OfficeDocs-O365SecComp/raw/public/SecurityCompliance/media/InfoBarriers-PowerShellGenerator.xlsx).

## Part 1: Segment users

During this phase, you determine what information barrier policies are needed, make a list of segments to define, and then define your segments.

### Determine what policies are needed

Considering legal and industry regulations, who are the groups within your organization who will need information barrier policies? Make a list. Are there any groups who should be prevented from communicating with another group? Are there any groups that should be allowed to communicate only with one or two other groups? Think about the policies you need as belonging to one of two groups:

- "Block" policies prevent one group from communicating with another group.
- "Allow" policies allow a group to communicate with only certain other, specific groups.

When you have your initial list of groups and policies, proceed to identify the segments you'll need.

### Identify segments

In addition to your initial list of policies, make a list of segments for your organization. Users who will be included in information barrier policies should belong to a segment. Plan your segments carefully as a user can only be in one segment. Each segment can have only one information barrier policy applied.

> [!IMPORTANT]
> A user can only be in one segment.

Determine which attributes in your organization's directory data you'll use to define segments. You can use *Department*, *MemberOf*, or any of the supported attributes. Make sure that you have values in the attribute you select for users. [See the list of supported attributes for information barriers](information-barriers-attributes.md).

> [!IMPORTANT]
> **Before you proceed to the next section, make sure your directory data has values for attributes that you can use to define segments**. If your directory data does not have values for the attributes you want to use, then the user accounts must be updated to include that information before you proceed with information barriers. To get help with this, see the following resources:<br/>- [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md)<br/>- [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal)

### Define segments using PowerShell

Defining segments does not affect users; it just sets the stage for information barrier policies to be defined and then applied.

1. Use the **New-OrganizationSegment** cmdlet with the **UserGroupFilter** parameter that corresponds to the [attribute](information-barriers-attributes.md) you want to use.

    | Syntax | Example |
    |:---------|:----------|
    | `New-OrganizationSegment -Name "segmentname" -UserGroupFilter "attribute -eq 'attributevalue'"` |`New-OrganizationSegment -Name "HR" -UserGroupFilter "Department -eq 'HR'"` <p>In this example, a segment called *HR* is defined using *HR*, a value in the *Department* attribute. The **-eq** portion of the cmdlet refers to "equals." (Alternately, you can use **-ne** to mean "not equals". See [Using "equals" and "not equals" in segment definitions](#using-equals-and-not-equals-in-segment-definitions).) |

    After you run each cmdlet, you should see a list of details about the new segment. Details include the segment's type, who created or last modified it, and so on. 

2. Repeat this process for each segment you want to define.

    > [!IMPORTANT]
    > **Make sure that your segments do not overlap**. Each user who will be affected by information barriers should belong to one (and only one) segment. No user should belong to two or more segments. (See [Example: Contoso's defined segments](#contosos-defined-segments) in this article.)

After you have defined your segments, proceed to [define information barrier policies](#part-2-define-information-barrier-policies).

### Using "equals" and "not equals" in segment definitions

In the following example, we are defining a segment such that "Department equals HR." 

| Example | Note |
|:----------|:-------|
|`New-OrganizationSegment -Name "HR" -UserGroupFilter "Department -eq 'HR'"` | Notice that in this example, the segment definition includes an "equals" parameter denoted as **-eq**. |

You can also define segments using a "not equals" parameter, denoted as **-ne**, as shown in the following table:

| Syntax | Example |
|:---------|:----------|
| `New-OrganizationSegment -Name "NotSales" -UserGroupFilter "Department -ne 'Sales'"` | In this example, we defined a segment called *NotSales* that includes everyone who is not in *Sales*. The **-ne** portion of the cmdlet refers to "not equals". |

In addition to defining segments using "equals" or "not equals", you can define a segment using both "equals" and "not equals" parameters. You can also define complex group filters using logical *AND* and *OR* operators.

| Syntax | Example |
|:---------|:----------|
| `New-OrganizationSegment -Name "LocalFTE" -UserGroupFilter "Location -eq 'Local'" -and "Position -ne 'Temporary'"` | In this example, we defined a segment called *LocalFTE* that includes people who are located locally and whose positions are not listed as *Temporary*. |
| `New-OrganizationSegment -Name "Segment1" -UserGroupFilter "MemberOf -eq 'group1@contoso.com'' -and MemberOf -ne 'group3@contoso.com'"`| In this example, we defined a segment called *Segment1* that includes people who are members of group1@contoso.com and not members of group3@contoso.com. |
| `New-OrganizationSegment -Name "Segment2" -UserGroupFilter "MemberOf -eq 'group2@contoso.com' -or MemberOf -ne 'group3@contoso.com'"` | In this example, we defined a segment called *Segment2* that includes people who are members of group2@contoso.com and not members of group3@contoso.com. |
| `New-OrganizationSegment -Name "Segment1and2" -UserGroupFilter "(MemberOf -eq 'group1@contoso.com' -or MemberOf -eq 'group2@contoso.com') -and MemberOf -ne 'group3@contoso.com'"`| In this example, we defined a segment called *Segment1and2* that includes people members of group1@contoso.com and group2@contoso.com and not members of group3@contoso.com. |

> [!TIP]
> If possible, use segment definitions that include "-eq" or "-ne". Try not to define complex segment definitions.

## Part 2: Define information barrier policies

Determine whether you need to prevent communications between certain segments, or limit communications to certain segments. Ideally, you'll use the minimum number of policies to ensure your organization is compliant with legal and industry requirements.

With your list of user segments and the information barrier policies you want to define, select a scenario, and then follow the steps.

- [Scenario 1: Block communications between segments](#scenario-1-block-communications-between-segments)
- [Scenario 2: Allow a segment to communicate only with one other segment](#scenario-2-allow-a-segment-to-communicate-only-with-one-other-segment)

> [!IMPORTANT]
> **Make sure that as you define policies, you do not assign more than one policy to a segment**. For example, if you define one policy for a segment called *Sales*, do not define an additional policy for *Sales*.<p> In addition, as you define information barrier policies, make sure to set those policies to inactive status until you are ready to apply them. Defining (or editing) policies does not affect users until those policies are set to active status and then applied.

(See [Example: Contoso's information barrier policies](#contosos-information-barrier-policies) in this article.)

### Scenario 1: Block communications between segments

When you want to block segments from communicating with each other, you define two policies: one for each direction. Each policy blocks communication one way only.

For example, suppose you want to block communications between Segment A and Segment B. In this case, you define one policy preventing Segment A from communicating with Segment B, and then define a second policy to prevent Segment B from communicating with Segment A.

1. To define your first blocking policy, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsBlocked** parameter.

    | Syntax | Example |
    |:--------|:----------|
    | `New-InformationBarrierPolicy -Name "policyname" -AssignedSegment "segment1name" -SegmentsBlocked "segment2name"` | `New-InformationBarrierPolicy -Name "Sales-Research" -AssignedSegment "Sales" -SegmentsBlocked "Research" -State Inactive` <p> In this example, we defined a policy called *Sales-Research* for a segment called *Sales*. When active and applied, this policy prevents people in *Sales* from communicating with people in a segment called *Research*. |

2. To define your second blocking segment, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsBlocked** parameter again, this time with the segments reversed.

    | Example | Note |
    |:----------|:-------|
    |`New-InformationBarrierPolicy -Name "Research-Sales" -AssignedSegment "Research" -SegmentsBlocked "Sales" -State Inactive` | In this example, we defined a policy called *Research-Sales* to prevent *Research* from communicating with *Sales*. |

3. Proceed to one of the following actions:

   - (If needed) [Define a policy to allow a segment to communicate only with one other segment](#scenario-2-allow-a-segment-to-communicate-only-with-one-other-segment) 
   - (After all your policies are defined) [Apply information barrier policies](#part-3-apply-information-barrier-policies)

### Scenario 2: Allow a segment to communicate only with one other segment

1. To allow one segment to communicate with only one other segment, use the **New-InformationBarrierPolicy** cmdlet with the **SegmentsAllowed** parameter.

    | Syntax | Example |
    |:----------|:----------|
    | `New-InformationBarrierPolicy -Name "policyname" -AssignedSegment "segment1name" -SegmentsAllowed "segment2name","segment1name"` | `New-InformationBarrierPolicy -Name "Manufacturing-HR" -AssignedSegment "Manufacturing" -SegmentsAllowed "HR","Manufacturing" -State Inactive` <p> In this example, we defined a policy called *Manufacturing-HR* for a segment called *Manufacturing*. When active and applied, this policy allows people in *Manufacturing* to communicate only with people in a segment called *HR*. (In this case, *Manufacturing* cannot communicate with users who are not part of *HR*.) |

    **If needed, you can specify multiple segments with this cmdlet, as shown in the following example.**

    | Syntax | Example |
    |:---------|:----------|
    | `New-InformationBarrierPolicy -Name "policyname" -AssignedSegment "segment1name" -SegmentsAllowed "segment2name", "segment3name","segment1name"` | `New-InformationBarrierPolicy -Name "Research-HRManufacturing" -AssignedSegment "Research" -SegmentsAllowed "HR","Manufacturing","Research" -State Inactive` <p> In this example, we defined a policy that allows the *Research* segment to communicate with only *HR* and *Manufacturing*. |

    Repeat this step for each policy you want to define to allow specific segments to communicate with only certain other specific segments.

2. Proceed to one of the following actions:

   - (If needed) [Define a policy to block communications between segments](#scenario-1-block-communications-between-segments) 
   - (After all your policies are defined) [Apply information barrier policies](#part-3-apply-information-barrier-policies)

## Part 3: Apply information barrier policies

Information barrier policies are not in effect until you set them to active status, and then apply the policies.

1. Use the **Get-InformationBarrierPolicy** cmdlet to see a list of policies that have been defined. Note the status and identity (GUID) of each policy.

    Syntax: `Get-InformationBarrierPolicy`

2. To set a policy to active status, use the **Set-InformationBarrierPolicy** cmdlet with an **Identity** parameter, and the **State** parameter set to **Active**. 

    | Syntax | Example |
    |:---------|:----------|
    | `Set-InformationBarrierPolicy -Identity GUID -State Active` | `Set-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c93772471 -State Active` <p> In this example, we set an information barrier policy that has the GUID *43c37853-ea10-4b90-a23d-ab8c93772471* to active status. |

    Repeat this step as appropriate for each policy.

3. When you have finished setting your information barrier policies to active status, use the **Start-InformationBarrierPoliciesApplication** cmdlet in the Security & Compliance Center.

    Syntax: `Start-InformationBarrierPoliciesApplication`

    After you run `Start-InformationBarrierPoliciesApplication`, allow 30 minutes for the system to start applying the policies. The system applies policies user by user. The system processes about 5,000 user accounts per hour.

## View status of user accounts, segments, policies, or policy application

With PowerShell, you can view status of user accounts, segments, policies, and policy application, as listed in the following table.

| To view this information | Take this action |
|:---------------|:----------|
| User accounts | Use the **Get-InformationBarrierRecipientStatus** cmdlet with Identity parameters. <p> Syntax: `Get-InformationBarrierRecipientStatus -Identity <value> -Identity2 <value>` <p> You can use any value that uniquely identifies each user, such as name, alias, distinguished name, canonical domain name, email address, or GUID. <p> Example: `Get-InformationBarrierRecipientStatus -Identity meganb -Identity2 alexw` <p> In this example, we refer to two user accounts in Office 365: *meganb* for *Megan*, and *alexw* for *Alex*. <p> (You can also use this cmdlet for a single user: `Get-InformationBarrierRecipientStatus -Identity <value>`) <p> This cmdlet returns information about users, such as attribute values and any information barrier policies that are applied.|
| Segments | Use the **Get-OrganizationSegment** cmdlet.<p> Syntax: `Get-OrganizationSegment` <p> This cmdlet will display a list of all segments defined for your organization. |
| Information barrier policies | Use the **Get-InformationBarrierPolicy** cmdlet. <p> Syntax: `Get-InformationBarrierPolicy` <p> This cmdlet will display a list of information barrier policies that were defined, and their status. |
| The most recent information barrier policy application | Use the **Get-InformationBarrierPoliciesApplicationStatus** cmdlet. <p> Syntax: `Get-InformationBarrierPoliciesApplicationStatus`<p> This cmdlet will display information about whether policy application completed, failed, or is in progress. |
| All information barrier policy applications|Use `Get-InformationBarrierPoliciesApplicationStatus -All`<p> This cmdlet  will display information about whether policy application completed, failed, or is in progress.|

<!-- IN the " The most recent information barrier policy application, add link to troubleshooting topic -->

## What if I need to remove or change policies?

Resources are available to help you manage your information barrier policies.

- If something goes wrong with information barriers, see [Troubleshooting information barriers](information-barriers-troubleshooting.md).
- To stop policies from being applied, see [Stop a policy application](information-barriers-edit-segments-policies.md#stop-a-policy-application).
- To remove an information barrier policy, see [Remove a policy](information-barriers-edit-segments-policies.md#remove-a-policy).
- To make changes to segments or policies, see [Edit (or remove) information barrier policies](information-barriers-edit-segments-policies.md).

## Example: Contoso's departments, segments, and policies

To see how an organization might approach defining segments and policies, consider the following example.

### Contoso's departments and plan

Contoso has five departments: HR, Sales, Marketing, Research, and Manufacturing. In order to remain compliant with industry regulations, people in some departments are not supposed to communicate with other departments, as listed in the following table:

| Segment | Can talk to | Cannot talk to |
|:----------|:--------------|:-----------------|
| HR | Everyone | (no restrictions) |
| Sales | HR, Marketing, Manufacturing | Research |
| Marketing | Everyone | (no restrictions) |
| Research | HR, Marketing, Manufacturing | Sales |
| Manufacturing | HR, Marketing | Anyone other than HR or Marketing |

For this structure, Contoso's plan includes three information barrier policies:

1. A policy designed to prevent Sales from communicating with Research (and another policy to prevent Research from communicating with Sales).

2. A policy designed to allow Manufacturing to communicate with HR and Marketing only.

For this scenario, it's not necessary to define policies for HR or Marketing.

### Contoso's defined segments

Contoso will use the Department attribute in Azure Active Directory to define segments, as follows:

| Department | Segment Definition |
|:-------------|:---------------------|
| HR | `New-OrganizationSegment -Name "HR" -UserGroupFilter "Department -eq 'HR'"` |
| Sales | `New-OrganizationSegment -Name "Sales" -UserGroupFilter "Department -eq 'Sales'"` |
| Marketing | `New-OrganizationSegment -Name "Marketing" -UserGroupFilter "Department -eq 'Marketing'"` |
| Research | `New-OrganizationSegment -Name "Research" -UserGroupFilter "Department -eq 'Research'"` |
| Manufacturing | `New-OrganizationSegment -Name "Manufacturing" -UserGroupFilter "Department -eq 'Manufacturing'"` |

With the segments defined, Contoso proceeds to define policies.

### Contoso's information barrier policies

Contoso defines three policies, as described in the following table:

| Policy | Policy Definition |
|:---------|:--------------------|
| **Policy 1: Prevent Sales from communicating with Research** | `New-InformationBarrierPolicy -Name "Sales-Research" -AssignedSegment "Sales" -SegmentsBlocked "Research" -State Inactive` <p> In this example, the information barrier policy is called *Sales-Research*. When this policy is active and applied, it will help prevent users who are in the Sales segment from communicating with users in the Research segment. This policy is a one-way policy; it won't prevent Research from communicating with Sales. For that, Policy 2 is needed. |
| **Policy 2: Prevent Research from communicating with Sales** | `New-InformationBarrierPolicy -Name "Research-Sales" -AssignedSegment "Research" -SegmentsBlocked "Sales" -State Inactive` <p> In this example, the information barrier policy is called *Research-Sales*. When this policy is active and applied, it will help prevent users who are in the Research segment from communicating with users in the Sales segment. |
| **Policy 3: Allow Manufacturing to communicate with HR and Marketing only** | `New-InformationBarrierPolicy -Name "Manufacturing-HRMarketing" -AssignedSegment "Manufacturing" -SegmentsAllowed "HR","Marketing","Manufacturing" -State Inactive` <p> In this case, the information barrier policy is called *Manufacturing-HRMarketing*. When this policy is active and applied, Manufacturing can communicate only with HR and Marketing. HR and Marketing are not restricted from communicating with other segments. |

With segments and policies defined, Contoso applies the policies by running the **Start-InformationBarrierPoliciesApplication** cmdlet.

When the cmdlet finishes, Contoso is compliant with legal and industry requirements.

## Resources

- [Get an overview of information barriers](information-barriers.md)
- [Learn more about information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams)
- [Learn more about information barriers in SharePoint Online](/sharepoint/information-barriers)
- [Learn more about information barriers in OneDrive](/onedrive/information-barriers)