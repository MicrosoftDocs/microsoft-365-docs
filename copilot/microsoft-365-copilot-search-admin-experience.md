---  
title: "Copilot Search admin experience"  
author: kwekuako
ms.author: kwekua  
manager: dansimp
ms.date: 06/05/2025  
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: CopilotSearch
ms.custom: QuickDraft
ms.reviewer: kwekua
audience: admin
ai-usage: ai-assisted
description: Information on the admin experience in Microsoft 365 Copilot Search.
---  

# Microsoft 365 Copilot Search admin experience

The Microsoft 365 Copilot Search admin experience is a new capability in the Microsoft 365 admin center designed to empower you to manage, customize, and optimize the Copilot Search experience across your organization.

## Accessing Copilot Search in the Microsoft 365 admin center

No action is required to set up Microsoft 365 Copilot Search. If a user has an eligible Microsoft 365 Copilot license, they can access Copilot Search from the **Search** module in the Microsoft 365 Copilot app. Users who don't have an eligible Microsoft 365 Copilot license will receive the Microsoft Search experience when selecting the **Search** module in the Microsoft 365 app.

## Configure Copilot Search for your organization

You can create a customized Copilot Search experience that delivers more relevant results for your users. For example, you can manage connectors, bookmarks and acronyms for Copilot Search just as you can for Microsoft Search. If you’ve already configured bookmarks and acronyms for Microsoft Search, no further action is required to enable curated bookmarks and acronyms for Copilot Search.

The Copilot Search admin experience enables admins to:

- Configure frequently searched content within your organization like bookmarks and acronyms.
- Customize search results and filters.
- Monitor usage, adoption, and performance metrics.
- Manage all your data sources with over 100 connectors within the Microsoft Catalog, custom connectors and hundreds of connectors from integrated software vendors (ISVs). For more information, see [Microsoft 365 Copilot connectors gallery](/microsoftsearch/connectors-gallery).

## Manage acronyms in Copilot Search

You can manage acronyms for Copilot Search just as you can for Microsoft Search. If you've already configured acronyms for Microsoft Search, you're all set.

Curating acronyms for your users helps remedy a common workplace frustration. Users often encounter unfamiliar acronyms and abbreviations used in their organizations. Terms specific to organizations or teams might be confusing to people who move from one team to another, collaborate with partner teams, or are new to the organization.

Lack of a single reference source makes it hard to find definitions for these acronyms. Copilot Search solves that problem by allowing admins to curate acronyms for optimized search results.

## Set up Copilot Search admin experience

In the Microsoft 365 admin center:

