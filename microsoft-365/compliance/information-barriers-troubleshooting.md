---
title: "Troubleshooting information barriers"
description: Use this article as a guide for troubleshooting information barriers.
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
localization_priority: None
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
---

# Troubleshooting information barriers

[Information barriers](information-barriers.md) can help your organization remain compliant with legal requirements and industry regulations. For example, with information barriers, you can restrict communication between specific groups of users to avoid a conflict of interest or other issues. (To learn more about how to set up information barriers, see [Define policies for information barriers](information-barriers-policies.md).)

In the event that people run into unexpected issues after information barriers are in place, there are some steps you can take to resolve those issues. Use this article as a guide.

> [!IMPORTANT]
> To perform the tasks described in this article, you must be assigned an appropriate role, such as one of the following:<br/>- Microsoft 365 Enterprise Global Administrator<br/>- global administrator<br/>- Compliance Administrator<br/>- IB Compliance Management (this is a new role!)<p>To learn more about prerequisites for information barriers, see [Prerequisites (for information barrier policies)](information-barriers-policies.md#prerequisites).<p>Make sure to [connect to Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell).

## Issue: Users are unexpectedly blocked from communicating with others in Microsoft Teams 

In this case, people are reporting unexpected issues communicating with others in Microsoft Teams. Some examples are:

- A user searches for, but is unable to find, another user in Microsoft Teams.
- A user can find, but cannot select, another user in Microsoft Teams.
- A user can see another user, but cannot send messages to that other user in Microsoft Teams.

### What to do

Determine whether the users are affected by an information barrier policy. Depending on how policies are configured, information barriers might be working as expected. Or, you might have to refine your organization's policies.

1. Use the **Get-InformationBarrierRecipientStatus** cmdlet with the Identity parameter. 

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Get-InformationBarrierRecipientStatus -Identity` <p> You can use any identity value that uniquely identifies each recipient, such as Name, Alias, Distinguished name (DN), Canonical DN, Email address, or GUID. |`Get-InformationBarrierRecipientStatus -Identity meganb` <p> In this example, we are using an alias (*meganb*) for the Identity parameter. This cmdlet will return information that indicates whether the user is affected by an information barrier policy. (Look for *ExoPolicyId: \<GUID>.) |

    **If the users are not included in information barrier policies, contact support**. Otherwise, proceed to the next step.

2. Find out which segments are included in an information barrier policy. To do this, use the `Get-InformationBarrierPolicy` cmdlet with the Identity parameter. 

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Get-InformationBarrierPolicy` <p> Use details, such as the policy GUID (ExoPolicyId) you received during the previous step, as an identity value. | `Get-InformationBarrierPolicy -Identity b42c3d0f-49e9-4506-a0a5-bf2853b5df6f` <p> In this example, we are getting detailed information about the information barrier policy that has ExoPolicyId *b42c3d0f-49e9-4506-a0a5-bf2853b5df6f*. |

    After you run the cmdlet, in the results, look for **AssignedSegment**, **SegmentsAllowed**, and **SegmentsBlocked** values.

    For example, after running the `Get-InformationBarrierPolicy` cmdlet, we saw the following in our list of results:

    ```powershell
    AssignedSegment : Sales
    SegmentsAllowed : {}
    SegmentsBlocked : {Research}
    ```

    In this case, we can see that an information barrier policy affects people who are in the Sales and Research segments. In this case, people in Sales are prevented from communicating with people in Research.

    If this seems correct, then information barriers are working as expected. If not, proceed to the next step.

3. Make sure your segments are defined correctly. To do this, use the `Get-OrganizationSegment` cmdlet, and review the list of results.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Get-OrganizationSegment`<p> Use this cmdlet with an Identity parameter. | `Get-OrganizationSegment -Identity c96e0837-c232-4a8a-841e-ef45787d8fcd` <p> In this example, we are getting information about the segment that has GUID *c96e0837-c232-4a8a-841e-ef45787d8fcd*. |

    Review the details for the segment. If necessary, [edit a segment](information-barriers-edit-segments-policies.md#edit-a-segment), and then re-use the `Start-InformationBarrierPoliciesApplication` cmdlet.

    **If you are still having issues with your information barrier policy, contact support**.

## Issue: Communications are allowed between users who should be blocked in Microsoft Teams

In this case, although information barriers are defined, active, and applied, people who should be prevented from communicating with each other are somehow able to chat with and call each other in Microsoft Teams.

### What to do

Verify that the users in question are included in an information barrier policy. 

1. Use the **Get-InformationBarrierRecipientStatus** cmdlet with Identity parameters.

    |**Syntax***|**Example**|
    |:----------|:----------|
    | `Get-InformationBarrierRecipientStatus -Identity <value> -Identity2 <value>` <p> You can use any value that uniquely identifies each user, such as name, alias, distinguished name, canonical domain name, email address, or GUID. |`Get-InformationBarrierRecipientStatus -Identity meganb -Identity2 alexw` <p> In this example, we refer to two user accounts in Office 365: *meganb* for *Megan*, and *alexw* for *Alex*. |

    > [!TIP]
    > You can also use this cmdlet for a single user: `Get-InformationBarrierRecipientStatus -Identity <value>`

2. Review the findings. The **Get-InformationBarrierRecipientStatus** cmdlet returns information about users, such as attribute values and any information barrier policies that are applied.

    Review the results, and then take your next steps, as described in the following table:

    |**Results**|**What to do next**|
    |:----------|:------------------|
    | No segments are listed for the selected user(s) | Do one of the following:<br/>- Assign users to an existing segment by editing their user profiles in Azure Active Directory. (See [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md).)<br/>- Define a segment using a [supported attribute for information barriers](information-barriers-attributes.md). Then, either [define a new policy](information-barriers-policies.md#part-2-define-information-barrier-policies) or [edit an existing policy](information-barriers-edit-segments-policies.md#edit-a-policy) to include that segment. |
    | Segments are listed but no information barrier policies are assigned to those segments | Do one of the following:<br/>- [Define a new information barrier policy](information-barriers-policies.md#part-2-define-information-barrier-policies) for each segment in question <br/>- [Edit an existing information barrier policy](information-barriers-edit-segments-policies.md#edit-a-policy) to assign it to the correct segment |
    | Segments are listed and each is included in an information barrier policy | - Run the `Get-InformationBarrierPolicy` cmdlet to verify that information barrier policies are active<br/>- Run the `Get-InformationBarrierPoliciesApplicationStatus` cmdlet to confirm the policies are applied<br/>- Run the `Start-InformationBarrierPoliciesApplication` cmdlet to apply all active information barrier policies |

## Issue: I need to remove a single user from an information barrier policy

In this case, information barrier policies are in effect, and a one or more users are unexpectedly blocked from communicating with others in Microsoft Teams. Rather than remove information barrier policies altogether, you can remove one or more individual users from information barrier policies.

### What to do

Information barrier policies are assigned to segments of users. Segments are defined by using certain [attributes in user account profiles](information-barriers-attributes.md). If you must remove a policy from a single user, consider editing that user's profile in Azure Active Directory such that the user is no longer included in a segment affected by information barriers.

1. Use the **Get-InformationBarrierRecipientStatus** cmdlet with Identity parameters. This cmdlet returns information about users, such as attribute values and any information barrier policies that are applied.

    |**Syntax**|**Example**|
    |:---------|:----------|
    | `Get-InformationBarrierRecipientStatus -Identity <value> -Identity2 <value>` <p> You can use any value that uniquely identifies each user, such as name, alias, distinguished name, canonical domain name, email address, or GUID. | `Get-InformationBarrierRecipientStatus -Identity meganb -Identity2 alexw` <p> In this example, we refer to two user accounts in Office 365: *meganb* for *Megan*, and *alexw* for *Alex*.          |
    | `Get-InformationBarrierRecipientStatus -Identity <value>` <p> You can use any value that uniquely identifies the user, such as name, alias, distinguished name, canonical domain name, email address, or GUID.|`Get-InformationBarrierRecipientStatus -Identity jeanp`<p> In this example, we refer to a single account in Office 365: *jeanp*. |

2. Review the results to see if information barrier policies are assigned, and to which segment(s) the user(s) belong.

3. To remove a user from a segment affected by information barriers, [update the user's profile information in Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).

4. Wait about 30 minutes for FwdSync to occur. Or, run the `Start-InformationBarrierPoliciesApplication` cmdlet to apply all active information barrier policies.

## Issue: The information barrier application process is taking too long

After running the **Start-InformationBarrierPoliciesApplication** cmdlet, the process is taking a really long time to finish.

### What to do

Keep in mind that when you run the policy application cmdlet, information barrier policies are being applied (or removed), user by user, for all accounts in your organization. If you have a lot of users, it will take a while to process. (As a general guideline, it takes about an hour to process 5,000 user accounts.)

1. Use the **Get-InformationBarrierPoliciesApplicationStatus** cmdlet to verify status of the most recent policy application.

    |**To view the most recent policy application**|**To view status for all policy applications**|
    |:---------------------------------------------|:---------------------------------------------|
    | `Get-InformationBarrierPoliciesApplicationStatus` | `Get-InformationBarrierPoliciesApplicationStatus -All $true` |

    This will display information about whether policy application completed, failed, or is in progress.

2. Depending on the results of the previous step, take one of the following steps:
  
    |**Status**|**Next step**|
    |:---------|:------------|
    | **Not started** | If it has been more than 45 minutes since the **Start-InformationBarrierPoliciesApplication** cmdlet has been run, review your audit log to see if there are any errors in policy definitions, or some other reason why the application has not started. |
    | **Failed** | If the application has failed, review your audit log. Also review your segments and policies. Are any users assigned to more than one segment? Are any segments assigned more than one poliicy? If necessary, [edit segments](information-barriers-edit-segments-policies.md#edit-a-segment) and/or [edit policies](information-barriers-edit-segments-policies.md#edit-a-policy), and then run the **Start-InformationBarrierPoliciesApplication** cmdlet again. |
    | **In progress** | If the application is still in progress, allow more time for it to complete. If it has been several days, gather your audit logs, and then contact support. |

## Issue: Information barrier policies are not being applied at all

In this case, you have defined segments, defined information barrier policies, and have attempted to apply those policies. However, when you run the `Get-InformationBarrierPoliciesApplicationStatus` cmdlet, you can see that policy application has failed.

### What to do

Make sure that your organization does not have [Exchange address book policies](/exchange/address-books/address-book-policies/address-book-policies) in place. Such policies will prevent information barrier policies from being applied.

1. Connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Run the [Get-AddressBookPolicy](/powershell/module/exchange/get-addressbookpolicy) cmdlet, and review the results.

    |**Results**|**Next step**|
    |:----------|:------------|
    | Exchange address book policies are listed | [Remove address book policies](/exchange/address-books/address-book-policies/remove-an-address-book-policy) |
    | No address book policies exist |Review your audit logs to find out why policy application is failing |

3. [View status of user accounts, segments, policies, or policy application](information-barriers-policies.md#view-status-of-user-accounts-segments-policies-or-policy-application).

## Issue: Information barrier policy not applied to all designated users

After you have defined segments, defined information barrier policies, and have attempted to apply those policies, you may find that the policy is applying to some recipients, but not to others.
When you run the `Get-InformationBarrierPoliciesApplicationStatus` cmdlet, search the output for text like this.

> Identity: `<application guid>`
>
> Total Recipients: 81527
>
> Failed Recipients: 2
>
> Failure Category: None
>
> Status: Complete

### What to do

1. Search in the audit log for `<application guid>`. You can copy this PowerShell code and modify for your variables.

```powershell
$DetailedLogs = Search-UnifiedAuditLog -EndDate <yyyy-mm-ddThh:mm:ss>  -StartDate <yyyy-mm-ddThh:mm:ss> -RecordType InformationBarrierPolicyApplication -ResultSize 1000 |?{$_.AuditData.Contains(<application guid>)} 
```

2. Check the detailed output from the audit log for the values of the `"UserId"` and `"ErrorDetails"` fields. This will give you the reason for the failure. You can copy this PowerShell code and modify for your variables.

```powershell
   $DetailedLogs[1] |fl
```

For example:

> "UserId":  User1
>
>"ErrorDetails":"Status: IBPolicyConflict. Error: IB  segment "segment id1" and IB segment "segment id2" has conflict and cannot be assigned to the recipient.

3. Usually, you will find that a user has been included in more than one segment. You can fix this by updating the `-UserGroupFilter` value in `OrganizationSegments`.

4. Re-apply information barrier policies using these procedures [Information Barriers policies](information-barriers-policies.md#part-3-apply-information-barrier-policies).

## Resources

- [Define policies for information barriers in Microsoft Teams](information-barriers-policies.md)
- [Information barriers](information-barriers.md)