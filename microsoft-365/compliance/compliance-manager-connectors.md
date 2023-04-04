---
title: "Data connectors for Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 04/28/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid:
- MOE150
- MET150
description: "Set up data connectors to build assessments for non-Microsoft services in Microsoft Purview Compliance Manager."
---

# Working with data connectors in Compliance Manager

**In this article:** Learn how to...

Compliance Manager has an integrated set of third-party data connectors so that you can build assessments that cover services other than Microsoft. You can select the connectors you need within Compliance Manager. Then when you build your assessment, you'll select from among the connectors you've already set up.

## Available connectors
The connectors available for Compliance Manager are:

- Salesforce
- Zoom

Additional connectors will be available in coming months.

## How connectors work

Get into elliot's service instance and programmatic mapping docs - define service instance. Actually, not sure that we need to go into depth here based on his .....

## Set up data connectors

Before creating an assessment, you'll need to set up a connector for the service you're assessing. Follow the steps below to set up Compliance Manager connectors.

> [!IMPORTANT]
> Compliance Manager connectors are unique to the Comliance Manager solution and are set up within Compliance Manager. The data connectors located on the left nav of the Microsoft Purview compliance portal are not the connnectors to use for Compliance Manager assessments.

1. In Compliance Manager, select **Data connectors** in the upper right of your screen. The **Data connectors** page in Compliance Manager opens, displaying a list of available connectors.
1. Select the checkbox next to the name of the connector you want to add. Only one connector can be added at a time. After making your selection, select **Activate connector**.
1. On the connector's details page, you can review details and requirements. Select **Add connector**, which takes you to the connector setup wizard.
1. Review the Microsoft Terms of Service, then select **Accept**.
1. Slide 12....

? - I"m seeing the phrase "activate connector" and also seeing a command (button with a plus sign) to do this. What does it mean to "activate" a connector? Does this mean just adding the connector to your CM so that you see it in your list when yo ugo to choose from them in 

? - each connector will have its own separate setup page, like current connectors do?

## Add connectors to assessments

...Get into elliot's service instance doc - define service instance....

To build an assessment for a non-Microsoft service, you'll choose the applicable connector during the assessment creation process.

When you get to the "Select servies" page in the assessment creation wizard, choose **Select services**....

? for Nisha - When you select **Add new service**, what happens? Is this something you can add directly here, or does it take you into "data connectors" in CM?

## Scoring

How to interpret assessment and improvement action scores with connectors.

## Resources
Get general information about [third-party data connectors](archiving-third-party-data.md) (remember that Compliance Manager connectors are unique to Compliance Manager).
