---
title: "Create retention labels for exceptions to your retention policies"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority : high
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MOE150
- MET150
description: Instructions to create retention labels for exceptions to retention policies for information governance so you can retain what you need and delete what you don't.
---

# Create retention labels for exceptions to your retention policies

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

As part of your governance information strategy to retain what you need and delete what you don't, you might need to create a few retention labels for items that need exceptions to your retention policies. 

Whereas retention policies automatically apply to all items at the container level (such as SharePoint sites, user mailboxes, and so on), retention labels apply to individual items, such as a SharePoint document or an email message.

Because of the [principles of retention](retention.md#the-principles-of-retention-or-what-takes-precedence), you can use retention labels to supplement a retention policy for specific SharePoint, OneDrive, or Exchange items that need to be retained longer, or deleted sooner than the specified settings in the retention policy.

For more information about the differences between retention policies and retention labels, see [Compare capabilities for retention policies and retention labels](retention.md#compare-capabilities-for-retention-policies-and-retention-label).

Use the following information to help you create retention labels to supplement retention policies as part of your information governance strategy.

> [!NOTE]
> Create retention labels from the **Records management** solution rather than **Information governance** if you need to use retention labels for the lifecycle management of high-value items for business, legal, or regulatory record-keeping requirements. For more information, see [Use file plan to create and manage retention labels](file-plan-manager.md).

## Before you begin

The global admin for your organization has full permissions to create and edit retention labels and their policies. If you aren't signing in as a global admin, see [Permissions required to create and manage retention policies and retention labels](get-started-with-retention.md#permissions-required-to-create-and-manage-retention-policies-and-retention-labels).

## How to create retention labels for information governance

1. In the [Microsoft 365 compliance center](https://compliance.microsoft.com/), navigate to: **Solutions** > **Information governance** > **Labels** tab > + **Create a label**
    
    Don't immediately see the Information governance solution? First select **Show all**. 

2. Follow the prompts to create the retention label. Be careful what name you choose for the policy, because this can't be changed after the policy is saved.
    
    For more information about the retention settings, see [Settings for retaining and deleting content](retention-settings.md#settings-for-retaining-and-deleting-content).

3. After you have created the label and you see the options to publish the label, auto-apply the label, or just save the label: Select **Just save the label for now**, and then select **Done**.

4. Repeat these steps to create more labels.

To edit an existing label, select it, and then select the **Edit label** option to start the Edit retention wizard that lets you change the label descriptions and any eligible settings.

Some settings can't be changed after the label is created and saved, which include:
- The retention label name and the retention settings except the retention period. However, you can't change the retention period when the retention period is based on when items were labeled.

## Next steps

Now you've created retention labels, they are ready to be added to items by publishing the labels, or automatically applying them:
- [Publish retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)