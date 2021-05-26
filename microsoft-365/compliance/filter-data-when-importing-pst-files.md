---
title: "Filter data when importing PST files"
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
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 26af16df-34cd-4f4a-b893-bc1d2e74039e
ms.custom: seo-marvel-apr2020
description: "Learn how to filter data using the intelligent import feature in the Office 365 import service when you import PST files to Office 365."
---

# Filter data when importing PST files

Use the new Intelligent Import feature in the Office 365 Import service to filter the items in PST files that actually get imported to the target mailboxes. Here's how it works:
  
- After you create and submit a PST import job, PST files are uploaded to an Azure storage area in the Microsoft cloud.
  
- Microsoft 365 analyzes the data in the PST files, in a safe and secure manner, by identifying the age of the mailbox items and the different message types included in the PST files.
  
- When the analysis is complete and the data is ready to import, you have the option to import all data in the PST files as is or trim the data that's imported by setting filters that control what data gets imported. For example, you can choose to:
  
  - Import only items of a certain age.
  
  - Import selected message types.
  
  - Exclude messages sent or received by specific people.
  
- After you configure the filter settings, Microsoft 365 imports only the data that meets the filtering criteria to the target mailboxes specified in the import job.
  
The following graphic shows the Intelligent Import process, and highlights the tasks you perform and the tasks performed by Office 365.
  
![The Intelligent Import process in Office 365](../media/f2ec309b-11f5-48f2-939c-a6ff72152d14.png)
  
## Create a PST import job

- The steps in this topic assume that you've created a PST import job in the Office 365 Import service by using network upload or drive shipping. For step-by-step instructions, see one of the following topics:
    
  - [Use network upload to import PST files to Office 365](use-network-upload-to-import-pst-files.md)
    
  - [Use drive shipping to import PST files to Office 365](use-drive-shipping-to-import-pst-files-to-office-365.md)
    
- After you create an import job by using network upload, the status for the import job on the Import page in the Security & Compliance Center is set to **Analysis in progress**, which means that Microsoft 365 is analyzing the data in the PST files that you uploaded. Click **Refresh**![refresh](../media/165fb3ad-38a8-4dd9-9e76-296aefd96334.png) to update the status for the import job. 
    
- For drive shipping import jobs, the data will be analyzed by Microsoft 365 after Microsoft datacenter personnel receive your hard drive and upload the PST files to the Azure storage area for your organization.
  
## Filter data that gets imported to mailboxes

After you've created a PST import job, follow these steps to filter the data before you import it to Office 365.
  
1. Go to <https://compliance.microsoft.com> and sign in using the credentials for an administrator account in your organization.
    
2. In the left pane of the Microsoft 365 compliance center, click **Information governance** \> **Import**.
    
    The import jobs for your organization are listed on the **Import** tab. The **Analysis completed** value in the **Status** column indicates the import jobs that have been analyzed by Microsoft 365 and are ready for you to import.
    
    ![Analysis complete status indicates Microsoft 365 has analyzed the data in PST files](../media/de5294f4-f0ba-4b92-a48a-a4b32b6da490.png)
  
3. Select the import job that you want to complete and click **Import to Office 365**.
  
    A fly out page is displayed with information about the PST files and other information about the import job.

4. Click **Import to Office 365**.
    
    The **Filter your data** page is displayed. It contains data insights about the data in the PST files for the import job, including information about the age of the data. 
    
    ![The Filter your data page shows data insights of the PST files for the import job](../media/3b537ec0-25a4-45a4-96d5-a429e2a33128.png)
  
