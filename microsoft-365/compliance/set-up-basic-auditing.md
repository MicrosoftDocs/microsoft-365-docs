---
title: "Set up Basic auditing in Microsoft 365"
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
ms.collection: 
- M365-security-compliance
- m365solution-auditing
- m365initiative-compliance
- m365solution-scenario
search.appverid: 
- MOE150
- MET150
description: "This article describes how to set up Basic auditing so you can start searching for auditing activities performed by users and admins in your organization."
---

# Set up Basic auditing in Microsoft 365

Basic auditing in Microsoft 365 lets you search for audit records for activities performed in the different Microsoft 365 services by users and admins. Because Basic auditing is enabled by default for most Microsoft 365 and Office 365 organizations, there's only a few things you need to do before you and others in your organization can search the audit log.

This article discusses the following steps necessary to set up Basic auditing.

![Steps to set up Basic auditing](../media/BasicAuditingWorkflow.png)

These steps include ensuring the proper organizational subscriptions and user licensing required to generate and preserve audit records and assigning permissions to team members of your security operations, IT, compliance, and legal teams so that can search the audit log.

For more information, see [Basic auditing in Microsoft 365](auditing-solutions-overview.md#basic-auditing).

## Step 1: Verify organization subscription and user licensing

Licensing for Basic auditing requires the appropriate organization subscription that provides access to audit log search tool and per-user licensing that's required to log and retain audit records.

When an audited activity is performed by a user or admin, an audit record is generated and stored in the audit log for your organization. In Basic auditing, audit records are retained and searchable in the audit log for 90 days.

For a list of subscription and licensing requirements for Basic auditing, see [Auditing solutions in Microsoft 365](auditing-solutions-overview.md#licensing-requirements).

## Step 2: Assign permissions to search the audit log

Admins and members of investigation teams must be assigned the View-Only Audit Logs or Audit Logs role in Exchange Online to search the audit log. By default, these roles are assigned to the Compliance Management and Organization Management role groups on the **Permissions** page in the Exchange admin center. Global administrators in Office 365 and Microsoft 365 are automatically added as members of the Organization Management role group in Exchange Online. To give a user the ability to search the audit log with the minimum level of privileges, you can create a custom role group in Exchange Online, add the View-Only Audit Logs or Audit Logs role, and then add the user as a member of the new role group. For more information, see [Manage role groups in Exchange Online](/Exchange/permissions-exo/role-groups).

The following screenshot shows the two audit-related roles assigned to the Organization Management role group in the Exchange admin center.

![Audit roles assigned to role group in Exchange Online](../media/EACAuditRoles.png)

## Step 3: Search the audit log

Now you're ready to search the audit log in the Microsoft 365 compliance center.

1. Go to <https://compliance.microsoft.com> and sign in using an account that has been assigned the appropriate audit permissions.

2. In the left navigation pane of the Microsoft 365 compliance center, click **Show all** and then click **Audit**.

3. On the **Audit** page, configure the search using the following conditions on the **Search** tab. 

   1. **Date and time range**. 
  
   2. **Activities**.
  
   3. **Users**. 
  
   4. **File, folder, or site**. 

4. Click **Search** to run the search.