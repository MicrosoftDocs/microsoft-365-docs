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
ms.localizationpriority: high
ms.collection:
- purview-compliance
- tier1
- highpri
- SPO_Content
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MOE150
- MET150
description: Prescriptive steps for admins, licensing requirements, and common scenarios that manage high-value content in Microsoft 365 for your legal, business, or regulatory obligations.
---

# Get started with records management

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Ready to start managing your organization's high-value content for legal, business, or regulatory obligations by using a records management solution in Microsoft 365? Use the following guidance to get started:

1. **Understand how retention and deletion works** in Microsoft 365, and identify whether you need to use retention policies to supplement retention labels that manage documents and emails at the item level: [Learn about retention policies and retention labels](retention.md)
    
    If necessary, [create retention policies](create-retention-policies.md) for baseline governance of data across Microsoft 365 workloads.
    
2. **Understand the records management solution** and how retention labels can be used to allow or block actions when documents and emails are declared records: [Learn about records management](records-management.md)

3. **Create your file plan for retention and deletion settings and actions, and when items should be marked as records** by importing an existing plan if you have one, or create new retention labels: [Use file plan to create and manage retention labels](file-plan-manager.md)

4. **Publish and apply your retention labels**. Retention labels are reusable building blocks that can be used in multiple policies and can be incorporated into user workflows:

    - [Publish retention labels and apply them in apps](create-apply-retention-labels.md)
    - [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

> [!TIP]
> If you're migrating records to Microsoft 365 and need to validate that they haven't been altered, see [Validating migrated records](records-management.md#validating-migrated-records).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Subscription and licensing requirements

A number of different subscriptions support records management and the licensing requirements for users depends on the features you use.

To see the options for licensing your users to benefit from Microsoft Purview features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For records management, see the [Microsoft Purview Data Lifecycle Management & Microsoft Purview Records Management](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-data-lifecycle-management--microsoft-purview-records-management) section for feature-level licensing requirements.

## Permissions

Members of your compliance team who are responsible for records management need permissions to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>. By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Records Management** admin role group, which grants permissions for all features related to records management, including [disposition review and verification](disposition.md).

For a read-only role, you can create a new role group and add the **View-Only Record Management** role to this group.

For instructions to add users to the default roles or create your own role groups, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

These permissions are required only to create, configure, and apply retention labels that declare records, and manage disposition. The person configuring these labels doesn't require access to the content.

## Common scenarios

Use the following table to help you map your business requirements to the scenarios that are supported by records management.

> [!TIP]
> Need to comply with a specific industry regulation? Check [Regulatory requirements for data lifecycle management and records management](retention-regulatory-requirements.md) for regulation-specific guidance.

|I want to ...|Documentation|
|----------------|---------------|
|Declare a record |[Declare records by using retention labels](declare-records.md)|
|Update a record |[Use record versioning to update records stored in SharePoint or OneDrive](record-versioning.md)|
|Let admins and users manually apply retain and delete actions for documents and emails: <br />-  SharePoint <br />- OneDrive <br />- Outlook and Outlook on the web|[Publish retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let site admins set default retain and delete actions for all content in a SharePoint library, folder, or document set|[Publish retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let users automatically apply retain and delete actions to emails by using Outlook rules|[Publish retention labels and apply them in apps](create-apply-retention-labels.md)|
|Let admins apply retain and delete actions to a document understanding model, so that these are automatically applied to identified documents in a SharePoint library|[Publish retention labels and apply them in apps](create-apply-retention-labels.md)|
|Automatically apply retain and delete actions to documents and emails |[Apply a retention label to content automatically](apply-retention-labels-automatically.md)|
|Start the retention period when an event occurs, such as:  <br />- Employees leave the organization <br />- Contracts expire <br />- End of product lifetime| [Start retention when an event occurs](event-driven-retention.md)|
|Do custom actions or integrate with other solutions at the end of the retention period| [Customize what happens at the end of the retention period](retention-label-flow.md)|
|Restrict changes to policies to help meet regulatory requirements or safeguard against rogue administrators| [Use Preservation Lock to restrict changes to retention policies and retention label policies](retention-preservation-lock.md)
|Manage the lifecycle of different document types in SharePoint| [Use retention labels to manage the lifecycle of documents stored in SharePoint](auto-apply-retention-labels-scenario.md)|
|Apply a retention label to a file when I receive an alert that content containing personal data is being stored or remains untouched for too long| [Investigate and remediate alerts in Privacy Risk Management](/privacy/priva/risk-management-alerts)|
|Make sure somebody reviews and approves before content is deleted at the end of its retention period|[Disposition reviews](disposition.md#disposition-reviews) |
|Have proof of disposition for content that is permanently deleted at the end of its retention period|[Disposition of records](disposition.md#disposition-of-records) |
| Monitor how and where retain and delete settings are applied to items | [Monitoring retention labels](retention.md#monitoring-retention-labels) |
| Programatically create and manage retention labels, event-based retention, and automate repetitive tasks for records management | [Microsoft Graph API for records management (preview)](compliance-extensibility.md#microsoft-graph-api-for-records-management-preview) |

## End-user documentation

If you're using retention policies for baseline data governance, they typically work unobtrusively in the background without user interaction. As a result, they need little documentation for users. Retention policies for Teams inform users when their messages have been deleted with a link to [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

In comparison, retention labels have a UI presence in Microsoft 365 apps, so make sure you provide guidance for end users and your help desk before these labels are deployed to your production network. To help users apply retention labels in SharePoint and OneDrive, and information about unlocking records for editing, see [Apply retention labels to files in SharePoint or OneDrive](https://support.microsoft.com/office/apply-retention-labels-to-files-in-sharepoint-or-onedrive-11a6835b-ec9f-40db-8aca-6f5ef18132df).

However, the most effective end-user documentation will be customized guidance and instructions you provide for the retention label names and configurations you choose. See the following page and downloads that you can use to help train your users: [End User Training for Retention Labels](https://microsoft.github.io/ComplianceCxE/enduser/retention/).
