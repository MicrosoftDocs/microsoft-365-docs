---
title: "Use multi-segment support in information barriers"
description: Learn how to use multi-segment support with information barriers in Microsoft Purview.
keywords: Microsoft 365, Microsoft Purview, compliance, information barriers
ms.author: robmazz
author: robmazz
manager: laurawi
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
ms.date: 03/09/2023
---

# Use multi-segment support in information barriers

> [!IMPORTANT]
> Support for assigning users to multiple segments is only available when your organization isn't in *Legacy* mode. To determine if your organization is in *Legacy* mode, see [Check the IB mode for your organization](#check-the-ib-mode-for-your-organization) and check the value of the `InformationBarrierMode` property. <br><br> Users are restricted to being assigned to only one segment for organizations in *Legacy* mode. Organizations in *Legacy* mode will be eligible to upgrade to the newest version of information barriers in the future. For more information, see the [information barriers roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=information%2Cbarriers).

The multi-segment mode enables you to assign users in your organization to up to 10 segments in information barriers instead of being limited to just one segment. This allows support for more diverse communication rules between individuals and groups to support more complex organizational and operational scenarios. For organizations using multi-segment support, all information barriers policies must be defined with an allow list.

When configured for multi-segment support, compatibility for users depending on each user's assignment to a shared segment. If users share assignment to the same segment, they are compatible. For example, the following table shows that User A and User B aren't compatible because they don't share an assigned segment. However, User A is compatible with User C and User B is compatible with User C because they each have an assigned segment in common.

| **User** | **Assigned segments** |
|:---------|:----------------------|
| User A | Segment 1, Segment 2 |
| User B | Segment 3, Segment 4 |
| User C | Segment 2, Segment 4 |
||

## Multi-segment example: North School District's schools, segments, and policies

The North School District has two schools, School 1 and School 2. The district policy is to allow students and teachers to communicate with each other only if they are both in the same school. For example, a student and teacher that are both in School 1 can communicate, but a student in School 1 cannot communicate with a teacher in School 2. For this scenario, multiple segments are configured to support the following district policy scenarios:

### North School District's schools and plan

North School District's has two schools:

| **Segment** | **Allowed communication** | **Prevented communication** |
|:------------|:--------------------------|:----------------------------|
| School 1 | Students and teachers in School 1 | Students and teachers in School 2 |
| School 2 | Students and teachers in School 2 | Students and teachers in School 1 |
|||

For this structure, North School District's plan includes three IB policies:

1. An IB policy designed to enable students and teachers in School 1 to communicate with each other.
2. Another IB policy to enable students and teachers in School 2 to communicate with each other.
3. Another IB policy designed to allow teachers in School 1 and School 2 to communicate with each other.

### North School District's defined segments

North School District will use the *Department* attribute in Azure Active Directory to define segments, as follows:

| **Segment** | **Segment definition** |
|:------------|:-----------------------|
| School1 | `New-OrganizationSegment -Name "School1" -UserGroupFilter "Department -eq 'School1'"` |
| School2 | `New-OrganizationSegment -Name "School2" -UserGroupFilter "Department -eq 'School2'"`  |
| AllTeachers | `New-OrganizationSegment -Name "AllTeachers" -UserGroupFilter "MemberOfGroup -eq 'AllTeachersgroup@northschoolsdistrict.com'"` |
||

With the segments defined, Contoso proceeds to define the IB policies.

### North School District's IB policies

North School District defines three IB policies, as described in the following table:

| Policy | Policy Definition |
|:-------|:------------------|
| **Policy 1: Students and teachers in School 1 can communicate with each other** | `New-InformationBarrierPolicy -Name School1Policy -SegmentsAllowed 'School1' -AssignedSegment 'School1' -State Active` <p> In this example, the IB policy is called *School1Policy*. When this policy is active and applied, it will enable students and teachers in School 1 to communicate with each other. This policy is a one-way policy; it won't prevent students and teachers in School 1 from communicating with School 2. For that, Policy 2 is needed. |
| **Policy 2: Students and teachers in School 2 can communicate with each other** | `New-InformationBarrierPolicy -Name School2Policy -SegmentsAllowed 'School2' -AssignedSegment 'School2' -State Active` <p> In this example, the IB policy is called *School2Policy*. When this policy is active and applied, it will enable students and teachers in School 2 to communicate with each other. |
| **Policy 3: Teachers in different schools can communicate with each other** | `New-InformationBarrierPolicy -Name AllTeachersPolicy -SegmentsAllowed 'AllTeachers' -AssignedSegment 'AllTeachers' -State Active` <p> In this case, the IB policy is called *AllTeachersPolicy*. When this policy is active and applied, teachers in School 1 and School 2 can communicate with each other. |
||

