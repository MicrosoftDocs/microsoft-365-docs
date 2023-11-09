---
title: Deploy your frontline operational hierarchy
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: arnavgupta
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up and deploy your frontline operational hierarchy to map your organization's structure of frontline teams and locations to a hierarchy in the Teams admin center.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 
---

# Deploy your frontline operational hierarchy

## Overview

> [!IMPORTANT]
> This feature will start rolling out for public preview in November 2023. If you would like to provide feedback and improve this feature while in preview, please fill out this form.

Setting up your frontline operational hierarchy enables you to map your organization’s structure of frontline teams and locations to a hierarchy in the Teams admin center. You can organize your organization’s teams by country, region, area, city, district, etc. Using a CSV file, you can connect each of your frontline teams/locations to parent teams to build this hierarchy.

Admins can also define metadata in the CSV file that ranges from department information to brand information metadata for each team/location. The operational hierarchy coupled with this metadata will enable numerous frontline apps and experiences in the future, like task publishing and additional frontline capabilities that are coming soon.

Start setting up your operational hierarchy today to get the full value of these upcoming features as they're released.

> [!IMPORTANT]
> If your organization already set up and uploaded a hierarchy through PowerShell to support task publishing, you should continue to [use PowerShell to make updates to your hierarchy for task publishing](/microsoftteams/set-up-your-team-hierarchy). Soon, you'll be able to define, manage, and update your hierarchy for task publishing in the Teams admin center, along with PowerShell. Currently, using the Teams admin center isn't supported yet.

## Terminology

It's important to understand the following terms as you navigate hierarchies. Teams are referred to as **nodes**.

- **Root nodes** are the top-most nodes in the hierarchy. Root nodes can be your organization’s headquarters.
- **Parent nodes** and **child nodes** are terms that represent a relationship between two connected nodes. In the example, the Boston store is a child node of Northeast zone.
- A node with no children is called a **leaf node**. They are at the bottom of a hierarchy.

## Example hierarchy

:::image type="content" source="media/frontline-operational-hierarchy-example.png" alt-text="Example of a frontline operational hierarchy":::

## Set up your operational hierarchy

1. In the left navigation of the [Teams admin center](https://admin.teams.microsoft.com/), choose **Teams** > **Manage frontline teams**.
1. Go to the **Operational hierarchy** tab.
1. Choose **Get started**. In the **Operational hierarchy** pane,
1. If you haven't already created a hierarchy CSV, select **Download the CSV template** to start creating your hierarchy CSV.

## Create your hierarchy

### Add required columns

### Add attribute columns

## Manage your operational hierarchy

## Troubleshoot errors

## Delete your hierarchy


## Related articles