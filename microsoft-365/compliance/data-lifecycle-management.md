---
title: "Learn about Microsoft Purview Data Lifecycle Management"
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
- tier1
- highpri
- SPO_Content
description: Learn how Microsoft Purview Data Lifecycle Management helps you keep what you need and delete what you don't.
---

# Learn about data lifecycle management

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Microsoft Purview Data Lifecycle Management (formerly Microsoft Information Governance) provides you with tools and capabilities to retain the content that you need to keep, and delete the content that you don't. 

Retaining and deleting content is often needed for compliance and regulatory requirement, but deleting content that no longer has business value also helps you manage risk and liability. For example, it reduces your attack surface.

## Microsoft 365 features

**Retention policies** are the cornerstone for data lifecycle management. Use these policies for Microsoft 365 workloads that include Exchange, SharePoint, OneDrive, Teams, and Yammer. Configure whether content for these services needs to be retained indefinitely, or for a specific period if users edit or delete it. Or you can configure the policy to automatically permanently delete the content after a specified period if it's not already deleted. You can also combine these two actions for retain and then delete, which is a very typical configuration. For example, retain email for three years and then delete it.

When you configure a retention policy, you can target all instances in your organization (such as all mailboxes and all SharePoint sites), or individual instances (such as only the mailboxes for specific departments or regions, or just selected SharePoint sites).

If you need exceptions for individual emails or documents, such as a longer retention period for legal documents, you do this with **retention labels** that you publish to apps so that users can apply them, or automatically apply them by inspecting the content.

For more information about retention policies and retention labels, and how retention works in Microsoft 365, see [Learn about retention policies and retention labels](retention.md). 

> [!NOTE]
> If you need to manage high-value items for business, legal, or regulatory record-keeping requirements, use retention labels with [records management](records-management.md) rather than retention labels with data lifecycle management.

Other data lifecycle management capabilities to help you keep what you need and delete what you don't:

- **Mailbox archiving** to provide users with additional mailbox storage space, and auto-expanding archiving for mailboxes that need more than 100 GB storage. A default archiving policy automatically moves email to the archive mailbox, and if required, you can customize this policy. For more information about mailbox archiving, see [Learn about archive mailboxes](archive-mailboxes.md).
    
- **Inactive mailboxes** that retain mailbox content after employees leave the organization. For more information about inactive mailboxes, see [Learn about inactive mailboxes](inactive-mailboxes-in-office-365.md).

- **Import service for PST files** by using network upload or drive shipping. For more information, see [Learn about importing your organization's PST files](importing-pst-files-to-office-365.md).

## Exchange (legacy) features

**Retention policies and retention tags** from messaging records management (MRM), and **journaling rules** are older compliance features from Exchange that were originally configurable from the Classic Exchange admin center. They haven't been brought forward to the [new Exchange admin center](/exchange/features-in-new-eac).

If you're not already using these features, or have a specific business requirement to use them instead of the Microsoft 365 features for data lifecycle management, we don't recommend you use these older compliance features. Instead, use the newer Microsoft 365 features that retain data in place and support policies across other Microsoft 365 services.

For more information, see [Use retention policies and retention labels instead of older features](retention.md#use-retention-policies-and-retention-labels-instead-of-older-features).


## Deployment guidance

For deployment guidance for data lifecycle management that includes a recommended deployment roadmap, licensing information, permissions, a list of supported scenarios, and end-user documentation, see [Get started with data lifecycle management](get-started-with-information-governance.md).

Looking for deployment guidance to protect your data? See [Deploy an information protection solution with Microsoft Purview](information-protection-solution.md).

