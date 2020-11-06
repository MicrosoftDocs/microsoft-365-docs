---
title: "Manage people of interest in Data Investigations (preview)"
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
ms.assetid: 
description: Learn how to manage people of interest to scope your search or view information such as contact, location, and activity logs.
ms.custom: seo-marvel-mar2020
---
# Manage people of interest in Data Investigations (preview)

Data investigations often involve people of interest. Usually they are people who own the misplaced, sensitive, or malicious data that you're investigating or looking to remediate. In **Data Investigations (preview)**, you can add them to discover their data sources to use in scoping your search or view additional information such as contact, location, and activity logs. 


## Add people of interest

In **People of interest** tab, you can add people of interest and discover their data sources such as Exchange mailboxes or OneDrive for Business site that you can use to scope your search. When scoped down by people of interest, searches are more performant and accurate because the tool reprocesses any unindexed data such as images or unsupported file types. You can also see their contact information, location information and activity logs that you can use to initiate communications or further investigate their activities. 

To add people of interest to an investigation:

1. From the **Data Investigations (preview)** page, go to your investigation.
 
2. After you have selected an investigation, go to the **People of interest** tab and click **+ Add people of interest**. 
 
3. Choose people that you want to add to the investigation. You can start by typing to search and select the users from your organization's Azure Active Directory.
 
4. After you have finalized the list of people of interest, click **Next** to map their data sources. 

5. [Optional] For each person, select **Exchange** to add person's primary Exchange mailbox, and **OneDrive** to add person's primary OneDrive for Business site.

6. [Optional] Click **Next** to add any additional data sources that you want to associate with your people of interest.

7. [Optional] Select **Update** to assign content locations, like mailboxes, sites, and Teams to a person. 

8. [Optional] In the flyout:
   
    -  **Exchange Mailboxes** - Click **Choose users, groups, or Teams** and then click **Choose users, groups, or teams** again. To add more mailboxes, use the search box to find user mailboxes and distribution groups. You can also add mailboxes used to store a Microsoft 365 Group or a Microsoft Team information. Select the user, group, team check box, click **Choose**, and then click **Done**.

        > [!NOTE]
        > When you click Choose users, groups, or teams to specify mailboxes, the mailbox picker that's displayed is empty. This is by design to enhance performance. To add people to this list, type a name (a minimum of 3 characters) in the search box.
     
     - **SharePoint Sites** - Click **Choose sites** and then click **Choose sites** again to specify additional SharePoint and OneDrive for Business sites that you want to add to a person. You can also add the URL for the SharePoint site for a Microsoft 365 Group or a Microsoft Team. Type the URL for each site that you want to assign. Click **Choose**, and then click **Done**.
     - **Microsoft Teams** – Click **Choose Teams** and then click **Choose Teams** again to view a list of Microsoft Team groups that the person is a member of today. Select the Teams that you want to add to the person. Once selected, the system will automatically identify & select the associated SharePoint site and Group Mailbox associated to that Microsoft Team. Click **Choose**, and then click **Done**.
        
      > [!NOTE]
      > To add additional Microsoft Teams, you will need to separately add the mailbox and SharePoint site as shown above.

After you have finished mapping data sources to people of interest, you can see the summary of total mailboxes, sites, and Teams that you just added. If you map any additional data sources to people of interest and scope your search by people of interest, the mapping of document to people of interest persist throughout the investigation, making it easier to organize evidence or generate report by people of interest. 

## View additional people of interest information

In **People of interest** tab, click on a person that you added. In a flyout, you'll see:

- Contact information

  - **Display Name**: The person's name displayed in the address book. This is usually the combination of first name, middle initial, and last name.
  - **Mail/SMTP**: The SMTP address of the person, for example, jeff@contoso.onmicrosoft.com.  
  - **Title**: Job title.
  - **Department**: The name of the department in which the person works.
  - **Manager**: The person's manager. Manager receives any escalation communications for this person.
  
- Location information

  - **City**: The city in which the person is located.
  - **State**: The state or province in which the person is located.
  - **Country/Region**: The country/region in which the person is located; for example, "US" or "UK".
  - **Office**: The office location of the person.

- Processing status

  - **Indexing status**: Status of deep indexing the data sources
  - **Indexing Last Updated Time**: Timestamp of when the deep indexing job was last triggered.
  - **Data sources**: Shows the count of mailboxes, sites, and Teams mapped to the person

- Update index
    - You can reindex this person's data sources. 

- View activity 

    - You can view and search user's activity logs. For more information, see [View people of interest activity](view-people-of-interest-activity.md) 
