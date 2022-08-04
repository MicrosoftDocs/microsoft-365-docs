---
title: "Customize what happens at the end of the retention period"
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
ms.custom: admindeeplinkCOMPLIANCE
search.appverid: 
- MOE150
- MET150
description: Instructions how to configure a retention label with custom actions and logic when the retention period has expired by using Power Automate flows.
---

# Customize what happens at the end of the retention period

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

> [!NOTE]
> This scenario is rolling out in preview and subject to change.

By default, the actions that are supported for a [retention label](retention.md) when it reaches the end of the retention period are:
- Automatically delete the item
- Relabel the item
- Deactivate the label (do nothing)
- Start a disposition review

However, if you choose the option to trigger a Power Automate flow, currently rolling out in preview, this label configuration supports custom actions such as:

- Send an email notification to a records manager, or to the person who created or last modified a document
- Move the item to another location where you centrally store records

In addition to the default actions that you can select for a flow, you can also select actions to delete the item and relabel the item. For example, move the item and send an email notification.

These actions also allow integration with other apps and services. For example, you have another solution that starts your own customized disposition review process upon receipt of that email notification, or your flow updated a table that then automatically starts an existing records management procedure.

It's outside the scope of this article to document all the ways in which you can configure a flow and integrate with other solutions. To learn more about Power Automate, see [Get started with Power Automate](/power-automate/getting-started) and [Overview of cloud flows](/power-automate/overview-cloud). In this article we'll cover:

- Overview of how retention labels work with a Power Automate flow
- Limitations
- Prerequisites
- How to configure a retention label to trigger a Power Automate flow
- When the flow is triggered
 

## Overview of how retention labels work with a Power Automate flow

The following processes show the high-level overview of how retention labels work with a Power Automate flow:

![Process overview of how retention labels work with a Power Automate flow.](../media/retention-label-flow-overview.png)

In Power Automate, you create an automated cloud flow that uses the trigger **When the retention period expires**. Then, configure the flow with your required actions.

Next, create a new retention label with the following configuration:
- Retain the item for a specified period of time
- At the end of the retention period, trigger the flow that you just created

Apply the label using either of the following methods:
- [Publish retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)

When the retention period expires, the flow is triggered.

## Limitations

You must create a new retention label to trigger a flow at the end of the retention period. You can edit an existing retention label for this configuration.

The account that creates the Power Automate flow must be the same account that creates the retention label.

If you select the relabel action in the flow, the retention label that you select as the replacement can't be [configured to mark the item as a regulatory record](declare-records.md#configuring-retention-labels-to-declare-records). It can be configured to mark the item as a record, or not mark the item as a record.

## Prerequisites

To create the Power Automate flow, you must have a license that's separate from licenses to apply retention labels. For more information, see the [Power Automate per user plan](https://admin.microsoft.com/AdminPortal/Home?ref=/catalog/offer-details/power-automate-per-user-plan/7CF37992-A897-4DB2-82C1-BDA8C1C3EB76) details in the Microsoft 365 admin center, where you can also start a free trial.


## Configuring a retention label to trigger a Power Automate flow

1. In the [Microsoft Purview compliance portal](https://go.microsoft.com/fwlink/p/?linkid=2077149), create a new retention label with your preferred name and settings. For more information:
    
    - Records management: [Use file plan to create and manage retention labels](file-plan-manager.md)
    - Data lifecycle management: [Create retention labels for exceptions to your retention policies](create-retention-labels-data-lifecycle-management)

2. Specific to this scenario:
    
    a. On the **Define label settings** page, select **Retain items indefinitely or for a specific period** and specify the retention period.
    b. On the **Choose what happens after the retention period **page, select **Run a Power Automate flow", and then "Select a flow". From the **Select a Power Automate flow **flyout pane, you'll see any automated cloud flows that you created and that have the **When the retention period expires** trigger.

A retention label can be configured for only one Power Automate flow, but the same flow can be used by more than one retention label.

## When the flow is triggered

Just as it can take up to 7 days to apply a retention label, so you should allow up to 7 days after the expiration period before the Power Automate flow is triggered. The initiation of the flow can then take a few hours.

Both the flow and the retention action of delete and relabel are queued so that if there are any network or service delays, they are automatically retried.

The [principles of retention](retention.md#the-principles-of-retention-or-what-takes-precedence) still apply to retention labels that are configured to trigger a flow at the end of the retention period, in that an item is always retained for the longest period if there is a conflict with one or more retention policies. However, the flow is always triggered at the end of the label's retention period.


## Next steps

To help you track the retention labels that you apply:

- [Monitoring retention labels](retention.md#monitoring-retention-labels)
- [Using Content Search to find all content with a specific retention label](retention.md#using-content-search-to-find-all-content-with-a-specific-retention-label)
- [Auditing retention actions](retention.md#auditing-retention-actions)