1. Go to [admin.microsoft.com](https://admin.microsoft.com).
2. From the left navigation menu, select **Copilot** from the dropdown menu and select **Search**.

### Copilot Search user experience

In the **Search** box, users looking to understand an acronym might enter queries like:

- KPI
- Define KPI
- KPI definition
- Expand KPI
- KPI expansion
- Meaning of KPI
- KPI means
- KPI stands for

If KPI has been curated by the organization's admin, Copilot Search results include all the meanings of KPI identified by the user's organization.

> [!NOTE]
> Acronym queries are not case sensitive.

### Set up acronym answers

In the Microsoft 365 admin center:

1. Go to the **Copilot** drop down menu.
2. Select **Search** and then **Acronyms**.
3. Select **Add Acronyms**.

### Set up admin curated acronyms

Search administrators can add acronyms on the **Acronyms** tab in the Copilot Search admin experience. You can add acronyms from any internal site or repository to the admin center. These acronyms can be added to the **Published** state or **Draft** state.

- **Published state:** Acronyms are available to the organization's users through Copilot Search.
- **Draft state:** If you want to review an acronym before making it available in Copilot Search, you can add the acronym in a Draft state. Acronyms in the Draft state don't appear in search results. You'll need to move the acronym to the **Published** state to make it appear in search results.
- **Excluded state:** If you want to prevent an acronym from appearing in Microsoft Search, use **Exclude an acronym** to do so. To stop an acronym from being excluded, you'll need to delete the excluded acronym and add it or verify it's in your published list.

## Import acronyms

You can add acronyms individually or bulk import them in a .csv file. Upload a .csv file with the fields shown in the following table:

| Acronym (Mandatory) | Stands For (Mandatory)    | URL                        | Description                                                        | State (Mandatory)             | Last Modified | Last Modified By | ID  |
|---------------------|---------------------------|----------------------------|--------------------------------------------------------------------|-------------------------------|---------------|------------------|-----|
| KPI                 | Key Performance Indicator | Source of this information | Key performance indicators (KPIs) are quantifiable measurements... | Published, Draft, or Excluded |               |                  |     |

### CSV fields

- **Acronym:** Contains the actual short form or acronym. An example is KPI.

- **Stands for:** Contains the definition of the acronym. An example is Key Performance Indicator.

- **Description:** A brief description of the acronym that gives users more info about the acronym and its definition. For example, A KPI is a measurable value that helps organizations track and evaluate their progress toward achieving specific goals.

- **Source:** The URL of the page or website where you want users to go for more information about the acronym.

- **State:** This field can take three values:

- - **Draft:** Adds the acronym to the Draft state.
  - **Published:** Adds the acronym to the Published state and makes it available in Copilot Search results.
  - **Excluded:** Adds the acronym to the Excluded state and prevents it from appearing in Copilot Search results.

- **Last Modified:** The date the acronym was last changed. Don't edit the data in this field.

- **Last Modified By:** The user who made the last change to the acronym. Don't edit the data in this field.

- **ID:** The unique identifier for the acronym. Don't edit the data in this field. If you include the ID of an existing acronym, it will be replaced with the information in the import file.

## Manage Bookmarks in Copilot Search

Bookmarks help people find sites and tools that are especially important in an organization with just a quick search. Each bookmark includes a title, URL, a set of user-friendly keywords to trigger the bookmark, and a category.

### What makes a great bookmark

A great bookmark has four key elements:

- **A strong, informative title:** Aim for no more than eight words or about 60 characters maximum. You want your users to select the title and view the content but avoid obvious clickbait because it loses trust in your users. Consider these examples:

- **Good:** Try this week's tasty favorites from the cafeteria menu. Title is clear, concise, and interesting, but could be over-promising.
- **Better:** This week's cafeteria menu. Doesn't over-promise or sound like an ad.
- **Avoid:** You won't believe what's coming on the cafeteria menu this week. Uses clickbait that sound like an ad.

- **A succinct description:** About 300 characters, that summarizes the purpose or functionality of the linked resource.

- **A collection of keywords:** To help people find the bookmark when they search. We suggest a minimum of at least five keywords. Also, include variations that people in your organization might use. For example, dining menu, lunch menu, and caf menu could all be variations on cafeteria menu.

- **A helpful set of categories:** That makes it easier to sort and filter bookmarks in the admin center. Your users never see the assigned categories.

### Create bookmark answers

In the Microsoft 365 admin center:

1. Go to the **Copilot** Control System and select **Search**.
2. Select **Bookmarks** and choose how you want to create new bookmarks:
    - **Add bookmarks**
    - **Import SharePoint results**
    - **Import bookmarks**

### Add bookmarks

Admins can add bookmarks in the Microsoft 365 admin center and either publish or save them to a draft state. Publishing a bookmark immediately refreshes the search index, making it discoverable to users right away. You can also schedule a bookmark by specifying the date and time it will be published.

- **Published:** Bookmarks are available to the organization's users through Copilot Search results.
- **Draft:** Bookmarks saved as drafts aren't available to your users. Use this status if you or other stakeholders want to review or update bookmarks before publishing.
- **Scheduled:** Bookmarks to be published on the specified date and time.

### Import bookmarks

You can add bookmarks individually or bulk import them in a .csv file. Upload a .csv file with the fields shown in the following table:

| Title  | Url                              | Keywords                       | Match Similar Keywords        | State                                                     | Description                                              | Reserved Keywords                        | Categories                     | Last Modified By | ID  |
|--------|----------------------------------|--------------------------------|-------------------------------|-----------------------------------------------------------|----------------------------------------------------------|------------------------------------------|--------------------------------|------------------|-----|
| Yammer | https://www.yammer.com/office365 | Yammer Online, Yammer login | Automatic or can manually add | Published, Draft, Scheduled, Excluded, Expired, Suggested | Yammer is a collaboration tool that helps you connect with colleagues. | Microsoft Suggests, Microsoft Recommends | Name of the admin | Unique ID        |     |

### Prevent import errors

You'll get an error if any required data is missing or invalid. Also, a log file is generated with more information about the rows and columns to be corrected. Make necessary edits and try importing the file again. You can't import or save any bookmarks until all errors are resolved.

To prevent errors, make sure your import file is properly formatted and:

- Includes the header row and all the columns that were in the import template
- The column order is the same as the import template
- All columns have values, except the three that can be empty: ID, Last Modified, and Last Modified By
- The **State** column isn't empty, it requires information
- For Published, Suggested, Scheduled, or Draft bookmarks, the Title, URL, and Keywords columns are required
- For Excluded bookmarks, the URL column is required

**To prevent bookmark-to-bookmark duplication errors:**

- Don't use the same URL in different bookmarks. You'll get an error if you try to import a bookmark with a URL used in an existing one. This also applies to duplicate URLs in other types of answers.
- When updating existing bookmarks, use the bookmark ID column. You can update any other property of an existing bookmark, such as keyword or description, but you should make sure the bookmark ID is in the appropriate column of the import file. If the bookmark ID is present, it won't be treated as a new addition and won't be processed as an error.

## Video: Acronyms and bookmarks

The following video is an overview of creating and managing acronyms and bookmarks in Microsoft 365 Copilot search. It's 1 minute and 54 seconds long.

> [!VIDEO 3b7215a4-14c4-49e9-bfa4-f87985ef77b7]
