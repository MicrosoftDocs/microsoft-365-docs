---
title: "Search for and delete chat messages in Teams"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 3526fd06-b45f-445b-aed4-5ebd37b3762a
description: "Use Advanced eDiscovery and the Microsoft Graph Explorer to search for and purge chat messages in Microsoft Teams, and respond to data spillage incidents in Teams."
---

# Search and purge chat messages in Teams

You can use Advanced eDiscovery and the Microsoft Graph Explorer to search for and delete chat messages in Microsoft teams. This can help you find and remove sensitive information or inappropriate content. This search and purge workflow will also help you respond to a data spillage incident, when content containing confidential or malicious information is released through Teams chat messages.​

## Before you search and purge chat messages

- To create an Advanced eDiscovery case and use collections to search for chat messages, you have to be a member of the **eDiscovery Manager** role group in the Microsoft 365 compliance center. To delete chat messages, you have to be assigned the **Search And Purge** role. This role is assigned to the Data Investigator and Organization Management role groups by default. For more information, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).

- A maximum of 10 items per mailbox can be removed at one time. Because the capability to search for and remove chat messages is intended to be an incident-response tool, this limit helps ensure that chat messages are quickly removed.

## Search and purge workflow

Here's the process to search for and purge Teams chat messages:

![Workflow to search for and purge Teams chat messages.](../media/TeamsSearchAndPurgeWorkflow.png)

## Step 1: Create a case in Advanced eDiscovery

The first step is to create a case in Advanced eDiscovery to manage the search and purge process. For information about creating a case, see [Use the new case format](advanced-ediscovery-new-case-format.md). 

## Step 2: Create a draft collection

After you create a case, the next step is to create a draft collection to search for the Teams chat messages that you want to purge. The purge process you perform is Step 5 will purge all items that are found in the draft collection.

In Advanced eDiscovery, a *collection* is an eDiscovery search of the Teams content locations that contain the chat messages that you want to purge. Create the draft collection in the case that you created in the previous step. For more information, see [Create a draft collection](create-draft-collection.md).

### Data sources for chat messages

Use the following table to determine which data sources to search depending on the type of chat message you need to purge.

| For this type of chat...|Search this data source...|
|:---------|:---------|
|Teams 1:1 chats     |The mailbox of chat participants.|
|Teams group chats     |The mailboxes of chat participants.|
|Teams channels (standard and shared) |The mailbox associated with the parent team.|
|Teams private channels |The mailbox of the private channel members.|
|||

> [!NOTE]
> In Step 4, you also have to identify and remove any holds and retention policies assigned to the mailbox that contains the type of chat messages that you want to delete.

### Tips for searching for chat messages

To help ensure the most comprehensive collection of Teams chat conversations (including 1:1 and group chats, and chats from standard, shared, and private chats) use the **Type** condition and select the **Instant messages** option when you build the search query for the draft collection. We also recommend including a date range or several keywords to narrow the scope of the collection to items relevant to your search a purge investigation.

Here's a screenshot of a sample query using the **Type** and **Date** options:

   ![Query to collect Teams content.](..\media\TeamsConditionsQueryType.png)

For more information, see [Build search queries for collections](building-search-queries.md).

## Step 3: Review and verify chat messages to purge

As previously mentioned, the purge process in Step 5 will delete the items returned by the collection. So it's important that you review the draft collection results to ensure that the collection only returns the items that you want to purge. To review a sample of items in a draft collection, see the "Next steps after a draft collection is complete" section in [Create a draft collection](create-draft-collection.md#next-steps-after-a-draft-collection-is-complete).

Additionally, you can use the collection statistics (specifically the Top Locations statistics) to generate a list of the data sources that contain items returned by the collection. Use this list in the next step to remove hold and retention policies from the data sources that contain search results. For more information, see [Collection statistics and reports](collection-statistics-reports.md).

## Step 4: Remove holds and retention policies from data sources

Before you can purge chat messages from a mailbox, you have to remove any hold or retention policy that is assigned to a target mailbox. If not, then the chat you're trying to delete will be retained. 

Use the list of mailboxes that contain the chat messages that you want to delete and determine if there is a hold or retention policy assigned to those mailboxes, and then remove the hold or retention policy. Be sure to identify the hold or retention policy that you remove so that you can reassign to the mailboxes in Step 7. 

For instructions about how to identify and remove holds and retention policies, see "Step 3: Remove all holds from the mailbox" in [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](delete-items-in-the-recoverable-items-folder-of-mailboxes-on-hold.md#step-3-remove-all-holds-from-the-mailbox).. 

## Step 5: Purge chat messages from Teams

Now you're ready to actually purge chat messages from Teams. You'll use the Microsoft Graph Explorer to perform the following three tasks:

1. Get the Id of the Advanced eDiscovery case that you created in Step 1. This is the case that contains the collection created in Step 2.

2. Get the Id of the collection that you created in Step 2 and verified the search results in Step 3. The search query in this collection returns the chat messages that will be purged.

3. Purge the chat messages.

For information about using Graph Explorer, see [Working with Graph Explorer](/graph/graph-explorer/graph-explorer-features).

> [!IMPORTANT]
> To perform these three tasks in Graph Explorer, you may have to consent to the eDiscovery.Read.All and eDiscovery.ReadWrite.All permissions.

### Get the case Id

1. Go to <https://developer.microsoft.com/graph/graph-explorer> and sign in to the Graph Explorer with an account that's assigned the **Search And Purge** role in the Microsoft 365 compliance center.

2. Run the following GET request to retrieve the Id for the Advanced eDiscovery case. Use the value `https://graph.microsoft.com/beta/compliance/ediscovery/cases` in the address bar of the request query. Be sure to select **v1.0** in the API version dropdown list.

   ![GET request for case Id.](..\media\GraphGetRequestForCaseId.png)

   This request returns information about all cases in your organization on the **Response preview** tab.

3. Scroll through the response to locate the Advanced eDiscovery case. Use the **displayName** property to identify the case.

   ![Response with case Id.](..\media\GraphResponseForCaseId.png)

4. Copy the corresponding Id (or copy and paste it to a text file). You'll use this Id in the next task.

> [!TIP]
> Instead of using the previous procedure to obtain the case Id, you can open the case in the Microsoft 365 compliance center and copy the case Id from the URL.

### Get the collection Id


### Purge the chat messages




## Step 6: Verify chat messages are purged

## Step 7: Reapply holds and retention policies to data sources





