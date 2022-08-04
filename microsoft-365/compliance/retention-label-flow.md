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

Them, create a new retention label with the following configuration:
- Retain the item for a specified period of time
- At the end of the retention period, trigger the flow that you just created

Apply the label using either of the following methods, and the flow is triggered at the end of the retention period:
- [Publish retention labels and apply them in apps](create-apply-retention-labels.md)
- [Apply a retention label to content automatically](apply-retention-labels-automatically.md)


## Limitations

## Prerequisites


## How to configure a retention label to trigger a Power Automate flow

## When the flow is triggered

## Next steps

To help you track the labels applied from your published retention labeling policies:

- [Monitoring retention labels](retention.md#monitoring-retention-labels)
- [Using Content Search to find all content with a specific retention label](retention.md#using-content-search-to-find-all-content-with-a-specific-retention-label)
- [Auditing retention actions](retention.md#auditing-retention-actions)

Event-based retention is another supported scenario for retention labels. For more information, see [Start retention when an event occurs](event-driven-retention.md).
