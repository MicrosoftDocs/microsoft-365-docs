---
title: "Manage information barriers policies"
description: "Learn how to edit or remove policies and segments for information barriers."
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
ms.localizationpriority: null
f1.keywords:
- NOCSH
---

# Manage information barriers policies

After you have [defined information barriers policies](information-barriers-policies.md), you might need to make changes to policies or user segments as part of [troubleshooting](/office365/troubleshoot/information-barriers/information-barriers-troubleshooting) or for regular maintenance.

## What do you want to do?

|**Action**|**Description**|
|:---------|:--------------|
| [Edit user account attributes](#edit-user-account-attributes) | Fill in attributes in Azure Active Directory that can be used to define segments. <br> Edit user account attributes when users aren't included in segments they should be, to change which segments users are in, or to define segments using different attributes. |
| [Edit a segment](#edit-a-segment) | Edit segments when you want to change how a segment is defined. <br> For example, you might have originally defined segments using *Department* and now want to use another attribute, such as *MemberOf*. |
| [Edit a policy](#edit-a-policy) | Edit an information barriers policy when you want to change how a policy works.<br> For example, instead of blocking communications between two segments, you might decide you want to allow communications to occur only between certain segments. |
| [Set a policy to inactive status](#set-a-policy-to-inactive-status) |Set a policy to inactive status when you want to make changes to a policy, or when you don't want a policy to be in effect. |
| [Remove a policy](#remove-a-policy) | Remove an information barriers policy when you no longer need a particular policy in place. |
| [Remove a segment](#remove-a-segment) | Remove an information barriers segment when you no longer need a particular segment. |
| [Remove a policy and a segment](#remove-a-policy-and-segment) | Remove an information barriers policy and a segment at the same time. |
| [Stop a policy application](#stop-a-policy-application) | Take this action when you want to stop the process of applying information barriers policies. <br> Stopping a policy application isn't instant, and it doesn't undo policies that are already applied to users. |
| [Define policies for information barriers](information-barriers-policies.md) | Define an information barriers policy when you don't already have such policies in place, and you must restrict or limit communications between specific groups of users. |
| [Troubleshooting information barriers](/office365/troubleshoot/information-barriers/information-barriers-troubleshooting) | Refer to this article when you run into unexpected issues with information barriers. |

>[!IMPORTANT]
>To perform the tasks described in this article, you must be assigned an appropriate role, such as one of the following:<br>- Microsoft 365 Enterprise Global Administrator<br>- Global Administrator<br>- Compliance Administrator<br>- IB Compliance Management (this is a new role!)<br><br>To learn more about prerequisites for information barriers, see [Prerequisites (for information barriers policies)](information-barriers-policies.md#step-1-make-sure-prerequisites-are-met).<br><br> Make sure to [connect to the Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

## Edit user account attributes

Use this procedure to edit attributes that are used for segmenting users. For example, if you're using a Department attribute, and one or more user accounts don't currently have any values listed for Department, you must edit those user accounts to include Department information. User account attributes are used for defining segments so that information barriers policies can be assigned.

1. To view details for a specific user account, such as attribute values and assigned segment(s), use the **Get-InformationBarrierRecipientStatus** cmdlet with Identity parameters.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Get-InformationBarrierRecipientStatus -Identity <value> -Identity2 <value>` <br> You can use any value that uniquely identifies each user, such as name, alias, distinguished name, canonical domain name, email address, or GUID. <br> (You can also use this cmdlet for a single user: `Get-InformationBarrierRecipientStatus -Identity <value>`) |`Get-InformationBarrierRecipientStatus -Identity meganb -Identity2 alexw` <br> In this example, we refer to two user accounts in Office 365: *meganb* for *Megan*, and *alexw* for *Alex*. |

2. Determine which attribute you want to edit for your user account profile(s). For more information, see [Attributes for information barriers policies](information-barriers-attributes.md).

3. Edit one or more user accounts to include values for the attribute you selected in the previous step. To take this action, use one of the following procedures:

    - To edit a single account, see [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).

    - To edit multiple accounts (or use PowerShell to edit a single account), see [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md).

## Edit a segment

Use this procedure edit the definition of a user segment. For example, you might change the name of a segment, or the filter that is used to determine who's included in the segment.

1. To view all existing segments, use the **Get-OrganizationSegment** cmdlet.

    Syntax: `Get-OrganizationSegment`

    You'll see a list of segments and details for each, such as segment type, its UserGroupFilter value, who created or last modified it, GUID, and so on.

    > [!TIP]
    > Print or save your list of segments for reference later. For example, if you want to edit a segment, you will need to know its name or identify value (this is used with the Identity parameter).

2. To edit a segment, use the **Set-OrganizationSegment** cmdlet with the **Identity** parameter and relevant details.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Set-OrganizationSegment -Identity GUID -UserGroupFilter "attribute -eq 'attributevalue'"` |`Set-OrganizationSegment -Identity c96e0837-c232-4a8a-841e-ef45787d8fcd -UserGroupFilter "Department -eq 'HRDept'"` <br> In this example, we updated the department name to *HRDept* for the segment with GUID *c96e0837-c232-4a8a-841e-ef45787d8fcd*. |

3. When you have finished editing segments for your organization, you can either [define](information-barriers-policies.md#step-3-define-information-barrier-policies) or [edit](#edit-a-policy) information barriers policies.

## Edit a policy

1. To view a list of current information barriers policies, use the **Get-InformationBarrierPolicy** cmdlet.

    Syntax: `Get-InformationBarrierPolicy`

    In the list of results, identify the policy that you want to change. Note the policy's GUID and name.

2. Use the **Set-InformationBarrierPolicy** cmdlet with an **Identity** parameter, and specify the changes you want to make.

    Example: Suppose a policy was defined to block the *Research* segment from communicating with the *Sales* and *Marketing* segments. The policy was defined by using this cmdlet: `New-InformationBarrierPolicy -Name "Research-SalesMarketing" -AssignedSegment "Research" -SegmentsBlocked "Sales","Marketing"`

    Suppose we want to change it so that people in the *Research* segment can only communicate with people in the *HR* segment. To make this change, we use this cmdlet: `Set-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c93772471 -SegmentsAllowed "HR"`

    In this example, we changed *SegmentsBlocked* to *SegmentsAllowed* and specified the *HR* segment.

3. When you have finished editing a policy, make sure to apply your changes. (See [Apply information barriers policies](information-barriers-policies.md#step-4-apply-information-barrier-policies).)

## Set a policy to inactive status

1. To view a list of current information barriers policies, use the **Get-InformationBarrierPolicy** cmdlet.

    Syntax: `Get-InformationBarrierPolicy`

    In the list of results, identify the policy that you want to change (or remove). Note the policy's GUID and name.

2. To set the policy's status to inactive, use the **Set-InformationBarrierPolicy** cmdlet with an *Identity* parameter and the *State* parameter set to *Inactive*.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Set-InformationBarrierPolicy -Identity GUID -State Inactive` | `Set-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c9377247 -State Inactive` <br> In this example, the information barriers policy that has GUID *43c37853-ea10-4b90-a23d-ab8c9377247* is set to an inactive status. |

3. To apply your changes, use the **Start-InformationBarrierPoliciesApplication** cmdlet.

    Syntax: `Start-InformationBarrierPoliciesApplication`

    Changes are applied user-by-user for your organization. If your organization is large, it can take 24 hours (or more) for this process to complete. As a general guideline, it takes about an hour to process 5,000 user accounts.

4. At this point, one or more information barriers policies are set to inactive status. From here, you can do any of the following actions:

    - Keep it as is (a policy set to inactive status has no effect on users)
    - [Edit a policy](#edit-a-policy) 
    - [Remove a policy](#remove-a-policy)

## Remove a policy

1. To view a list of current information barriers policies, use the **Get-InformationBarrierPolicy** cmdlet.

    Syntax: `Get-InformationBarrierPolicy`

    In the list of results, identify the policy that you want to remove. Note the policy's GUID and name. 

2. Make sure the policy is set to inactive status. To set the policy's status to inactive, use the Set-InformationBarrierPolicy cmdlet with an Identity parameter and the State parameter set to Inactive.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Set-InformationBarrierPolicy -Identity GUID -State Inactive`  | `Set-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c9377247 -State Inactive` <br> In this example, we set an information barriers policy that has GUID *43c37853-ea10-4b90-a23d-ab8c9377247* to an inactive status. |

3. To apply your changes on the policy, use the **Start-InformationBarrierPoliciesApplication** cmdlet.

    Syntax: `Start-InformationBarrierPoliciesApplication`

    Changes are applied user-by-user for your organization. If your organization is large, it can take 24 hours (or more) for this process to complete. As a general guideline, it takes about an hour to process 5,000 user accounts.

4. Use the **Remove-InformationBarrierPolicy** cmdlet with an Identity parameter.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Remove-InformationBarrierPolicy -Identity GUID` | `Remove-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c93772471` <br> In this example, we're removing the policy that has GUID *43c37853-ea10-4b90-a23d-ab8c93772471*. |

    When prompted, confirm the change.

## Remove a segment

1. To view all existing segments, use the **Get-OrganizationSegment** cmdlet.

    Syntax: `Get-OrganizationSegment`

    You'll see a list of segments and details for each, such as segment type, its UserGroupFilter value, who created or last modified it, GUID, and so on.

    >[!TIP]
    >Print or save your list of segments for reference later. For example, if you want to edit a segment, you will need to know its name or identify value (this is used with the Identity parameter).

2. Identify the segment to be removed and make sure the IB policy associated with the segment has been removed. See the [Remove a policy](#remove-a-policy) procedure for details.

3. Edit the segment that will be removed to remove the relationship of users to that segment. This action updates the segment definition and removes all users from the segment. You'll use the UserGroupFilter parameter to disassociate users from the segment prior to removal.

    To edit a segment, use the **Set-OrganizationSegment** cmdlet with the *Identity* parameter and relevant details.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Set-OrganizationSegment -Identity GUID -UserGroupFilter "attribute -eq 'attributevalue'"` | `Set-OrganizationSegment -Identity c96e0837-c232-4a8a-841e-ef45787d8fcd -UserGroupFilter "Department -eq 'FakeDept'"` <br> In this example, for the segment that has the GUID c96e0837-c232-4a8a-841e-ef45787d8fcd, we defined the department name as *FakeDept* to remove users from the segment. This example uses the *Department* attribute, but you can use other attributes as appropriate. The example uses *FakeDept* because this doesn't exist and is certain to not contain any users. |

4. To apply your changes, use the **Start-InformationBarrierPoliciesApplication** cmdlet.

    Syntax: `Start-InformationBarrierPoliciesApplication -CleanupGroupSegmentLink`

    >[!NOTE]
    >The *CleanupGroupSegmentLink* attribute removes group associations with the segment with no user associations.

    Changes are applied user-by-user for your organization. If your organization is large, it can take 24 hours (or more) for this process to complete. As a general guideline, it takes about an hour to process 5,000 user accounts.

5. To remove a segment, use the **Remove-OrganizationSegment** cmdlet with the *Identity* parameter and relevant details.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Remove-OrganizationSegment -Identity GUID` | `Remove-OrganizationSegment -Identity c96e0837-c232-4a8a-841e-ef45787d8fcd` <br> In this example, the segment that has the GUID c96e0837-c232-4a8a-841e-ef45787d8fcd, was removed. |

## Remove a policy and segment

1. To view a list of current information barriers policies, use the **Get-InformationBarrierPolicy** cmdlet.

    Syntax: `Get-InformationBarrierPolicy`

    In the list of results, identify the policy that you want to remove. Note the policy's GUID and name.

2. To view all existing segments, use the **Get-OrganizationSegment** cmdlet.

    Syntax: `Get-OrganizationSegment`

    You'll see a list of segments and details for each, such as segment type, its *UserGroupFilter* parameter value, who created or last modified it, GUID, and so on.

    >[!TIP]
    >Print or save your list of segments for reference later. For example, if you want to edit a segment, you will need to know its name or identify value (this is used with the Identity parameter).

3. To set the status of the policy to be removed to inactive, use the **Set-InformationBarrierPolicy** cmdlet with an *Identity* parameter and the *State* parameter set to *Inactive*.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Set-InformationBarrierPolicy -Identity GUID -State Inactive` | `Set-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c93772471 -State Inactive` <br> In this example, we set an information barriers policy that has GUID 43c37853-ea10-4b90-a23d-ab8c93772471 to an inactive status. |

4. Edit the segment that will be removed to remove the relationship of users to that segment. This action updates the segment definition and removes all users from the segment. You'll use the *UserGroupFilter* parameter to disassociate users from the segment prior to removal.

    To edit a segment, use the **Set-OrganizationSegment** cmdlet with the *Identity* parameter and relevant details.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Set-OrganizationSegment -Identity GUID -UserGroupFilter "attribute -eq 'attributevalue'"` | `Set-OrganizationSegment -Identity c96e0837-c232-4a8a-841e-ef45787d8fcd -UserGroupFilter "Department -eq 'FakeDept'"` <br> In this example, for the segment that has the GUID c96e0837-c232-4a8a-841e-ef45787d8fcd, we updated the department name to *FakeDept* to remove users from the segment. This example uses the *Department* attribute, but you can use other attributes as appropriate. The example uses *FakeDept* because this doesn't exist and is certain to contain no users. |

5. To apply your changes, use the **Start-InformationBarrierPoliciesApplication** cmdlet.

    Syntax: `Start-InformationBarrierPoliciesApplication -CleanupGroupSegmentLink`

    >[!NOTE]
    >The *CleanupGroupSegmentLink* attribute removes group associations with the segment with no user associations.

    Changes are applied user-by-user for your organization. If your organization is large, it can take 24 hours (or more) for this process to complete. As a general guideline, it takes about an hour to process 5,000 user accounts.

6. Use the **Remove-InformationBarrierPolicy** cmdlet with an *Identity* parameter.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Remove-InformationBarrierPolicy -Identity GUID` | `Remove-InformationBarrierPolicy -Identity 43c37853-ea10-4b90-a23d-ab8c93772471` <br> In this example, the policy that has GUID *43c37853-ea10-4b90-a23d-ab8c93772471* is removed. |

    When prompted, confirm the change.

7. To remove a segment, use the **Remove-OrganizationSegment** cmdlet with the *Identity* parameter and relevant details.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Remove-OrganizationSegment -Identity GUID` | `Remove-OrganizationSegment -Identity c96e0837-c232-4a8a-841e-ef45787d8fcd` <br> In this example, the segment with GUID c96e0837-c232-4a8a-841e-ef45787d8fcd was removed. |

## Stop a policy application

After you have started applying information barriers policies, if you want to stop those policies from being applied, use the following procedure. It will take approximately 30-35 minutes for the process to begin.

1. To view the status of the most recent information barriers policy application, use the **Get-InformationBarrierPoliciesApplicationStatus** cmdlet.

    Syntax: `Get-InformationBarrierPoliciesApplicationStatus`

    Note the application's GUID.

2. Use the **Stop-InformationBarrierPoliciesApplication** cmdlet with an Identity parameter.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Stop-InformationBarrierPoliciesApplication -Identity GUID` | `Stop-InformationBarrierPoliciesApplication -Identity 46237888-12ca-42e3-a541-3fcb7b5231d1` <p> In this example, we're stopping information barriers policies from being applied. |

## Resources

- [Get an overview of information barriers](information-barriers.md)
- [Define policies for information barriers](information-barriers-policies.md)
- [Learn more about information barriers in Microsoft Teams](/MicrosoftTeams/information-barriers-in-teams)
- [Learn more about information barriers in SharePoint Online](/sharepoint/information-barriers)
- [Learn more about information barriers in OneDrive](/onedrive/information-barriers)
- [Attributes for information barriers policies](information-barriers-attributes.md)
- [Troubleshooting information barriers](/office365/troubleshoot/information-barriers/information-barriers-troubleshooting)