---
title: "Get started with data lifecycle management"
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
description: Prescriptive steps for admins, licensing requirements, and common scenarios that manage the lifecycle of your organization's data.
---

# Get started with data lifecycle management

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Ready to start managing the lifecycle of your organization's data by retaining the content that you need to keep, and deleting the content that you don't? To get started, use the following guidance for Microsoft Purview Data Lifecycle Management (formerly Microsoft Information Governance):

1. **Understand how retention and deletion works** in Microsoft 365, and then identify the workloads that need a retention policy and whether you need to create retention labels for exceptions: [Learn about retention](retention.md)
    
    > [!NOTE]
    > If you need to manage high-value items for business, legal, or regulatory record-keeping requirements: Use retention labels with [records management](records-management.md) rather than data lifecycle management.

2. **Create retention policies** for the workloads you identified, specifying retention settings and actions that are required by your organization policies or industry regulations: [Create retention policies](create-retention-policies.md)
    
    If needed, [create and apply retention labels for your exceptions](create-retention-labels-information-governance.md).

3. **Enable mailbox archiving** to provide users with additional mailbox storage space: [Enable archive mailboxes in Microsoft 365](enable-archive-mailboxes.md)
    
    If required to support archive mailboxes:
    
    - [Enable auto-expanding archiving](enable-autoexpanding-archiving.md) for mailboxes that need more than 100 GB storage.
    
    - Use [retention tags with a retention policy from messaging records management (MRM)](set-up-an-archive-and-deletion-policy-for-mailboxes.md) if you need to customize how emails are automatically moved from a user's primary mailbox to their archive mailbox, or if you need to specify retention and deletion settings for specific folders rather than the whole mailbox.

4. **Understand and manage inactive mailboxes** that retain mailbox content after employees leave the organization: [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md)

5. If you have PST files that contain data you want to govern: **Import PST files to online mailboxes** by using network upload or drive shipping: [Learn about importing your organization's PST files](importing-pst-files-to-office-365.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Subscription and licensing requirements

A number of different subscriptions support data lifecycle management capabilities.

To see the options for licensing your users to benefit from Microsoft Purview features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For the features listed on this page, see the [Microsoft Purview Data Lifecycle Management & Microsoft Purview Records Management](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-data-lifecycle-management--microsoft-purview-records-management) section for feature-level licensing requirements.

## Permissions

See the following section for information about roles and role groups to manage Microsoft 365 retention.

For permissions to manage mailboxes for archiving, inactive mailboxes, and import, these typically require Exchange permissions, such as the Mail Recipients role. By default, this role is assigned to the Recipient Management and Organization Management role groups. For the exact permissions requirement for each management task, see the documentation that accompanies the admin instructions.

### Permissions for retention policies and retention labels

Members of your compliance team who will create and manage retention policies and retention labels need permissions to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>. By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Compliance Administrator** admin role group.

Alternatively to using this default role, you can create a new role group and add the **Retention Management** role to this group. For a read-only role, use **View-Only Retention Management**. 

For instructions to add users to the default roles or create your own role groups, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

These permissions are required only to create, configure, and apply retention policies and retention labels. The person configuring these policies and labels doesn't require access to the content.

## Common scenarios

Use the following table to help you map your business requirements to the most common scenarios for data lifecycle management.

|I want to ...|Documentation|
|----------------|---------------|
|Efficiently retain or delete data for Microsoft 365 services: <br />-  Exchange  <br />- SharePoint  <br />- OneDrive  <br />- Microsoft 365 Groups <br />- Teams <br />- Yammer <br />- Skype for Business |[Create and configure retention policies](create-retention-policies.md)|
|Provide users with additional mailbox storage |[Enable archive mailboxes in Microsoft 365](enable-archive-mailboxes.md)|
|Retain mailbox data after employees leave the organization |[Create and manage inactive mailboxes](create-and-manage-inactive-mailboxes.md)|
|Upload mailbox data from PST files |[Use network upload to import PST files](use-network-upload-to-import-pst-files.md)|


If you have a scenario that requires data management of individual items, see the [common scenarios for records management](get-started-with-records-management.md#common-scenarios). 

## End-user documentation

See the following section for information about end-user documentation to support Microsoft 365 retention.

The data lifecycle management capabilities for inactive mailboxes and import of PST files don't require end-user documentation because these are admin operations only. To help users understand and interact with their archive mailboxes in Outlook after you've enabled this capability, see [Manage email storage with online archive mailboxes](https://support.microsoft.com/office/manage-email-storage-with-online-archive-mailboxes-1cae7d17-7813-4fe8-8ca2-9a5494e9a721).

### End-user documentation for retention and deletion

Most retention policies work unobtrusively in the background without user interaction, and so need little documentation for users. Retention policies for Teams inform users when their messages have been deleted with a link to [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

However, if you supplement retention policies with retention labels, these labels do have a UI presence in Microsoft 365 apps. Before you deploy these labels to your production network, make sure you provide information and instructions for end users and your help desk. To help users apply retention labels in SharePoint and OneDrive, see [Apply retention labels to files in SharePoint or OneDrive](https://support.microsoft.com/office/apply-retention-labels-to-files-in-sharepoint-or-onedrive-11a6835b-ec9f-40db-8aca-6f5ef18132df).

The most effective end-user documentation will always be customized guidance and instructions you provide for the retention label names and configurations you choose. See the following page and downloads that you can use to help train your users: [End User Training for Retention Labels](https://microsoft.github.io/ComplianceCxE/enduser/retention/).

