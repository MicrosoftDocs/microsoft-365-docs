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
ROBOTS: NOINDEX, NOFOLLOW 
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
> If your organization already set up and uploaded a hierarchy through PowerShell to support task publishing, you should continue to [use PowerShell to make updates to your hierarchy for task publishing](/microsoftteams/set-up-your-team-hierarchy). Using the Teams admin center isn't supported yet. Soon, you'll be able to define, manage, and update your hierarchy for task publishing in the Teams admin center, along with PowerShell.

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
1. Choose **Get started**. In **Operational hierarchy** pane, you can upload your hierarchy or download a template to create one.
1. If you haven't already created a hierarchy CSV file, select **Download the CSV template** to start creating it.

## Create your operational hierarchy

The schema that defines your hierarchy is based on a CSV file. The file must be in UTF-8 format. Each row in the CSV file corresponds to one node within the hierarchy of teams. Each row contains information that names the node within the hierarchy, links it to a team, and includes attributes that can be used to filter teams in apps that support it.

### Add required columns

The CSV file must contain the following three columns, in the following order, starting at the first column.

> [!IMPORTANT]
> If you created your frontline teams through the [deploy frontline dynamic teams at scale](deploy-dynamic-teams-at-scale.md) experience, the DisplayName and TeamId values of your frontline teams are pre-populated in the CSV template. Otherwise, you'll need to manually add your team names and team IDs to these columns in the template.

| Column name   | Required | Description   |
----------------|----------|---------------|
| DisplayName    | Yes      | This field is the name of the node. The name can be up to 100 characters long and contain only the characters A-Z, a-z, and 0-9. Node names must be unique.|
| ParentName    | Yes       | This field is the name of the parent node. The value you specify here must match the value in the **DisplayName** field of the parent node exactly. If you want to add more than one parent node, separate each parent node name with a semicolon (;). You can add up to 25 parent nodes, and each parent node name can be up to 2500 characters long. A node can have multiple parent nodes only if the parent nodes are root nodes. <br><br>**IMPORTANT** Be careful not to create a loop where a parent higher up in the hierarchy references a child node lower in the hierarchy. This structure isn't supported. |
| TeamId        | Yes, if the team is a leaf node.| This field contains the ID of the team you want to link a node to. Each node must refer to a unique team, so each TeamId value can appear only one time in the hierarchy file. <br><br>To get the ID of a team you want to link a node to, run the following PowerShell command: `Get-Team | Export-Csv TeamList.csv`. This command lists the teams in your organization and includes the name and ID of each team. Find the name of the team you want to link to, and then copy the ID to this field.|

### Add attribute columns

After you add the three required columns, you can add optional attribute columns, which represent metadata for each of your store locations. These attributes can be used to filter teams that will enable experiences like targeted communications, task publishing, and others in the future.

There are two ways to define your attributes, depending on whether values for that attribute are mutually exclusive.

|Ways to add attributes|Description |Example  |
|---|---------|---------|
|If the values for an attribute are mutually exclusive, the column name you specify becomes the name of the attribute.|Each row can contain one value for that attribute, and each attribute column can have up to 50 unique values. Each value can be up to 100 characters long.|You want users to be able to filter stores by layout. The values for this attribute are mutually exclusive because a store can have only one layout. To add an attribute to filter stores by layout, add a column named Store layout. In this example, values for the Store layout attribute are Compact, Standard, and Large.
|If you need to indicate multiple values for an attribute and the values aren't mutually exclusive, use the **AttributeName:UniqueValue** format for the column names.<br><br>**IMPORTANT** Make sure you use the English-only colon (:) as unicode isn't supported as an attribute column delimiter.|The text string before the colon (:) becomes the name of the attribute. All columns that contain the same text string before the colons (:) are grouped together into a section in the filtering menu. Each of the strings after the colon become the values for that section.<br><br>Each row can have a value of 0 (zero) or 1 for that attribute. A value of 0 means that the attribute doesn't apply to the node and a value of 1 means that the attribute applies to that node.|You want users to be able to filter stores by department. A store can have multiple departments and so the values for this attribute aren't mutually exclusive.<br><br>In this example, we add Departments:Clothing, Departments:Electronics, Departments:Foods, Departments:Home and Garden, Departments:Sporting goods as attribute columns. Departments becomes the attribute name and users can filter by the Clothing, Electronics, Foods, Home and Garden, and Sporting goods departments.|

When you add an attribute column, keep the following things in mind:

- The column name you specify or the column name that you specify before the colon (:) becomes the name of the attribute. This value will be displayed in the Teams apps that use the hierarchy.
- You can have up to 100 attribute columns in your hierarchy.
- The column name can be up to 100 characters long and contain only the characters A-Z, a-z, and 0-9, and spaces. Column names must be unique.

## Upload your operational hierarchy

1. In the **Operational hierarchy** pane, choose **Select a file**, select your hierarchy CSV file, and then choose **Upload**. The maximum file size is 1 MB.

    Depending on the size of your file, setup might take a few minutes.
2. Refresh the Manage frontline apps page to check the latest status of your hierarchy setup. Make sure you’re on the **Operational hierarchy** tab after you refresh the page.

    When setup is completed, **Status** in the table changes to **Success**.

## Manage your operational hierarchy

## Troubleshoot errors

## Delete your hierarchy


## Related articles