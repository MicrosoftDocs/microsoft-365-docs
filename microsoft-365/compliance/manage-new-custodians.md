---
title: "Manage custodians in an eDiscovery (Premium) case"
description: Learn how to view details, edit, and bulk edit the list of custodians in an eDiscovery (Premium) case.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-apr2020
---

# Manage custodians in an eDiscovery (Premium) case

The **Custodians** page on the **Data sources** tab in an Microsoft Purview eDiscovery (Premium) case contains a list of all custodians that have been added to the case. After you add custodians to a case, details about each custodian are automatically collected from Azure Active Directory and are viewable in eDiscovery (Premium).

## View custodian details

To view the details about a custodian, click the custodian from the list on the **Custodians** tab. A flyout page is displayed and contains the following information about the custodian.

![Custodian details.](../media/CustodianDetails.PNG)

- Contact information

  - **Title**. The custodian's job title.
  
  - **User principal name**. The user principal name(UPN) for the custodian, for example, AdeleV@contoso.onmicrosoft.com.
  
  - **Location**. The office location in the custodian's place of business.
  
  - **Manager**. The custodian's manager. The designated manager will receive any escalation communications for this custodian.
  
  - **Department**. The name for the department in which the custodian works.

- Case information

  - **Status**. The status of the custodian within the case. A status of **Active** indicates that the custodian is part of the case. If a custodian is released from a case, the status is changed to **Released**.
  
  - **Hold**. Indicates if the custodian has been placed on hold.

- Data locations and hold information

  ![Custodian data locations and hold information.](../media/CustodianHoldDetails.PNG)

  - **Custodial locations**. Shows the count and type of data sources (mailboxes, sites, and Teams) that are associated with the custodian and are part of the case.

    - Each data location shows its hold status. Possible values for hold status: **On hold**, **Not on hold**, and **In progress**.

    - If you don't see a hold status for a data source, please check the status of the custodian hold that's listed on the **Hold** tab for the case. The custodian hold identifies the specific data sources place on hold.

## Edit a custodian

As your case progresses, you may discover that there may be additional data sources relevant to a specific custodian and the case. In other scenarios, you may want to remove certain data sources that have been reviewed and deemed as not relevant.

To update the data sources that are associated with a custodian:

1. Go to  **eDiscovery > eDiscovery (Premium)** and open the case.
  
2. Click the **Data Sources** tab.
  
3. Select a custodian from the list, and then click **Edit** on the flyout page.

    ![Edit Data Sources.](../media/EditCustodianDataSource.PNG)
  
4. To add or remove the primary mailbox and OneDrive account for the custodian:

    - Expand the custodian to view the primary data locations that have been previously associated with the custodian.

    - Click **Edit** next to **Mailbox** or **OneDrive** to add the custodian's mailbox or OneDrive location.

    - Select **Clear** next to **Mailbox** or **OneDrive** to remove the custodian's mailbox or OneDrive account from being associated as a data location for this custodian.

5. To add or remove other mailboxes, sites, Teams, or Yammer groups to a specific custodian, click **Edit** next to the service to add a data location.

   - **Exchange**: Use to associate other mailboxes to the custodian. Type into the search box the name or alias (a minimum of three characters) of user mailboxes or distribution groups. Select the mailboxes to assign to the custodian and then click **Add**.

   - **SharePoint**: Use to associate SharePoint sites to the custodian. Select a site in the list or search for a site by typing a URL in the search box. Select the sites to assign to the custodian and then click **Add**.

   - **Teams**: Use to assign the Microsoft Teams the custodian is currently a member of. Select the teams to assign to the custodian and then click **Add**. After you add a team, the system automatically identifies and locates the SharePoint site and group mailbox associated to that team and assigns them to the custodian.

   - **Yammer**:  Use to assign the Yammer groups the custodian is currently a member of. Select the groups to assign to the custodian and then click **Add**. After you add a team, the system automatically identifies and locates the SharePoint site and group mailbox associated to that group and assigns them to the custodian.

   > [!NOTE]
   > You can use the **Exchange** and **SharePoint** location pickers to associate any mailbox or site in your organization, including teams or Yammer groups that a custodian is not a member of, to a custodian. To do this, you have to add both the mailbox and site associated with each team or Yammer group.

6. After editing the data locations for the custodian, click **Next** to go to the **Hold settings** page.  

7. On the **Hold settings** page, update the hold settings for the custodian.

## Reindex custodian data

In most eDiscovery workflows for legal investigations, a subset of a custodian's data is searched after the custodian is added to a legal case. Because of very large file sizes or possible data corruption, some items in the data sources associated with a custodian may be partially indexed. Using the [advanced indexing](indexing-custodian-data.md) capability in the eDiscovery (Premium), most partially indexed items can be automatically remediated by reindexing these items on demand.

When a custodian is added to a case, the data located in the data sources associated with the custodian is automatically reindexed (by the advanced indexing process). This means you can leave the data in-place instead of having to download and remediate it and then search it offline). However, during the lifecycle of a legal case new data sources might be associated with a custodian. In this case, you can reindex the custodian's data by rerunning the advanced indexing process to remediate any partially indexed items and update the index for the custodian's data.

To trigger the reindexing process to address partially indexed items:

1. Go to  **eDiscovery > eDiscovery (Premium)** and open the case.

2. Click the **Sources** tab.

3. On the **Custodians** page, select a custodian whose data must be reindexed.

4. On the flyout page, click **Update index**.

   A dialog is displayed saying the index job has been created.

Reindexing custodian data is a long-running process; the corresponding job that's created is named **Re-indexing custodian data**. You can track the progress on the **Jobs** tab or on the **Custodians** tab by monitoring the status in the **Indexing job status** column.

For more information, see:

- [Work with processing errors](processing-data-for-case.md)

- [Manage jobs](managing-jobs-ediscovery20.md)

## Release a custodian from a case

A custodian is released in situations where a case is closed, the custodian is no longer under obligation to preserve content for a case, or when the custodian is deemed to no longer be relevant to the case. 

If you release a custodian after a hold notice was published, a release notice will be sent to the custodian. Additionally, any holds placed on data sources that were associated with the custodian are removed. If the custodian was placed on a *silent hold*, where they weren't issued any legal hold notifications, a release notice will not be sent but any holds placed on data sources that were associated with that custodian are removed.

To release a custodian:

1. Go to  **eDiscovery > eDiscovery (Premium)** and open the case.

2. Click the **Sources** tab.

3. On the **Custodians** page, and then select the custodian who is being released from the case.

4. On the flyout page, click **Release custodian**.

   A warning page is displayed explaining that if a hold is placed on a data source associated with the custodian, the hold will be removed, and that any other hold associated with a different eDiscovery (Premium) case will still apply. That includes other types of preservation and retention features (such as a Microsoft 365 retention policy).

5. Click **Yes** to confirm that you want to release the custodian. 

    The status for this user on the **Custodians** tab is set to **Released** and the **Hold status** on the flyout page is changed to **False**.

> [!NOTE]
> A custodian may be simultaneously involved in several legal cases. When a custodian is released from a specific case, the holds and notifications across other cases won't be impacted.
