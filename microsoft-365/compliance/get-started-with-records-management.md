---
title: "Get started with records management"
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
description: Ready to manage high-value content for legal, business, or regulatory obligations by using a records management solution, but not sure where to start? Read some practical guidance to get started.
---

# Get started with records management

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Ready to start managing your organization's high-value content for legal, business, or regulatory obligations by using a records management solution? Use the following high-level guidance to get started:

1. **Understand the records management solution** and its set of capabilities: [Records management](records-management.md). 

2. **Understand how retention and retention labels work** because retention labels are used to declare records: [Learn about retention](retention.md)

3. **Create your file plan for retention settings and actions** by [importing an existing plan](file-plan-manager.md#import-retention-labels-into-your-file-plan ) if you have one, or create [new retention labels that  declare records](declare-records.md).

4. **Publish and apply your retention labels**. Retention labels are reusable building blocks that can be used in multiple policies and can be incorporated into user workflows. See the list of [common scenarios](#common-scenarios-for-records-management) to help you identify how retention labels can be used for records management. 

## Subscription and licensing requirements for retention policies and retention labels

A number of different subscriptions support retention policies and retention labels and the licensing requirements for users depend on the features you use.

To see the options for licensing your users to benefit from Microsoft 365 compliance features, see the [Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD). For records management, see the [Records Management](https://docs.microsoft.com/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#records-management) section and related PDF or Excel download for feature-level licensing requirements.

## Permissions required to manage records

Members of your compliance team who will create and manage records need permissions to the [Microsoft 365 compliance center](https://compliance.microsoft.com/). By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Records Management** admin role group. For instructions, see [Give users access to the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/grant-access-to-the-security-and-compliance-center).

These permissions are required only to create, configure, and apply retention labels that declare records. The person configuring these labels doesn't require access to the content.

## Common scenarios for records management

Because records management uses retention labels, see the [common scenarios for retention](get-started-with-retention.md#common-scenarios-for-retention-policies-and-retention-labels) that include retention labels. The following scenarios in the next table are specific to records management.

|I want to ...|Documentation|
|----------------|---------------|
|Declare a record |[Declare records by using retention labels](declare-records.md)|
|Update a record |[Use record versioning to update records stored in SharePoint or OneDrive](record-versioning.md)|
|Have proof of disposition for content that is deleted at the end of its retention period|[Disposition of records](disposition.md#disposition-of-records) |

## End-user documentation for records

Retention labels that are used for records management have a UI presence in Microsoft 365 apps. Make sure you provide guidance for end users and your help desk before you deploy retention labels to your production network.

The most effective end-user documentation will be customized guidance and instructions you provide for the retention label names and configurations you choose. However, you can use the following information for basic instructions:

- [Manually apply retention labels](create-apply-retention-labels.md#manually-apply-retention-labels)
