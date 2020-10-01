---
title: "Manage a data spillage incident in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
ms.audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: "This article describes using the new Data Investigations (preview) tool in the Security & Compliance Center to manage a data spillage incident."
---

# Manage a data spillage incident in Microsoft 365

Data spillage is when a document containing confidential, sensitive, or malicious information is released in an untrusted environment. When a data spillage incident is detected, it's important to quickly contain the environment, assess the size and locations of the spillage, examine user activities around it, and then delete the spilled data from the service. Using the Data Investigations (preview) tool, you can search for sensitive, malicious, or misplaced data across Office 365, investigate to find out what happened, and then take appropriate actions.  

## Scope of this article

This article provides a list of instructions on how to permanently delete items from Microsoft 365 mailboxes so they are no longer accessible or recoverable by users or admins. 

> [!NOTE]
> When you delete items located in a SharePoint or OneDrive for Business site, they are retained for 93 days from the time you delete them from their original location.

## Scenario

You're informed of a data spillage incident where an employee unknowingly shared a highly confidential document with multiple people through email. You want to quickly assess who received this document, both inside and outside of your organization. After you've investigate the incident, you plan to share your findings with other investigators to review, and then permanently remove the spilled data from your organization. After the investigation is complete, you want to remove all evidence. 

> [!IMPORTANT]
> While you'll be able to permanently remove the spilled data within your own organization, any data spilled outside your organization can't be removed with these capabilities.

## Workflow

Here's the workflow for using Data Investigations (preview) to manage a data spillage incident:

1.	Create a data investigation.

2.	Search for sensitive, malicious, or misplaced data and collect them as evidence.

3.	Review and investigate the evidence.

4.	Permanently delete the spilled data.

5.	Close or delete the investigation.


## Before you begin

- To create a data investigation, search for content, and delete spilled data, you have to be a member of the Data Investigator role group in the Security & Compliance Center.

- To control which user mailboxes and OneDrive accounts an investigator can search, your organization can set up compliance boundaries. For more information, [Set up compliance boundaries for eDiscovery investigations](tagging-and-assessment-in-advanced-ediscovery.md). 

## Step 1: Create a data investigation

To create an investigation in the Data Investigations (preview) tool:

1. Go to [https://protection.office.com](https://protection.office.com).
    
2. Sign in using an account that is a member of the Data Investigator role group.
    
3. In the security and compliance center, click **Data Investigations**.
 
4. On the **Data Investigations (preview)** page, click **Create new investigation**.
    
5. On the **New data investigation** flyout page, give the investigation a name (required), and then type an optional investigation number and description. The name must be unique in your organization.

6. Under **Do you want to configure additional settings after creating this investigation?**, do one of the following:

    - Click **Yes** to create the investigation, and display the **Settings** page in the new case. This allows you to add members to the investigation.
    
    - Click **No** to create the investigation and display it in the list of cases on the **Data Investigations (preview)** page. If you choose this option, you will be added as the only member of the investigation and the default search and analytics settings will be used. You can add members or change settings anytime after the investigation is created.

7. Click **Save** to create the investigation.

    The new investigation is displayed in the list on the **Data Investigations (preview)** page. 

8. To open an investigation, click the name of the investigation. 

    The **Home** tab for the investigation is displayed. 

> [!TIP]
> Consider establishing a naming convention for investigations and provide as much information as you can in the name and description so you can locate and refer to them in the future if necessary.
 
## Step 2: Search for the spilled data 
 
If you know which users you want to search for spilled data, you can add them as people of interest to map their data sources to the investigation and quickly search their mailbox and OneDrive account. To add people of interest to the investigation, click **People of interest**, and then click **Add people of interest**. For more information, see [Manage people of interest](manage-people-of-interest.md).

On the **Searches** tab, you can create searches to find the spilled data. For more information about creating searches, see [Search for data in an investigation](search-for-data.md).

After you run the search, you can preview samples of search results and view search statistics to evaluate the effectiveness of your search query. After you identify the items that you want to delete from Office 365, you can add the search results to an evidence set. To do this, click the search that you want to investigate. On the flyout page, click **Add results to evidence** and follow the instructions. Then in the evidence set, you can review individual documents, investigate who had access to documents, and export the documents. To delete the documents (or a subset of documents) instead of reviewing them, go to [Step 4](#step-4-delete-the-spilled-data). 

> [!IMPORTANT]
> The keywords that you use in the search query may contain the actual spilled data that you're searching for. For example, if you search for documents containing a social security number and you use it as a keyword in the search query, you must delete the query afterwards to avoid further spillage. You can delete the search or delete the entire investigation in [Step 5](#step-5-close-or-delete-the-investigation). 

## Step 3: Review and investigate 

In the investigation, go to the **Evidence** tab and click the evidence set that you created in the previous step. After the processing job is completed and the search results are added to the evidence, you can review individual documents in their native format, text format, or a near-native format. You can create additional queries to narrow the list of documents, and tag documents to indicate findings from your investigation. For more information, see [Review data in evidence](review-data-in-evidence.md)

To group documents and get more assistance for your review, click **Manage evidence**. In the **Analytics** tile, click **Analyze**. This runs advanced analytics such as duplicate detection, email threading, and theme analysis. For more information, see:

- [Run analytics to investigate faster](run-analytics-to-investigate-faster.md)
- [Near duplicate detection](near-duplicates.md)
- [Email threading](email-threading.md)
- [Themes](themes.md)

To determine which users are involved in the data spillage, you can create a query in the evidence set and then use the Sender/Author and Recipients conditions. This creates a list of all senders, recipients, and authors found in collected data that was added to the evidence. Be sure to examine the list to determine if there are any external users. For more information about using conditions to narrow search results, see [Search conditions](keyword-queries-and-search-conditions.md#search-conditions).

## Step 4: Delete the spilled data

Using the data investigations tool, you can delete items from their original locations. For example, you can delete items from mailboxes, SharePoint sites, and OneDrive accounts across your organization. Keep in mind that because you collected items as evidence (by adding the search results to the evidence set in Step 2), you have copies of the items in the evidence set to further investigate or preserve them.

To delete items from their original locations:

1. In the evidence set, select the items that you want to delete. If you select items that are attached to an email message, the parent email message will also be selected and deleted. 
 
2. Click **Action** and then click **Delete items from original locations**.

   ![Click Action and then click Delete items from original locations](../media/DataInvestigationsDeleteItems1.png)

3. On the flyout page, verify the number of items and related child documents that will be deleted, and then click **Delete**.

At this time, when you delete items from their original location, the items are soft-deleted. This means that the deleted items will be retained until the deleted item recovery period for the item expires. This also means it's possible for users to recover these items. For more information about what happens when items are deleted from mailboxes and sites, see [Delete items from their original location](delete-items-from-original-locations.md).

## Step 5: Close or delete the investigation

After you delete documents in the source content locations (mailboxes or sites) in the live service, you will still have copies of these documents that you added to evidence as part of your investigation. To avoid further data spillage, you should consider deleting the investigation itself.

To delete an investigation:

1. On the **Settings** tab, click **Investigation information**.

2. Click  **Delete investigation**. 

If you don't need to delete the investigation or if you want to save the information that you collected during the investigation, you can click **Close case**. Then later, you can reopen closed investigations.
