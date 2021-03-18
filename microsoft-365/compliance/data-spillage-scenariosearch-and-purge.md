---
title: "eDiscovery solution series Data spillage scenario - Search and purge"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid:
- MET150
ms.assetid: d945f7dd-f62f-4ca7-b3e7-469824cfd493
description: "Use eDiscovery and search tools to manage and respond to a data spillage incident in your organization."
---

# eDiscovery solution series: Data spillage scenario - Search and purge

 **What is data spillage and why should you care?** Data spillage is when a confidential document is released into an untrusted environment. When a data spillage incident is detected, it's important to quickly assess the size and locations of the spillage, examine user activities around it,  and then permanently purge the spilled data from the system. 
  
## Data spillage scenario

You're a lead information security officer at Contoso. You are informed of a data spillage situation where an employee unknowingly shared a highly confidential document with multiple people through email. You want to quickly assess who received this document internally and externally. Once identified, you would like to share case findings with other investigators to review, and then permanently remove the data from Office 365. After the investigation is complete, you want to generate a report with the evidence of permanent removal and other case details for any future reference.
  
### Scope of this article

This document provides a list of instructions on how to permanently remove a message from Microsoft 365 so that it's not accessible or recoverable. To delete a message and make it recoverable until the deleted item retention period expires, see [Search for and delete email messages in your organization](search-for-and-delete-messages-in-your-organization.md).
  
## Workflow for managing data spillage incidents

Here's a how to manage a data spillage incident:

![The 8-step workflow for managing data spillage incidents](../media/O365-eDiscoverySolutions-DataSpillage-workflow.png)
  
