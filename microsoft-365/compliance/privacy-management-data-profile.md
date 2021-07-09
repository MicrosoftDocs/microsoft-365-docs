---
title: "Find and visualize personal data in Microsoft privacy management (preview)"
f1.keywords:
- CSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- M365-privacy-management
search.appverid: 
- MOE150
- MET150
description: "Learn about the overview and data profile in privacy management and how to gain insights into the personal data in your organization's Microsoft 365 environment."
---

# Find and visualize personal data in privacy management (preview)

In this article: learn about the features of the **overview** and **data profile** pages and how they can give insights into your data.

## Purpose of the overview and data profile

Privacy management automates discovery of personal data assets within Microsoft 365 and provides dashboards that provide visibility into your organization’s personal data. These dashboards provide key insights and highlight where the data resides within Exchange, SharePoint, OneDrive, and Teams. Your privacy administrators can act upon these insights to strengthen your organization’s approach to privacy.

### Overview page

The Overview page serves as an overall dashboard for the privacy management solution, surfacing dynamic insights about your organization’s ecosystem of personal data. Privacy administrators can monitor data trends and activities, identify and investigate potential risks on personal data, and springboard into key activities such as policy management or subject rights request actions. For more on the overview page, see [Explore the overview page](#explore-the-overview-page).

### Data profile page

The data profile page in privacy management provides a snapshot view of the personal data your organization stores in Microsoft 365. This helps you visualize where personal data lives, what types are the most prevalent in your organization, and how many different types exist across your Microsoft 365 services. You will also be able to explore personal data from this location. To learn more, see Explore the data profile page.

## Explore the overview page

The overview page consists of three main sections. Tiles at the top of the page provide essential recent statistics about your data. The key insights section provides investigative opportunities into trends and areas of key interest. For further perspective on your data environment, consult the trendline graphs. To learn more about these areas, consult the sections below.

### Top tiles

#### Policy matches over past 7 days

When policies are set within privacy management, your data will be evaluated for certain conditions that might present privacy risks. Policy matches indicate data discoveries that may need further review or remediation. This card shows the count of any policy matches that have occurred within the last 7 days. Matches will be surfaced here whether policies are on or are running in testing mode, so that you can see the results of all your active policies. Clicking this tile will take you to a filtered view of the Policies page of privacy management, showing the policies that have had a match occur within the past 7 days.

#### Items with personal data

To see the privacy management solution’s automated discovery capabilities at work, review the Items with personal data tile. This will display how many new items containing personal data have been discovered in your organization’s Microsoft 365 environment over the last 7 days. Clicking this tile will load a view of the newest 100 items discovered.

#### Subject rights requests

The top tiles of the overview page include two tiles related to subject rights requests. The first shows the count of requests created over the last 7 days. The second tile tallies up requests that are overdue and may need immediate attention. Clicking on these tiles will take users with the appropriate permissions to the subject rights request page of privacy management.

### Key insights

#### Content items with the most personal data

Content in your organization’s Microsoft 365 environment that contains a large amount of personal data may present a higher risk of exposure. You may wish to review these items to ensure they are covered by a privacy management policy. To help raise these items to your attention, the overview page provides a view into your content items that contain the most personal data. Here you can see the number of unique personal data types detected, how many unique content owners have been identified, and how many data subjects have been identified according to the data matching settings for subject rights requests.

Select View summary for a summary view of the items found. You can also choose to Explore these findings to preview individual files. Note that this view shows a maximum of 100 items. Users in the Privacy Management role group can select files to review details and determine relevance, and export the list in .csv format for reference.

#### Policies with the most matches in the last week

This insight showcases which policies have been matched the most frequently over the last 7 days, whether in “On” mode or “Testing.” This may illustrate both the performance of your policies and the effects of ongoing work as your privacy management users receive training and are empowered to resolve issues with content and refine their privacy behaviors.

Select View summary for a summary of the top 10 policies matched and the content owners of the associated content. You will also see how many user notifications were sent due to these policy matches and the number of user actions taken. Select Investigate to view the policies page in privacy management, filtered to show the policies from the summary view. This investigative view will show statistics for the full lifetime of the policy. Select it to see details such as when matched items were initially detected.

#### Users with the most policy matches in the last week

This insight also addresses matches from policies in either “Testing” or “On” mode. It allows you to view a summary of the users with the most policy matches over the last week and which policies they are matching. This includes totals of the unique content owners, notifications sent to these users, and how many actions were taken from those notifications. Selecting Investigate takes you to the policies page, filtered to show the policies from the summary view. In the investigative view you will not find user information, but you can select a policy to see policy details related to these matches.

#### Items with the most data subject content

This insight regards information from the data matching feature in subject rights requests, and surfaces items discovered within Microsoft 365 that contain the most data subjects within their content. To learn more about that setting, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

These items can help confirm your data matching configuration and help you mitigate privacy risks related to these items. Select View summary for a summary view. Select Explore for a detailed view of up to 100 of these items. Here you can preview these items and determine relevance, and export the list in .csv format.

### Trendline graphs

For dynamic visualizations of trends found in your organization’s data, consult the trendline graphs. These graphs can be filtered by characteristics relevant to the info provided, such as spans of time, data type, or the locations of data. Use the dropdowns provided to adjust your view. Hovering over lines in the graph will allow you to see stats related to that specific point in time.

Results related to policies will include data from policies in both “Testing” and “On” mode. If no policies of a particular type are active, the related graphs will show no results.

#### Active policy alerts

This area shows a snapshot of active alerts triggered by policy matches. Over time, this can help you more easily detect abnormalities, such as large spikes in volume. Select View alerts to navigate to the policies page within privacy management, where you can further investigate alerts and create issues for remediation.

#### Personal data found in organization

This graph shows trends in how much personal data has been discovered over time in your Microsoft 365 environment and where it is located. This will begin populating after privacy management has been running for sufficient time and after content with personal data has been found within SharePoint, OneDrive, Teams, and/or Exchange.

#### Data transfers detected in organization

This graph is related to data transfer policies. It provides a view of how data is moving within your organization, either between departments or between regions for multi-geo organizations.

#### Unused personal data

This graph is related to data minimization policies. It gives insights into how your organization is storing content containing personal data and how your policies may improve your handling of this data over time.

#### Overexposed personal data

This graph is related to data overexposure policies. It can help you identify sharing behaviors over time within your organization and locations where content with personal data may be overexposed, for example by being shared publicly, shared with an external user, or shared widely within your organization.

#### Subject rights requests by regulation

This view provides insights into what regulations most prevalently drive your subject rights requests over time. This graph’s legend shows various regulations. Hovering over the trend lines will show the totals of subject rights requests open for that regulation during the selected time.

#### Subject rights requests by status

This graph displays how your organization is doing with completing subject rights requests, broken out into requests that are either Active, Closed, or Overdue. This may help indicate where you could benefit from allocating additional resources to closing out your requests and meeting targets.

### Additional data views

#### Subject rights requests at a glance

This provides a high-level view of active subject rights requests, including the time remaining to complete requests by their defined deadlines. It summarizes how many total requests you have, how many are active, and how many are closed. Select View all requests to go to the subject rights request page, where you can view further details and work on the active requests to progress them to completion.

#### Subject rights requests by residency

This map view helps you visualize your volume of subject rights requests by the residency of the data subjects. Hovering over a bubble will identify the region and the total of subject rights requests opened on behalf of residents there.

## Explore the data profile page

### Personal data type instances detected in Microsoft 365

This card helps you visualize how much personal data exists in your Microsoft 365 environment and how that data is distributed across Exchange, OneDrive, SharePoint, and Teams.

The bar graph shows the approximate aggregate count of unique personal data type instances found within your content. Examples of data types may include things like credit card numbers and social security numbers. Therefore, a discovered file that contains three credit card numbers and one social security number would contain two unique personal data types and four instances. The lower person of this card shows the unique personal data types within each Microsoft 365 location. This provides a view into the diversity of personal data types detected in your organization’s content.

### Top personal data types across your organization

This card provides a snapshot of the top personal data types detected in your environment, along with information on how many items contain that personal data type and in what locations.

### Personal data by region

For multi-geo environments, this card regionally aggregates personal data type instances found within your content, based on the regions in which this content is hosted. For single-region organizations, this card will show one dot representing your Microsoft 365 service location. Hovering over dots on the map will show the approximate count of personal data type instances discovered in that region.

### Exploring content

Selecting Explore on any data profile card will open the content explorer. At this time, you cannot search for a specific content item, and you will not see Teams data in this view. This means that numbers within the content explorer may not match the numbers shown on the data profile page, since the data profile page does include Teams content. Privacy administrators that want to dive deeper into understanding their privacy data may do so here based on personal data type (sensitive information type) or by location (Exchange, OneDrive, or SharePoint).
