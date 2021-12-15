---
title: "Get started with retention policies for information governance"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- M365-security-compliance
- SPO_Content
- m365initiative-compliance
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MOE150
- MET150
description: Ready to start implementing retention policies to govern data for Microsoft 365 workloads, but not sure where to start? Read some practical guidance to get started.
---

# Get started with retention policies

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Ready to start governing your organization's data by retaining the content that you need to keep, and deleting the content that you don't? Use the following guidance to get started:

1. **Understand how retention works** in Microsoft 365, and then identify the workloads that will need retention policies. If individual items need exceptions, such as a longer retention period, you'll also need to create retention labels: [Learn about retention](retention.md)

2. **Identify the retention settings and actions** for the workloads and any exception items. For example, all documents on SharePoint must be retained for 3 years and then deleted, and all Teams chat messages must be permanently deleted after a year. These requirements are typically defined by your organization policies or industry regulations.

3. **Create and configure retention policies** for the identified workloads, specifying the retention settings and actions.

4. If you need exceptions: **Create and apply retention labels** by publishing them so that they can be incorporated into user workflows, or by applying them automatically, based on content such as sensitive information. 

## Subscription and licensing requirements for retention policies and retention labels

A number of different subscriptions support retention policies and retention labels and the licensing requirements for users depend on the features you use.

To see the options for licensing your users to benefit from Microsoft 365 compliance features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For retention, see the [Information Governance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-governance) section and related PDF download for feature-level licensing requirements.

## Permissions required to create and manage retention policies and retention labels

Members of your compliance team who will create and manage retention policies and retention labels need permissions to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft 365 compliance center</a>. By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Compliance Administrator** admin role group.

Alternatively to using this default role, you can create a new role group and add the **Retention Management** role to this group. For a read-only role, use **View-Only Retention Management**. 

For instructions to add users to the default roles or create your own role groups, see [Permissions in the Microsoft 365 compliance center](microsoft-365-compliance-center-permissions.md).

These permissions are required only to create, configure, and apply retention policies and retention labels. The person configuring these policies and labels doesn't require access to the content.

## End-user documentation for retention

Most retention policies work unobtrusively in the background without user interaction, and so need little documentation for users. Retention policies for Teams inform users when their messages have been deleted with a link to [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

If you use retention labels for exceptions, these labels do have a UI presence in Microsoft 365 apps. Before you deploy these labels to your production network, make sure you provide guidance for end users and your help desk. To help users apply retention labels in SharePoint and OneDrive, see [Apply retention labels to files in SharePoint or OneDrive](https://support.microsoft.com/office/apply-retention-labels-to-files-in-sharepoint-or-onedrive-11a6835b-ec9f-40db-8aca-6f5ef18132df).

However, the most effective end-user documentation will be customized guidance and instructions you provide for the retention label names and configurations you choose. See the following page and downloads that you can use to help train your users: [End User Training for Retention Labels](https://microsoft.github.io/ComplianceCxE/enduser/retention/).