[(Optional) Step 1: Manage who can access the case and set compliance boundaries](#optional-step-1-manage-who-can-access-the-case-and-set-compliance-boundaries)<br/>
[Step 2: Create an eDiscovery case](#step-2-create-an-ediscovery-case)<br/>
[Step 3: Search for the spilled data](#step-3-search-for-the-spilled-data)<br/>
[Step 4: Review and validate case findings](#step-4-review-and-validate-case-findings)<br/>
[Step 5: Use message trace log to check how spilled data was shared](#step-5-use-message-trace-log-to-check-how-spilled-data-was-shared)<br/>
[Step 6: Prepare the mailboxes](#step-6-prepare-the-mailboxes)<br/>
[Step 7: Permanently delete the spilled data](#step-7-permanently-delete-the-spilled-data)<br/>
[Step 8: Verify, provide a proof of deletion, and audit](#step-8-verify-provide-a-proof-of-deletion-and-audit)<br/>

## Things to know before you start

- When a mailbox is on hold, a deleted message remains in the Recoverable Items folder until the retention period expires or the hold is released. [Step 6](#step-6-prepare-the-mailboxes) describes how to remove hold from the mailboxes. Check with your records management or legal departments before removing the hold. Your organization might have a policy that defines whether a mailbox on hold or a data spillage incident takes priority. 
    
- To control which user mailboxes an data spillage investigator can search and manage who can access the case, you can set up compliance boundaries and create a custom role group, which is described in [Step 1](#optional-step-1-manage-who-can-access-the-case-and-set-compliance-boundaries). To do this, you have to be a member of the Organization Management role group or be assigned the role management role. If you or in administrator in your organization has already set compliance boundaries, you can skip Step 1.
    
- To create a case, you must be a member of the eDiscovery Manager role group or be a member of a custom role group that's assigned the Case Management role. If you're not a member, ask a Microsoft 365 administrator to [add you to the eDiscovery manager role group](assign-ediscovery-permissions.md).
    
- To create and run a Content Search, you have to be a member of the eDiscovery Manager role group or be assigned the Compliance Search management role. To delete messages, you have to be a member of the Organization Management role group or be assigned the Search And Purge management role. For information about adding users to a role group, see [Assign eDiscovery permissions in the Security & Compliance Center](./assign-ediscovery-permissions.md).
    
- To search the audit log eDiscovery activities in Step 8, auditing must be turned on for your organization. You can search for activities that were performed within the last 90 days. To learn more about how to enable and use auditing, see the [Auditing the data spillage investigation process](#auditing-the-data-spillage-investigation-process) section in Step 8. 
    
## (Optional) Step 1: Manage who can access the case and set compliance boundaries

Depending on your organizational practice, you need to control who can access the eDiscovery case used to investigate a data spillage incident and set up compliance boundaries. The easiest way to do this is to add investigators as members of an existing role group in the Security & Compliance Center and then add the role group as a member of the eDiscovery case. For information about the built-in eDiscovery role groups and how to add members to an eDiscovery case, see [Assign eDiscovery permissions](assign-ediscovery-permissions.md).
  
You can also create a new role group that aligns with your organizational needs. For example, you might want a group of data spillage investigators in the organization to access and collaborate on all data spillage cases. You can do this by creating a "Data Spillage Investigator" role group, assigning the appropriate roles (Export, RMS Decrypt, Review, Preview, Compliance Search, and Case Management), adding the data spillage investigators to the role group, and then adding the role group as a member of the data spillage eDiscovery case. See [Set up compliance boundaries for eDiscovery investigations in Office 365](tagging-and-assessment-in-advanced-ediscovery.md) for detailed instructions on how to do this. 
  
## Step 2: Create an eDiscovery case

An eDiscovery case provides an effective way to manage your data spillage investigation. You can add members to the role group that you created in Step 1, add the role group as a member of new a eDiscovery case, perform iterative searches to find the spilled data, export a report to share, track the status of the case, and then refer back to the details of the case if needed. Consider establishing a naming convention for eDiscovery cases used for data spillage incidents, and provide as much information as you can in the case name and description so you can locate and refer to in the future if necessary.
  
To create a new case, you can use eDiscovery in the security and compliance center. See "Create a new case" in [Get started with Core eDiscovery](get-started-core-ediscovery.md#step-3-create-a-core-ediscovery-case).
  
## Step 3: Search for the spilled data

Now that you've created a case and managed access, you can use the case to iteratively search to find the spilled data and identify the mailboxes that contain the spilled data. You will use the same search query that you used to find the email messages to delete those same messages in [Step 7](#step-7-permanently-delete-the-spilled-data).
  
To create a content search associated with an eDiscovery case, see [Search for content in a Core eDiscovery case](search-for-content-in-core-ediscovery.md).
  
> [!IMPORTANT]
> The keywords that you use in the search query may contain the actual spilled data that you're searching for. For example, if you searching for documents containing a social security number and you use the it as search keyword, you must delete the query afterwards to avoid further spillage. See [Deleting the search query](#deleting-the-search-query) in Step 8.
  
## Step 4: Review and validate case findings

After you create a content search, you need to review and validate that the search results and verify that they consist only of the email messages that must be deleted. In a content search, you can preview a random sampling of 1,000 email messages without exporting the search results to avoid further data spillage. You can read more about the preview limitations at [Limits for Content Search](limits-for-content-search.md).
  
If you have more than 1,000 mailboxes or more than 100 email messages per mailbox to review, you can divide the initial search into multiple searches by using additional keywords or conditions such as date range or sender/recipient and review the results of each search individually. Make sure to note down all search queries to use when you delete messages in [Step 7](#step-7-permanently-delete-the-spilled-data).

If a custodian or end user is assigned an Office 365 E5 license, you can examine up to 10,000 search results at once using Advanced eDiscovery. If there are more than 10,000 email messages to review, you can divide the search query by date range and review each result individually as search results are sorted by date. In Advanced eDiscovery, you can tag search results using the **Label as** feature in the preview panel and filter the search result by the tag you labeled. This is helpful when you collaborate with a secondary reviewer. By using additional analytics tools in Advanced eDiscovery, such as optical character recognition, email threading, and predictive coding, you can quickly process and review thousands of messages and tag them for further review. See [Quick setup for Advanced eDiscovery](./get-started-with-advanced-ediscovery.md).

When you find an email message that contains spilled data, check the recipients of the message to determine if it was shared externally. To further trace an message, you can collect sender information and date range so you can use the message trace logs, which is described in [Step 5](#step-5-use-message-trace-log-to-check-how-spilled-data-was-shared).

After you verified the search results, you may want to share your findings with others for a secondary review. People who you assigned to the case in Step 1 can review the case content in both eDiscovery and Advanced eDiscovery and approve case findings. You can also generate a report without exporting the actual content. You can also use this same report as a proof of deletion, which is described in [Step 8](#step-8-verify-provide-a-proof-of-deletion-and-audit).
  
 **To generate a statistical report:**
  
1. Go to the **Search** page in the eDiscovery case, and click the search that you want to generate a report for. 
    
2. On the flyout page, click **More > Export report**.
 
      The Export report page is displayed.

    ![Select the search and then click More > Export report on the flyout page](../media/O365-eDiscoverySolutions-DataSpillage-ExportReport1.png)
    
3. Select **All items, including ones that have unrecognized format, are encrypted, or weren't indexed for other reasons** and then click **Generate report**.

4. In the eDiscovery case, click **Export** to display the list of export jobs. You may have to click **Refresh** to update the list to display the export job you just created.

5. Click the export job, and then click **Download** report on the flyout page.
 
    ![On the Export page, click the export and then click "Download report"](../media/O365-eDiscoverySolutions-DataSpillage-ExportReport2.png)

The **Export Summary** report contains the number of locations found with results and the size of the search results. You can use this to compare with the report generated after deletion and provide as a proof of deletion. The **Results** report contains a more detailed summary of the search results, including the subject, sender, recipients, if the email was read, dates, and size of each message. If any of the details in this report contains that actual spilled data, be sure to permanently delete the Results.csv file when the investigation is complete.

For more information about exporting reports, see [Export a Content Search report](export-a-content-search-report.md).
    
## Step 5: Use message trace log to check how spilled data was shared

To further investigate if email with spilled data was shared, you can optionally query the message trace logs with the sender information and the date range information that you gathered in Step 4. Note that the retention period for message trace is 30 days for real time data and 90 days for historical data.
  
You can use Message trace in the security and compliance center or use the corresponding cmdlets in Exchange Online PowerShell. It's important to note that message tracing doesn't offer full guarantees on the completeness of data returned. For more information about using Message trace, see: 
  
- [Message trace in the Security & Compliance Center](../security/office-365-security/message-trace-scc.md)
    
- [New Message Trace in Security & Compliance Center](https://blogs.technet.microsoft.com/exchange/2018/05/02/new-message-trace-in-office-365-security-compliance-center/)
    
## Step 6: Prepare the mailboxes

After you review and validate that the search results contains only the messages that must be deleted, you need to collect a list of the email addresses of the impacted mailboxes to use in Step 7 when you delete the spilled data. You may also have to prepare the mailboxes before you can permanently delete email messages depending on whether single item recovery is enabled on the mailboxes that contain the spilled data or if any of those mailboxes are on hold.
  
### Get a list of addresses of mailboxes with spilled data

There are two ways to collect a list of email addresses of mailboxes with spilled data.

**Option 1: Get a list of addresses of mailboxes with spilled data**

1. Open the eDiscovery case, go to the **Search** page and select the appropriate content search. 
    
2. On the flyout page, click **View results**.
    
3. In the **Individual results** drop down list, click **Search statistics**.
    
4. In the **Type** drop down list, click **Top locations**.
    
    ![Get a list of mailboxes that contain search results on the Top locations page in the Search statistics](../media/O365-eDiscoverySolutions-DataSpillage-TopLocations.png)

    A list of mailboxes that contain search results is displayed. The number of items in each mailbox that match the search query is also displayed.
    
5. Copy the information in the list and save it to a file or click **Download** to download the information to a CSV file. 
    
**Option 2: Get mailbox locations from the export report**

Open the Export Summary report that you downloaded in [Step 4](#step-4-review-and-validate-case-findings). In the first column in the report, the email address of each mailbox is listed under **Locations**.
  
### Prepare the mailboxes so you can delete the spilled data

If single item recovery is enabled or if a mailbox is placed on hold, a permanently deleted (purged) message will be retained in Recoverable Items folder. So before you can purge spilled data, you need to check the existing mailbox configurations and disable single item recovery and remove any hold or retention policy. Keep in mind that you can prepare one mailbox at a time, and then run the same command on different mailboxes or create a PowerShell script to prepare multiple mailboxes at the same time.

- See "Step 1: Collect information about the mailbox" in [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](delete-items-in-the-recoverable-items-folder-of-mailboxes-on-hold.md#step-1-collect-information-about-the-mailbox) for instructions about how to check if single item recovery is enabled or if the mailbox is placed on hold or it's assigned to a retention policy. 

- See "Step 2: Prepare the mailbox" in [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](delete-items-in-the-recoverable-items-folder-of-mailboxes-on-hold.md#step-2-prepare-the-mailbox) for instructions about disabling single item recovery. 

- See "Step 3: Remove all holds from the mailbox" in [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](delete-items-in-the-recoverable-items-folder-of-mailboxes-on-hold.md#step-3-remove-all-holds-from-the-mailbox) for instructions about how to remove a hold or retention policy from a mailbox. 

- See "Step 4: Remove the delay hold from the mailbox" in [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](delete-items-in-the-recoverable-items-folder-of-mailboxes-on-hold.md#step-4-remove-the-delay-hold-from-the-mailbox) for instructions about removing the delay hold that is placed on the mailbox after any type of hold is removed.

> [!IMPORTANT]
> Check with your records management or legal departments before removing a hold or retention policy. Your organization may have a policy that defines whether a mailbox on hold or a data spillage incident takes priority. 
  
Be sure to revert the mailbox to previous configurations after you verify that the spilled data has been permanently deleted. See the details in [Step 7](#step-7-permanently-delete-the-spilled-data).

## Step 7: Permanently delete the spilled data

Using the mailbox locations that you collected and prepared in Step 6 and the search query that was created and refined in Step 3 to find email messages that contain the spilled data, you can now permanently delete the spilled data.  As previously explained, to delete messages, you have to be a member of the Organization Management role group or be assigned the Search And Purge management role. For information about adding users to a role group, see [Assign eDiscovery permissions in the Security & Compliance Center](./assign-ediscovery-permissions.md).

To delete the spilled messages, see steps 2 & 3 in [Search for and delete email messages](./search-for-and-delete-messages-in-your-organization.md)

> [!IMPORTANT]
> Email items in a review set in an Advanced eDiscovery case can't be deleted by using the procedures in this article. That's because items in a review set are copies of items in the live service that are copied and stored in an Azure Storage location. This means they won't be returned by a content search that you create in Step 3. To delete items in a review set, you have to delete the Advanced eDiscovery case that contains the review set. For more information, see [Close or delete an Advanced eDiscovery case](close-or-delete-case.md).
  
## Step 8: Verify, provide a proof of deletion, and audit

The final step in the workflow to manage a data spillage incident is to verify that the spilled data was permanently removed from the mailbox by going to the eDiscovery case and re-running the same search query that was used to delete that data to confirm that no results are returned. After you confirm the spilled data has been permanently removed, you can export a report and include it (along with the original report) as a proof of deletion. Then you can [close the case](close-reopen-delete-core-ediscovery-cases.md) which will allow you to re-open it if you have refer to it in the future. Additionally, you can also revert mailboxes to their previous state, delete the search query used to find the spilled data, and search for auditing records of tasks performed when managing the data spillage incident.
  
### Reverting the mailboxes to their previous state

If you changed any mailbox configuration in Step 6 to prepare the mailboxes before the spilled data was deleted, you will need to revert them to their previous state. See "Step 6: Revert the mailbox to its previous state" in [Delete items in the Recoverable Items folder of cloud-based mailboxes on hold](delete-items-in-the-recoverable-items-folder-of-mailboxes-on-hold.md#step-6-revert-the-mailbox-to-its-previous-state).
  
### Deleting the search query

If the keywords in the search query that you created and used in Step 3 contains some of all of the actual spilled data, you should delete the search query to prevent further data spillage.
  
1. In the security and compliance center, open the eDiscovery case, go to the **Search** page, and select the appropriate content search.
    
2. On the flyout page, click **Delete**.

    ![Select the search and then click Delete on the flyout page](../media/O365-eDiscoverySolutions-DataSpillage-DeleteSearch.png)
    
### Auditing the data spillage investigation process

You can search the audit log for the eDiscovery activities that were performed during the investigation. You can also search the audit log to return the audit records for the **New-ComplianceSearchAction -Purge** command that you ran in Step 7 to delete the spilled data. For more information, see:

- [Search the audit log](search-the-audit-log-in-security-and-compliance.md)

- [Search for eDiscovery activities in the audit log](search-for-ediscovery-activities-in-the-audit-log.md)