With segments and policies defined, the North School District applies the policies by running the **Start-InformationBarrierPoliciesApplication** cmdlet. When the cmdlet finishes, the North School District has implemented their communication policy for students and teachers.

## Check the IB mode for your organization

If you want to support assigning users to multiple segments, you'll need to verify that your IB organization supports multiple segments. Run the following cmdlet to verify your IB mode:

```powershell
Get-PolicyConfig
```

If the value of the `InformationBarrierMode` property is *SingleSegment*, you can enable multi-segment support by following the guidance in the [Enable multiple segment support for users](#enable-multiple-segment-support-for-users) section in this article. If the value of the `InformationBarrierMode` property is *MultiSegment*, you can skip enabling support for multi-segment, it's already enabled for your organization.

If the value of the `InformationBarrierMode` property is *Legacy*, enabling multi-segment isn't supported for your organization. *Legacy* organizations will be eligible to upgrade to the newest version of information barriers in the future. For more information, see the [information barriers roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=information%2Cbarriers)

## Enable multiple segment support for users

To enable multiple segment support for organizations in *SingleSegment* mode, you must not have any IB segments or policies currently defined for your organization. Run the following cmdlet to enable multiple segment support in your organization:

```powershell
Set-PolicyConfig -InformationBarrierMode 'MultiSegment'
```

> [!IMPORTANT]
> If you enable multiple segments and have configured IB in your organization, you should not revert to single segment support.

## Multi-segment support for users in OneDrive

If your IB organization isn't in *LegacyMode* mode and you've configured OneDrive for information barriers for multi-segment support, the OneDrive user experience is as follows:

- **OneDrive IB policy**: A multi-segment user's OneDrive ia automatically set to *Owner Moderated* mode by default.
- **OneDrive site access by a multi-segment user**:

    - *Explicit* or *Mixed* mode: A multi-segment user is granted access if they have at least one of the segments as that of the OneDrive and have site access permission.
    - **All other modes**: Users have the same site access experience as with single segment support.

- **OneDrive sharing by a multi-segment user**: A multi-segment user can share a OneDrive site and the included content per the IB mode configuring for OneDrive.

    - *Explicit* mode: Users can share OneDrive content with other users who have same segment as the OneDrive.
    - *Open* or *Owner moderated* mode: Users can share content with other compatible users per IB policies.

For more information about managing IB for OneDrive, see [Use information barriers with OneDrive](/sharepoint/information-barriers-onedrive).

## Multi-segment support for users in SharePoint Online

If your IB organization isn't in *LegacyMode* mode and you've configured SharePoint for information barriers for multi-segment support, the SharePoint user experience is as follows:

- **Site creation**: When a multi-segment user creates a SharePoint site (a Microsoft 365 group connected or non-group site), the site is automatically set to *Owner moderated* mode.
- **SharePoint site access by a multi-segment user**:

    - **Explicit mode**: Users are granted access if they have at least one of the segments as that of the site and have site access permission.
    - **All other modes**: Users have the same site access experience as with single segment support.

- **SharePoint site sharing by a multi-segment user**: A multi-segment user can share site and its content per IB mode of the site.

    - *Explicit* mode: Can share content with users who match the segment of the site.
    - *Implicit* or *Owner moderated* mode: Can share content with the other existing members of the Microsoft 365 group connected to the site.
    - *Open* mode: Can share content with other users who they are compatible per IB policy.

For more information about managing IB for SharePoint, see [Use information barriers with SharePoint](/sharepoint/information-barriers).

## Multi-segment support for users in Microsoft Teams

If your IB organization isn't in *LegacyMode* mode and you've configured Teams for information barriers for multi-segment support, the Microsoft Teams user experience is as follows:

- **Team creation**: When a multi-segment user creates a team, the team is automatically set to *Implicit* mode by default.
- **Team member addition**: All users in the team must have one segment which is compatible with all other users.

For more information about managing IB for Microsoft Teams, see [Use information barriers with Microsoft Teams](/microsoftteams/information-barriers-in-teams).
