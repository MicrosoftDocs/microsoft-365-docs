---
title: "Step 7. Implement data loss prevention (DLP) with information protection capabilities"
ms.author: bcarter
author: brendacarter
f1.keywords:
- Endpoint dlp
- data loss prevention
- dlp policies
manager: dougeby
ms.date: 10/20/2021
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- endpoint dlp
- data loss prevention
- dlp policies 
- M365-security-compliance
- m365solution-managedevices
- m365solution-scenario
- zerotrust-solution
ms.custom: 
keywords: 
description: Implement Endpoint DLP by working with your information protection and governance team to create DLP policies for your organization.    
---

# Step 7. Implement data loss prevention (DLP) with information protection capabilities


If your organization has already put the time into understanding your data, developing a data sensitivity schema, and applying the schema, you might be ready to extend elements of this schema to endpoints by using Microsoft Purview Data Loss Prevention (DLP) policies. 

Endpoint data loss prevention (Endpoint DLP) currently applies to:
- Windows 10, Windows 11
- macOS

DLP policies are created by your information protection and governance team. Each DLP policy defines what elements within a data set to look for, like sensitive information types or labels, and how to protect this data. 

For example, a DLP policy can look for personal data like a passport number. The DLP policy includes a condition that triggers the policy to take action, such as when a passport number is shared with people outside your organization. The action the policy takes can be configured as well. Options range from simply reporting the action to admins, warning users, or even preventing the data from being shared.

The DLP policy also specifies the location to apply the policy to, such as Exchange email and SharePoint sites. One of the locations available to admins is devices. If devices are selected, you can specify which users and user groups to apply the policy to. You can also specify users and user groups to exclude from the policy.

If your information protection and governance team is ready to extend DLP policies to endpoints, you need to coordinate with them to enable devices for Endpoint DLP, test and tune DLP policies, train users, and monitor the results. 

![Endpoint DLP steps for the device admin](../media/devices/endpoint-dlp-steps.png#lightbox)


Use the following steps to work with your information protection team.


|Step  |Description  |
|---------|---------|
|1     |  [Learn about Endpoint data loss prevention](../compliance/endpoint-dlp-learn-about.md).        |
|2     | Enable devices for Endpoint DLP. If you onboarded devices to Microsoft Defender for Endpoint, your devices are already enabled for Endpoint DLP. If your devices aren't onboarded to Defender for Endpoint, see [Get started with Endpoint data loss prevention](../compliance/endpoint-dlp-getting-started.md) for instructions.|
|3     |   Work with your information protection and governance team to define, test, and tune policies. This includes monitoring the results. See these resources:<br>- [Using Endpoint data loss prevention](../compliance/endpoint-dlp-using.md)<br>- [Get started with Activity Explorer](../compliance/data-classification-activity-explorer.md)    |
