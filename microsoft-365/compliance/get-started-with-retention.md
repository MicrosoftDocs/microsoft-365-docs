---
title: "Get started with informance governance in Microsoft 365"
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
description: Ready to start governing your organization's data, but not sure where to start? Read some prescriptive guidance to get started.
---

# Get started with information governance

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Ready to start governing your organization's data by retaining the content that you need to keep, and deleting the content that you don't? Use the following guidance to get started:

1. **Understand how retention and deletion works** in Microsoft 365, and then identify the workloads that need a retention policy and whether you need to create retention labels for exceptions: [Learn about retention](retention.md)
    
    > [!NOTE]
    > If you need lifecycle management of high-value items for business, legal, or regulatory record-keeping requirements: Use retention labels with [records management](records-management.md) rather than data governmance.

2. **Create retention policies** for the workloads you identified, specifying retention settings and actions that are required by your organization policies or industry regulations: [Create retention policies](create-retention-policies.md)
    
    If needed, [create and apply retention labels for your exceptions](create-retention-labels-information-governance).

3. **Enable mailbox archiving** to provide users with additional mailbox storage space: [Enable archive mailboxes in the compliance center](enable-archive-mailboxes.md)
    
    If required to support archive mailboxes:
    
    - [Enable auto-expanding archiving](enable-autoexpanding-archiving.md) for mailboxes that need more than 100 GB storage.
    
    - Use [retention tags with a retention policy from messaging records management (MRM)](set-up-an-archive-and-deletion-policy-for-mailboxes.md) if you need to automatically move emails from a user's primary mailbox to their archive mailbox, or if you need to specify retention and deletion settings for specific folders rather than the whole mailbox.

4. **Understand and manage inactive mailboxes** that retain mailbox content after employees leave the organization: [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md)

5. If you have PST files that contain data you want to govern: **Import PST files to online mailboxes** by using network upload or drive shipping: [Overview of importing your organization's PST files](importing-pst-files-to-office-365.md)

Independently from these steps, **Use connectors to archive third-party-data** that includes data from social media platforms, instant messaging platforms, and document collaboration platforms. When this data is imported to online mailboxes, it supports not just data governance from Microsoft 365 Compliance, but also other compliance solutions such as communication compliance, insider risk management, and eDiscovery. For more information, see [Archive third-party data in Microsoft 365](archiving-third-party-data.md). 

## Subscription and licensing requirements for information governance

A number of different subscriptions support retention policies, retention labels, mailbox archiving, inactive mailboxes, and the data connectors.

To see the options for licensing your users to benefit from Microsoft 365 compliance features, see the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance). For the features listed on this page, see the [Information Governance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-governance) section and related PDF download for feature-level licensing requirements.

## Permissions required to create and manage retention policies and retention labels

Members of your compliance team who will create and manage retention policies and retention labels need permissions to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft 365 compliance center</a>. By default, the tenant admin (global administrator) has access to this location and can give compliance officers and other people access without giving them all the permissions of a tenant admin. To grant permissions for this limited administration, we recommend that you add users to the **Compliance Administrator** admin role group.

Alternatively to using this default role, you can create a new role group and add the **Retention Management** role to this group. For a read-only role, use **View-Only Retention Management**. 

For instructions to add users to the default roles or create your own role groups, see [Permissions in the Microsoft 365 compliance center](microsoft-365-compliance-center-permissions.md).

These permissions are required only to create, configure, and apply retention policies and retention labels. The person configuring these policies and labels doesn't require access to the content.

## Common scenarios for information governance

Use the following table to help you map your business requirements to information governance scenarios.

|I want to ...|Documentation|
|----------------|---------------|
|Efficiently set retain and delete actions by Microsoft 365 service: <br />-  Exchange  <br />- SharePoint  <br />- OneDrive  <br />- Microsoft 365 Groups <br />- Skype for Business  <br />- Microsoft Teams <br />- Yammer network |[Create and configure retention policies](create-retention-policies.md)|




## End-user documentation for retention

Most retention policies work unobtrusively in the background without user interaction, and so need little documentation for users. Retention policies for Teams inform users when their messages have been deleted with a link to [Teams messages about retention policies](https://support.microsoft.com/office/teams-messages-about-retention-policies-c151fa2f-1558-4cf9-8e51-854e925b483b).

Because retention labels have a UI presence in Microsoft 365 apps, make sure you provide guidance for end users and your help desk before you deploy these labels to your production network. To help users apply retention labels in SharePoint and OneDrive, see [Apply retention labels to files in SharePoint or OneDrive](https://support.microsoft.com/office/apply-retention-labels-to-files-in-sharepoint-or-onedrive-11a6835b-ec9f-40db-8aca-6f5ef18132df).

However, the most effective end-user documentation will be customized guidance and instructions you provide for the retention label names and configurations you choose. See the following page and downloads that you can use to help train your users: [End User Training for Retention Labels](https://microsoft.github.io/ComplianceCxE/enduser/retention/).