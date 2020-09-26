---
title: "Assign permissions for Data Investigations (preview)"
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

description: "This article describes how to set up the permissions necessary to use the Data Investigations tool in Microsoft 365."
---

# Assign permissions for Data Investigations (preview)

To access a data investigation in the Office 365 or Microsoft 365 compliance center, you need be a member of the Data Investigator role group. To add members to a role group, you must be a member of the Organization Management role group or assigned the Role Management role in the Security & Compliance Center. After a user becomes a member of the Data Investigator role group, they can create, access, and conduct investigations in the data investigations that you are a member of.

To assign data investigations permissions:

1. Go to [https://protection.office.com](https://protection.office.com) and sign in using the credentials for an admin account in your organization.

2. In the Security & Compliance Center, click **Permissions**.

3. Click the **Data Investigator** role group, and then next to **Members** on the flyout page, click **Edit**.

4. Click **Choose members** and then click **Add**. Select the users that you want to add as data investigators, and then click **Add**.

5. After you've added all the users, click **Done** and then click **Save** to save the changes to the role group.

> [!NOTE]
> The Data Investigation Management role that is assigned to the Data Investigator role group provides the necessary permissions to access the Data Investigations tool in the Office 365 or Microsoft 365 compliance center. By default, this role is not assigned to the Organization Management role group, which means that global admins in your organization may not be able to access the Data Investigations tool by default. To fix this, you can add global admins to the Data Investigator role group or add the Data Investigation Management role to the Organization Management role group. A third option would be to create a custom role group and assign the Data Investigation Management role (and other roles) and then add appropriate members. For more information about role groups and roles, see [Permissions in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center).
