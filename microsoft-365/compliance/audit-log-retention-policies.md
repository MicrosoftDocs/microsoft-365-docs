---
title: "Manage audit log retention policies"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
search.appverid:
- MOE150
- MET150
ms.assetid: 
description: ""
---

# Manage audit log retention policies

You can create and manage audit log retention policies in the Security & Compliance Center. Audit log retention policies are part of the new Advanced Audit capabilities in Microsoft 365. An audit log retention policy lets you specify how long to retain audit logs in your organization. You can retain audit logs for up to one year. You can create policies based on the following criteria:

- All activities in one or more Microsoft services

- Specific activities (in a specific service) performed by all users or by specific users

- A priority level that specifies which policy takes precedence in you have multiple policies in your organization



## Default audit log retention policy

Advanced Audit in Microsoft 365 provides a default audit log retention policy for all organizations. This policy retains all Exchange, SharePoint, and Azure Active Directory audit records for one year. This default policy retains any audit records that contain the value of **Exchange**,**SharePoint**, or **AzureActiveDirectory** as the value of the **Workload** property (which is the service in which the activity occurred) in the audit record. See the [More information](#more-information) section for a list of record types that are included in this default retention policy.

## Before you begin

- You have to be assigned the Organization Configuration role in the Security & Compliance Center to create or modify an audit retention policy.

- You can have a maximum of 50 audit log retention policies in your organization.

- All custom audit log retention policies (created by your organization) take priority of the default retention policy. For example, if you create a audit log retention policy for Exchange mailbox activity that has a shorter retention period that one year, audit records for Exchange mailbox activities will be retained for the shorter duration specified by the custom retention policy.

## Create an audit log retention policy in the Security & Compliance Center

1. Go to [https://protection.office.com](https://protection.office.com) and sign in with user account that's assigned the Organization Configuration role in the Security & Compliance Center. 

2. In the left pane of the Security & Compliance Center, click **Search** > **Audit log search**.

    The **Audit log search** page is displayed.

    ![The Audit log search page](media/AuditLogRetentionPolicy1.png)

3. Click **New Retention Policy**, complete the following fields on the flyout page, and click **Save** to create a new audit log retention policy.


   a. 

   b.
   
   c.
   
   d.
   
   e.
   
   f.

## Create an audit log retention policy in PowerShell

1. 


## More information 