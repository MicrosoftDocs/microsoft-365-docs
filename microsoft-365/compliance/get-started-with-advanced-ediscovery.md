---
title: "Get started with Advanced eDiscovery in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: "This article describes the new version of Advanced eDiscovery in Microsoft 365."
---

# Get started with Advanced eDiscovery

Advanced eDiscovery in Microsoft 365 provides an end-to-end workflow to preserve, collect, review, analyze, and export data that's responsive to your organization's internal and external investigations. To get started with Advanced eDiscovery, there's nothing to deploy: you can just start using it. However, there are some prerequisite tasks that an IT admin and eDiscovery manager in your organization have to complete before you or others can start creating and using Advanced eDiscovery cases to manage legal or other types of investigations.

This article discusses the steps necessary set up  Advanced eDiscovery so people in your organization can start using it. This includes ensuring the proper licensing required to access Advanced eDiscovery and add custodians to cases, and assigning permissions to your legal and investigation team so they can access and manage cases. This article also provides a high-level overview of using cases to manage the Advanced eDiscovery workflow for a legal investigation.

## Step 1: Verify and assign appropriate licenses

Licensing for Advanced eDiscovery requires the appropriate organization subscription and per-user licensing.

- **Organization subscription:** To access the Advanced eDiscovery tool in the Microsoft 365 compliance center or the Office 365 Security & Compliance Center, your organization must have Office 365 or Microsoft E5 subscription. 

- **Per-user licensing:** To add a user as a custodian in an Advance eDiscovery case, that user must be assigned one of the following licenses, depending on your organization subscription:

  - **Microsoft 365:** Users must be assigned a Microsoft 365 E5 license or an E5 Compliance add-on license.

  - **Office 365:** Users must be assigned an Office 365 E5 license or an Advanced Compliance add-on license.

For information about how to assign licenses, see [Assign licenses to users](https://docs.microsoft.com/microsoft-365/admin/manage/assign-licenses-to-users).

> [!NOTE]
> Users only need an E5 license to be added as a custodian to an Advanced eDiscovery case. IT admins, eDiscovery managers, lawyers, paralegals, or investigators who use Advanced eDiscovery to manage cases or review case data don't need an E5 license.

## Step 2: Assign eDiscovery permissions

To access the Advanced eDiscovery tool and to be added as a member of an Advanced eDiscovery case, a user must be assigned the appropriate permissions. Specifically, a user must be added as a member of the eDiscovery Manager role group in the Office 365 Security & Compliance Center. Members of this role group can create and manage Advanced eDiscovery cases. They can add and remove members, place custodians and content locations on hold, manage legal hold notifications, create and edit searches associated in a case, add search results to a review set, analyze data in a review set, and export and download from an Advanced eDiscovery case.

Complete the following steps to add users to the eDiscovery Manager role group:

1. Go to [https://protection.office.com/permissions](https://protection.office.com/permissions) and sign in using the credentials for an admin account in your Microsoft 365 organization.

2. On the **Permissions** page, select the **eDiscovery Manager** role group. 

3. On the eDiscovery Manager flyout page, click **Edit** next to the **eDiscovery Manager** section.

4. On the **Choose eDiscovery Manager** page in the edit role group wizard, click **Choose Discovery Manager**.

5. Click **Add** then select the checkbox for all users you want to add to the role group. 

6. Click **Add** to added the selected users, and then click **Done**.

7. Click **Save** to add the users to the role group, and then click **Close** to complete the step.

### More information about the eDiscovery Manager role group

There are two subgroups in the eDiscovery Manager role group. The difference between these subgroups is based on scope.

- **eDiscovery Manager:** Can view and manage the Advanced eDiscovery cases they create or are a member of. If another eDiscovery Manager creates a case but doesn't add a second eDiscovery Manager as a member of that case, the second eDiscovery Manager won't be able to view or open the case on the Advanced eDiscovery page in the compliance center. In general, most people in your organization can be added to the eDiscovery Manager subgroup.

- **eDiscovery Administrator:** Can perform all case management tasks that an eDiscovery Manager can do. Additionally, an eDiscovery Administrator can:

  - View all cases that are listed on the Advanced eDiscovery page.
  
  - Manage any case in the organization after they add themselves as a member of the case.

  - Access and export case data for any case in the organization.

  Because of the broad scope of access, an organization should have only a few admins who are members of the eDiscovery Administrators subgroup.

For more information about eDiscovery permissions and a description of each role that's assigned to the eDiscovery Manager role group, see [Assign eDiscovery permissions in the Security & Compliance Center](assign-ediscovery-permissions.md).





## Step 3: Create and configure an Advanced eDiscovery case

## Step 4: 

## Step 5: 


Part 1:Setting up the service (E5 subscription for tenant and per-user licensing for custodians)
Part 2: Setting up Advanced eDiscovery, which entails assigning RBAC permissions to IT, eDiscovery, and legal people in the org, global analytics settings)
Part 3: Setting up a case (create case, add members, and optionally implement case-wide settings)
Part 4: The case workflow



1.	Add custodians, custodian data sources, place hold on custodian data sources, manage legal hold notification process.
2.	Search custodial locations for data relevant to case
3.	Add search results from previous step to review set
4.	Tag, analyze, cull, redact data in the review set
5.	Export and download case data