5. Based on whether or not you want to trim the data that's imported to Microsoft 365, under **Do you want to filter your data?**, do one of the following:
  
    a. Click **Yes, I want to filter it before importing** to trim the data that you import, and then click **Next**.
  
    The **Import data to Office 365 page** page is displayed with detailed data insights from the analysis that Microsoft 365 performed. 
  
    ![Microsoft 365 displays detailed data insights from its analysis of the PST files](../media/4881205f-0288-4c32-a440-37e2160295f2.png)
  
    The graph on this page shows the amount of data that will be imported. Information about each message type found in the PST files is displayed in the graph. You can hover the cursor over each bar to display specific information about that message type. There is also a drop-down list with different age values based on the analysis of the PST files. When you select an age in the drop-down list, the graph is updated to show how much data will be imported for the selected age. 
  
    b. To configure addition filters to reduce the amount of data that's imported, click **More filtering options**.
  
    ![Configure the filters on the More options page to trim the data that's imported](../media/3f8d68c3-3fe2-4b4e-9488-b368b98fa9fe.png)
  
    You can configure these filters:
  
      - **Age** - Select an age so only items that are newer than the specified age will be imported. See the [More information](#more-information) section for a description about how Microsoft 365 determines the age buckets for the **Age** filter. 
  
      - **Type** - This section shows all the message types that were found in the PST files for the import job. You can uncheck a box next to a message type that you want to exclude. You can't exclude the Other message type. See the [More information](#more-information) section for a list of mailbox items that are included in the Other category.
  
      - **Users** - You can exclude messages that are sent or received by specific people. To exclude people who appear in the From: field, To: field, or the Cc: field of messages, click **Exclude users** next to that recipient type. Type the email address (SMTP address) of the person, click **Add**![New icon](../media/457cd93f-22c2-4571-9f83-1b129bcfb58e.gif) to add them to the list of excluded users for that recipient type, and then click **Save** to save the list of excluded users. 
  
        > [!NOTE]
        > Microsoft 365 doesn't show data insights that result from setting the **People** filter. However, if you set this filter to exclude messages sent or received by specific people, those messages will be excluded during the actual import process. 
  
    c. Click **Apply** in the **More filtering options** fly out page to save your filter settings. 
  
    The data insights on the **Import data to Office 365** page are updated based on your filter settings, including the total amount of data that will be imported based on the filter settings. A summary of the filter settings is also shown. You can click **Edit** next to a filter to change the setting if necessary. 
  
    ![The data insights are updated based on your filter settings](../media/897e20fb-3b13-44c3-9d56-9f330750f2a3.png)
  
    d. Click **Next**.
  
    A status page is displayed showing your filter settings. Again, you can edit any of the filter settings.
  
    e. Click **Import data** to start the import. The total amount of data that will be imported is displayed. 
  
    Or
  
    a. Click **No, I want to import everything** to import all data in the PST files to Office 365, and then click **Next**.
  
    b. On the **Import data to Office 365** page, click **Import data** to start the import. The total amount of data that will be imported is displayed. 
  
6. On the **Import** tab, click **Refresh** ![refresh](../media/165fb3ad-38a8-4dd9-9e76-296aefd96334.png). The status for the import job is displayed in the **Status** column.
  
7. Click the import the job to display more detailed information, such as the status for each PST file and the filter settings that you configured.

## More information

- How does Microsoft 365 determine the increments for the age filter? When Microsoft 365 analyzes a PST file, it looks at the sent or received time stamp of each item (if an item has both a sent and received timestamp, the oldest date is selected). Then Microsoft 365 looks at the year value for that timestamp and compares it to the current date to determine the age of the item. These ages are then used as the values in the drop-down list for the **Age** filter. For example, if a PST file has messages from 2016, 2015, and 2014, then values in the **Age** filter would be **1 year**, **2 years**, and **3 years**.
  
- The following table lists the message types that are included in the **Other** category in the **Type** filter on the **More options** fly out page (see Step 5b in the previous procedure). Currently, you can't exclude items in the "Other" category when you import PSTs to Office 365. 
  
    |**Message class ID**|**Mailbox items that use this message class**|
    |:-----|:-----|
    |IPM.Activity  <br/> |Journal entries  <br/> |
    |IPM.Document  <br/> |Documents and files (not attached to an email message)  <br/> |
    |IPM.File  <br/> |(same as IPM.Document)  <br/> |
    |IPM.Note.IMC.Notification  <br/> |Reports sent by Internet Mail Connect, which is the Exchange Server gateway to the Internet  <br/> |
    |IPM.Note.Microsoft.Fax  <br/> |Fax messages  <br/> |
    |IPM.Note.Rules.Oof.Template.Microsoft  <br/> |Out-of-office autoreply messages  <br/> |
    |IPM.Note.Rules.ReplyTemplate.Microsoft  <br/> |Replies sent by an inbox rule  <br/> |
    |IPM.OLE.Class  <br/> |Exceptions for a recurring series  <br/> |
    |IPM.Recall.Report  <br/> |Message recall reports  <br/> |
    |IPM.Remote  <br/> |Remote mail messages  <br/> |
    |IPM.Report  <br/> |Item status reports  <br/> |
