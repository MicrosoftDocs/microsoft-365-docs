---
title: "Attributes for information barrier policies"
description: This article is a reference for the Azure Active Directory user account attributes that you can use to define information barrier segments.
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

# Attributes for information barrier policies

Certain attributes in Azure Active Directory can be used to segment users. Once segments are defined, those segments can be used as filters for information barrier policies. For example, you might use **Department** to define segments of users by department within your organization (assuming no single employee works for two departments at the same time).

This article describes how to use attributes with information barriers, and it provides a list of attributes that can be used. To learn more about information barriers, see the following resources:

- [Information barriers](information-barriers.md)
- [Define policies for information barriers in Microsoft Teams](information-barriers-policies.md)
- [Edit (or remove) information barrier policies](information-barriers-edit-segments-policies.md)

## How to use attributes in information barrier policies

The attributes listed in this article can be used to define or edit segments of users. Your defined segments serve as parameters (called *UserGroupFilter* values) in [information barrier policies](information-barriers-policies.md).

1. Determine which attribute you want to use to define segments. (See the [Reference](#reference) section in this article.)

2. Make sure the user accounts have values filled in for the attribute(s) you selected in Step 1. View user account details, and if necessary, edit user accounts to include attribute values. 

    - To edit multiple accounts (or use PowerShell to edit a single account), see [Configure user account properties with Office 365 PowerShell](../enterprise/configure-user-account-properties-with-microsoft-365-powershell.md).

    - To edit a single account, see [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).

3. [Define segments using PowerShell](information-barriers-policies.md#define-segments-using-powershell), similar to the following examples:

    |**Example**|**Cmdlet**|
    |:----------|:---------|
    | Define a segment called Segment1 using the Department attribute | `New-OrganizationSegment -Name "Segment1" -UserGroupFilter "Department -eq 'Department1'"` |
    | Define a segment called SegmentA using the MemberOf attribute (suppose this attribute contains group names, such as "BlueGroup") | `New-OrganizationSegment -Name "SegmentA" -UserGroupFilter "MemberOf -eq 'BlueGroup'"` |
    | Define a segment called DayTraders using ExtensionAttribute1 (suppose this attribute contains job titles, such as "DayTrader") | `New-OrganizationSegment -Name "DayTraders" -UserGroupFilter "ExtensionAttribute1 -eq 'DayTrader'"` |

    > [!TIP]
    > When you define segments, use the same attribute for all your segments. For example, if you define some segments using *Department*, define all of the segments using *Department*. Don't define some segments using *Department* and others using *MemberOf*. Make sure your segments do not overlap; each user should be assigned to exactly one segment.

## Reference

The following table lists the attributes that you can use with information barriers.

|**Azure Active Directory property name<br/>(LDAP display name)**|**Exchange property name**|
|:---------------------------------------------------------------|:-------------------------|
| Co | Co |
| Company | Company |
| Department | Department |
| ExtensionAttribute1 | CustomAttribute1 |
| ExtensionAttribute2 | CustomAttribute2 |
| ExtensionAttribute3 | CustomAttribute3 |
| ExtensionAttribute4 | CustomAttribute4 |
| ExtensionAttribute5 | CustomAttribute5 |
| ExtensionAttribute6 | CustomAttribute6 |
| ExtensionAttribute7 | CustomAttribute7 |
| ExtensionAttribute8 | CustomAttribute8 |
| ExtensionAttribute9 | CustomAttribute9 |
| ExtensionAttribute10 | CustomAttribute10 |
| ExtensionAttribute11 | CustomAttribute11 |
| ExtensionAttribute12 | CustomAttribute12 |
| ExtensionAttribute13 | CustomAttribute13 |
| ExtensionAttribute14 | CustomAttribute14 |
| ExtensionAttribute15 | CustomAttribute15 |
| MSExchExtensionCustomAttribute1 | ExtensionCustomAttribute1 |
| MSExchExtensionCustomAttribute2 | ExtensionCustomAttribute2 |
| MSExchExtensionCustomAttribute3 | ExtensionCustomAttribute3 |
| MSExchExtensionCustomAttribute4 | ExtensionCustomAttribute4 |
| MSExchExtensionCustomAttribute5 | ExtensionCustomAttribute5 |
| MailNickname | Alias |
| PhysicalDeliveryOfficeName | Office |
| PostalCode | PostalCode |
| ProxyAddresses | EmailAddresses |
| StreetAddress | StreetAddress |
| TargetAddress | ExternalEmailAddress |
| UsageLocation | UsageLocation |
| UserPrincipalName | UserPrincipalName |
| Mail | WindowsEmailAddress |
| Description | Description |
| MemberOf | MemberOfGroup |

## Resources

- [Define policies for information barriers in Microsoft Teams](information-barriers-policies.md)
- [Troubleshooting information barriers](information-barriers-troubleshooting.md)
- [Information barriers](information-barriers.md)