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

description: "This article describes how to get started using Advanced eDiscovery in Microsoft 365. After you complete a few quick steps, the Advanced eDiscovery tool is ready to use."
---

# Get started with Advanced eDiscovery

Advanced eDiscovery in Microsoft 365 provides an end-to-end workflow to preserve, collect, review, analyze, and export data that's responsive to your organization's internal and external investigations. To get started with Advanced eDiscovery, there's nothing to deploy: you can just start using it. However, there are some prerequisite tasks that an IT admin and eDiscovery manager in your organization have to complete before you or others can start creating and using Advanced eDiscovery cases to manage legal or other types of investigations.

This article discusses the steps necessary setup  Advanced eDiscovery so people in your organization can start using it. This includes ensuring the proper licensing required to access Advanced eDiscovery and add custodians to cases, and assigning permissions to your legal and investigation team so they can access and manage cases. This article also provides a high-level overview of using cases to manage the Advanced eDiscovery workflow for a legal investigation.

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

6. Click **Add** to add the selected users, and then click **Done**.

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

## Step 3: Configure global settings for Advanced eDiscovery

The last step to complete before people in your organization start to create and use cases is to configure global settings that apply to all cases in your organization. At this time, there is one global setting that you can enable (more global settings will be implemented in the future). It's called *attorney-client privilege detection*. When it's enabled, all documents in a review set will be processed by the attorney-client privilege detection model when you analyze the data in the review set. The model uses machine learning to determine the likelihood that the document contains content that is legal in nature. It also compares the participants of documents in a review set with an attorney list (that you submit when setting up the model) to determine if a document has at least one attorney participant.

For more information about setting up and using the attorney-client privilege detection model, see [Set up attorney-client privilege detection in Advanced eDiscovery](attorney-privilege-detection.md).

> [!NOTE]
> This is optional step that you can perform anytime. Not implementing the attorney-client privilege detection model doesn't prevent you from creating and using Advanced eDiscovery cases.

## Step 4: Create an Advanced eDiscovery case

The next step is to create a case and start using Advanced eDiscovery. Complete the following steps to create a case and add members. The user who creates the case is automatically added as a member.

1. Go to [https://compliance.microsoft.com](https://compliance.microsoft.com) and sign in using the credentials for user account that has been assigned the appropriate eDiscovery permissions. Members of the Organization Management role group can also create Advanced eDiscovery cases.

2. In the left nave of the Microsoft 365 compliance center, click **Show all**, and then click **eDiscovery > Advanced**.
 
3. On the **Advanced eDiscovery** page, click the **Cases** tab, and then click **Create a case**.
    
4. On the **New eDiscovery case** flyout page, give the case a name (required), and then type an optional case number and description. The case name must be unique in your organization.

5. Click **Save** to create the case.

   The new case is created and the **Settings** tab in the new case is displayed. 

6. In the **Access & permissions** tile on the **Settings** tab, click **Select**, and then click **Update**.

7. Click **Update**.

8. On the **Manage this case** flyout page, under **Manage members**, click **Add** to add members to the case.

9. In the list of people, select the check box next to the names of the people that you want to add to the case. As previously explained, be sure that the people you add to the case have been assigned the appropriate eDiscovery permissions.

10. After you've selected the people to add as members of the case, click **Add**.

11. In the **Manage this case** flyout page, click **Save** to save the new list of case members.

12. Click the **Home** tab to go to the case home page.

## The Advanced eDiscovery workflow

1.	Add custodians, custodian data sources, place hold on custodian data sources, manage legal hold notification process.
2.	Search custodial locations for data relevant to case
3.	Add search results from previous step to review set
4.	Tag, analyze, cull, redact data in the review set
5.	Export and download case data
