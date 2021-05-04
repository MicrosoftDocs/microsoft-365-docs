---
title: "Get started with retention policies and retention labels"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
- m365solution-mig
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: Ready to start implementing retention policies and retention labels to govern your organization's data, but not sure where to start? Read some practical guidance to get started.
---

# Get started with retention policies and retention labels

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Ready to start governing your organization's data by retaining the content that you need to keep, and deleting the content that you don't? Use the following guidance to get started:

1. **Understand how retention works** in Microsoft 365, and then identify whether you need to use retention policies or retention labels, or a combination: [Learn about retention](retention.md)

2. **Identify the retention settings and actions** that are required by your organization policies or industry regulations.
    
    As part of this assessment, determine whether you will use [records management](records-management.md).

3. **Create retention policies and retention labels**, based on the retention settings and actions that you identified.
    
    For retention labels, you might find it useful to use [file plan](file-plan-manager.md) to define and refine your retention labels in a spreadsheet. Then, import that spreadsheet to create your labels.
    
3. **Publish and apply your retention labels**. While retention policies are designed for "set it and forget it" configuration, retention labels are reusable building blocks that can be used in multiple policies and can be incorporated into user workflows. See the list of [common scenarios](#common-scenarios-for-retention-policies-and-retention-labels) to help you identify how retention labels can be used. 

## Subscription and licensing requirements for retention policies and retention labels

A number of different subscriptions support retention policies and retention labels and the licensing requirements for users depend on the features you use.

To see the options for licensing your users to benefit from Microsoft 365 compliance features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For retention, see the [Information Governance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-governance) section and related PDF or Excel download for feature-level licensing requirements.

## Permissions required to create and manage retention policies and retention labels

Members of your compliance team who will create and manage retention policies and retention labels need permissions to the [Microsoft 365 compliance center](https://compliance.microsoft.com/). By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Compliance Administrator** admin role group.

Alternatively to using this default role, you can create a new role group and add the **Retention Management** role to this group. For a read-only role, use **View-Only Retention Management**. 

For more information about role groups and roles, see [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center).

For instructions to add users to role groups and assign roles, see [Give users access to the Security & Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md).

These permissions are required only to create, configure, and apply retention policies and retention labels. The person configuring these policies and labels doesn't require access to the content.

## Common scenarios for retention policies and retention labels

Use the following table to help you map your business requirements to retention scenarios supported by retention policies and retention labels.

|I want to ...|Documentation|
|----------------|---------------|
|Efficiently set retain and delete actions by Microsoft 365 service: <br />-  Exchange  <br />- SharePoint  <br />- OneDrive  <br />- Microsoft 365 Groups <br />- Skype for Business  <br />- Microsoft Teams <br />- Yammer network |[Create and configure retention policies](create-retention-policies.md)|
|Let admins and users manually apply retain and delete actions for documents and emails: <br />-  SharePoint <br />- OneDrive <br />- Outlook and Outlook on the web|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let site admins set default retain and delete actions for all content in a SharePoint library, folder, or document set|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let users automatically apply retain and delete actions to emails by using Outlook rules|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let admins apply retain and delete actions to a document understanding model, so that these are automatically applied to identified documents in a SharePoint library|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Automatically apply retain and delete actions to documents and emails |[Apply a retention label to content automatically](apply-retention-labels-automatically.md)|
|Start the retention period when an event occurs, such as:  <br />- Employees leave the organization <br />- Contracts expire <br />- End of product lifetime| [Start retention when an event occurs](event-driven-retention.md)|
|Restrict changes to policies to help meet regulatory requirements or safeguard against rogue administrators| [Use Preservation Lock to restrict changes to retention policies and retention label policies](retention-preservation-lock.md)
|Make sure somebody reviews and approves before content is deleted at the end of its retention period|[Disposition reviews](disposition.md#disposition-reviews) |
| Monitor how and where retain and delete settings are applied to items | [Monitoring retention labels](retention.md#monitoring-retention-labels) |
|Use a single records management solution for documents and emails |[Learn about records management](records-management.md) |

If you use retention labels for records management, there are additional scenarios that are unique to retention labels that mark content as a record. See [Common scenarios for records management](get-started-with-records-management.md#common-scenarios-for-records-management).

## End-user documentation for retention

Most retention policies work unobtrusively in the background without user interaction, and so need little documentation for users. Retention policies for Teams inform users when their messages have been deleted with a link to [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

Because retention labels have a UI presence in Microsoft 365 apps, make sure you provide guidance for end users and your help desk before you deploy these labels to your production network. To help users apply retention labels in SharePoint and OneDrive, see [Apply retention labels to files in SharePoint or OneDrive](https://support.microsoft.com/office/apply-retention-labels-to-files-in-sharepoint-or-onedrive-11a6835b-ec9f-40db-8aca-6f5ef18132df).

However, the most effective end-user documentation will be customized guidance and instructions you provide for the retention label names and configurations you choose. See the following blog post for a download package that you can use to train users and drive adoption: [End User Training for Retention Labels in M365 – How to Accelerate Your Adoption](https://techcommunity.microsoft.com/t5/microsoft-security-and/end-user-training-for-retention-labels-in-m365-how-to-accelerate/ba-p/1750861).