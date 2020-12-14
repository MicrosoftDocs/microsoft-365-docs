---
title: "Add non-custodial data sources to an Advanced eDiscovery case"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
description: "You can add non-custodial data sources to an Advanced eDiscovery case and place a hold on the data source. Non-custodial data sources are reindexed, so any content that was deemed as partially indexed is reprocessed to make it fully and quickly searchable." 
---

# Add non-custodial data sources to an Advanced eDiscovery case

In Advanced eDiscovery cases, it doesn't always meet your needs to associate a Microsoft 365 data source with a custodian in the case. But you may still need to associate that data with a case so that you search it, add it to review set, and review it. The new feature called *non-custodial data sources* lets you add data to a case without having to associate the data to a custodian. It also applies the same Advanced eDiscovery functionality to non-custodial data that's available for data associated with custodian. Two of the most useful features that you can apply to non-custodial data is placing it on hold and processing it using [Advanced indexing](indexing-custodian-data.md).

## Add a non-custodial data source

Follow these steps to add and manage non-custodial data sources in an Advanced eDiscovery case.

1. On the **Advanced eDiscovery** home page, click the case that you want to add the data to.

2. Click the **Data sources** tab and then select **Add data location** under **Add data source** dropdown.

3. Choose the data sources that you want to add to the case. You can add multiple mailboxes and sites by expanding SharePoint or Exchange and selecting **Edit**. 

   - **Exchange email** - Click **Edit** next to Exchange to specify mailboxes to assign to the selected custodian. Type into the search box the name or alias (a minimum of 3 characters) of user mailboxes or distribution groups. Select the mailboxes that you would like to assign to this custodian and click **Add**. 


   - **SharePoint sites** - Click **Edit** next to SharePoint to associate a site with the custodian. Select a site in the list or you can search for a site by typing the URL of the site in the search bar. Select the sites that you would like to assign to this custodian and click **Add**. 

   > [!NOTE]
      > You can use the SharePoint and Exchange pickers to associate an additional Team or Yammer with a custodian, you have to separately add the mailbox and site associated with the team by using the **Exchange mail** and **SharePoint sites** locations.
   
4. Click **Add** to add the SharePoint sites or Exchange mailboxes to the flyout. Choose which data location you want to place on hold by selecting or unselecting the associated checkbox.

5. Click **Add** to add all data locations to the case and place holds on each data location. 

   Each non-custodial data source that you added is listed on the **Data sources** page.

   Also, a job named *Reindexing non-custodial data* is created and displayed on the **Jobs** tab of the case. After the job is created, the Advanced indexing process in initiated and the data sources are reindexed.






## Managing the hold on non-custodial data sources

After you place a hold on a non-custodial data source, a hold policy that contains all non-custodial data sources for the case is automatically created. When you place additional non-custodial data sources on hold, they are added to this hold policy.

1. On the **Home** page of the case, click the **Holds** tab.

2. On the **Holds** page, and click **NCDSHold-\<GUID\>**, where the GUID value is unique to the case.

3. On the flyout page, click **Edit hold** to view all the non-custodial data sources that are placed on hold.

You can perform the following management task on non-custodial data sources:

- You can edit the hold to create a query-based hold that is applied to all non-custodial data sources in the case.

- You can release a non-custodial data source from the hold. Releasing a data source doesn't remove the non-custodial data source from the case. It only removes the hold that was placed on the data source.
