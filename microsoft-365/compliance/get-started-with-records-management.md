---
title: "Get started with records management in Microsoft 365"
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
search.appverid: 
- MOE150
- MET150
description: Need a records management solution for Microsoft 365 that manages high-value content for legal, business, or regulatory obligations, but not sure where to start? Read some practical guidance to get started.
---

# Get started with records management

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Ready to start managing your organization's high-value content for legal, business, or regulatory obligations by using a records management solution in Microsoft 365? Use the following guidance to get started:

1. **Understand the records management solution** and what actions are allowed or blocked when documents and emails are declared records: [Learn about records management](records-management.md). 

2. **Understand retention labels and how retention works** for SharePoint and Exchange, because retention labels are used to declare records: [Learn about retention policies and retention labels](retention.md)

3. **Create your file plan for retention settings and actions** by [importing an existing plan](file-plan-manager.md#import-retention-labels-into-your-file-plan ) if you have one, or create [new retention labels that declare records](declare-records.md).

4. **Publish and apply your retention labels**. Retention labels are reusable building blocks that can be used in multiple policies and can be incorporated into user workflows: 
    
    - [Create retention labels and apply them in apps](create-apply-retention-labels.md)
    - [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

## Subscription and licensing requirements for records management

A number of different subscriptions support records management and the licensing requirements for users depend on the features you use.

To see the options for licensing your users to benefit from Microsoft 365 compliance features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For records management, see the [Records Management](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#records-management) section and related PDF or Excel download for feature-level licensing requirements.

## Permissions required for records management

Members of your compliance team who are responsible for records management need permissions to the [Microsoft 365 compliance center](https://compliance.microsoft.com/). By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Records Management** admin role group, which grants permissions for all features related to records management, including [disposition review and verification](disposition.md). 

For a read-only role, you can create a new role group and add the **View-Only Record Management** role to this group. 

For more information about role groups and roles, see [Permissions in the Security & Compliance Center](../security/office-365-security/permissions-in-the-security-and-compliance-center.md#roles-in-the-security--compliance-center).

For instructions to add users to role groups and assign roles, see [Give users access to the Security & Compliance Center](../security/office-365-security/grant-access-to-the-security-and-compliance-center.md).

These permissions are required only to create, configure, and apply retention labels that declare records, and manage disposition. The person configuring these labels doesn't require access to the content.

## Common scenarios for records management

Use the following table to help you map your business requirements to the scenarios that are supported by records management.

> [!NOTE]
> Because records management uses retention labels to mark an item as a record, many scenarios in this table are also listed as [common scenarios for retention policies and retention labels](get-started-with-retention.md#common-scenarios-for-retention-policies-and-retention-labels).

|I want to ...|Documentation|
|----------------|---------------|
|Declare a record |[Declare records by using retention labels](declare-records.md)|
|Update a record |[Use record versioning to update records stored in SharePoint or OneDrive](record-versioning.md)|
|Let admins and users manually apply retain and delete actions for documents and emails: <br />-  SharePoint <br />- OneDrive <br />- Outlook and Outlook on the web|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let site admins set default retain and delete actions for all content in a SharePoint library, folder, or document set|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let users automatically apply retain and delete actions to emails by using Outlook rules|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let admins apply retain and delete actions to a document understanding model, so that these are automatically applied to identified documents in a SharePoint library|[Create retention labels and apply them in apps](create-apply-retention-labels.md)|
|Automatically apply retain and delete actions to documents and emails |[Apply a retention label to content automatically](apply-retention-labels-automatically.md)|
|Start the retention period when an event occurs, such as:  <br />- Employees leave the organization <br />- Contracts expire <br />- End of product lifetime| [Start retention when an event occurs](event-driven-retention.md)|
|Restrict changes to policies to help meet regulatory requirements or safeguard against rogue administrators| [Use Preservation Lock to restrict changes to retention policies and retention label policies](retention-preservation-lock.md)
|Manage the lifecycle of different document types in SharePoint| [Use retention labels to manage the lifecycle of documents stored in SharePoint](auto-apply-retention-labels-scenario.md)|
|Make sure somebody reviews and approves before content is deleted at the end of its retention period|[Disposition reviews](disposition.md#disposition-reviews) |
|Have proof of disposition for content that is permanently deleted at the end of its retention period|[Disposition of records](disposition.md#disposition-of-records) |
| Monitor how and where retain and delete settings are applied to items | [Monitoring retention labels](retention.md#monitoring-retention-labels) |

## End-user documentation for records

Retention labels that are used for records management have a UI presence in Microsoft 365 apps. Make sure you provide guidance for end users and your help desk before you deploy retention labels to your production network.

To help users apply retention labels in SharePoint and OneDrive, which includes information about unlocking records for editing, see [Apply retention labels to files in SharePoint or OneDrive](https://support.microsoft.com/office/apply-retention-labels-to-files-in-sharepoint-or-onedrive-11a6835b-ec9f-40db-8aca-6f5ef18132df).

However, the most effective end-user documentation will be customized guidance and instructions you provide for the retention label names and configurations you choose. See the following blog post for a download package that you can use to train users and drive adoption: [End User Training for Retention Labels in M365 – How to Accelerate Your Adoption](https://techcommunity.microsoft.com/t5/microsoft-security-and/end-user-training-for-retention-labels-in-m365-how-to-accelerate/ba-p/1750861).
