---
title: 'Set up Knowledge Management (Preview) '
description: 'How to set up Knowledge Management.'
author: efrene
ms.author: efrene
manager: pamgreen
ms.date: 07/21/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal

---
# Set up Knowledge Management (Preview)

> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

You can use the Microsoft 365 admin center to set up and configure [Knowledge Management](knowledge-management-overview.md). 

> [!Important]
> It is important to plan the best way to set up and configure Knowledge Management in your environment. For example, you will need to make considerations about the following:
- Which SharePoint sites you want to analyze for topics.
- Which users you want to make topics visible to.
- Which users you want to give permissions to manage topics in the topic center.
- Which users you want to give permissions to create or edit topics in the topic center.
- What name you want to give your topic center.

> [!Note]
> You may find it useful to create security groups to assign your users the permissions needed to view topics, manage topic, and create and edit topics.

An admin can also [make changes to your selected settings anytime after setup](manage-knowledge-network.md) through the Knowledge Management settings in the Microsoft 365 admin center.

## Requirements 
You must have Global Admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up Organizational knowledge tasks.

## Set up your knowledge network

Setting up your knowledge network walks you through the following:

- Topic discovery: Selecting topic sources and topics to  exclude from discovery.
- Topic visibility: Selecting who can view topics as highlights, in search and topic pages.
- Topic permissions: Selecting who can create, edit, and manage topics.
- Topic center: Create your topic center.
- Review: Check and apply your settings.

To set up your knowledge network:

1. In the Microsoft 365 admin center (admin.microsoft.com), select **Setup**, and then view the **Organizational Knowledge** section.
2. In the **Organizational Knowledge** section, click **Connect people to knowledge**.<br/>

    ![Connect people to knowledge](../media/content-understanding/admin-org-knowledge-options.png) </br>

3. On the **Connect people to knowledge** page, click **Get started** to walk you through the setup process.<br/>

    ![Get started](../media/content-understanding/k-get-started.png) </br>

4. On the **Choose how the knowledge network can find topics** page, you will configure topic discovery. In the **Select SharePoint topic sources** section, select which SharePoint sites will be crawled as sources for your topics during discovery. This includes:</br>
    a. **All sites**: All SharePoint sites in your tenant. This captures current and future sites.</br>
    b. **All, except selected sites**: Type the names of the sites you want to exclude.  You can also upload a list of sites that you want to opt out from discovery. Sites created in future will be included as sources for topic discovery. </br>
    c. **Only selected sites**: Type the names of the sites you want to include. You can also upload a list of sites. Sites created in the future will not be included as sources for topic discovery. </br>

    ![Choose how to find topics](../media/content-understanding/ksetup1.png) </br>
   
5. In the **Exclude topics by name** section, you can choose to includes names of topics you don't want to be in the discovered results. Use this setting to prevent sensitive topics from being included as part of the knowledge network.Your options include:</br>
    a. **Don't exclude any topics** </br>
    b. **Exclude topic that contain these terms**:  If you have topics you don’t want shown to users as part of the knowledge network.
        - Download the provided template.
        - Enter the topic names you want to exclude. You must indicate the match type as exact or partial. Exact match means that topics that fit the exact term will be excluded. Partial match is stricter and means that topics that contain the term will be excluded. For example, if you enter *Doc* as the topic name, *Doc assembly* will be excluded while *Docker* won't. Topic names are case insensitive.  
        - Select **+** to import your completed CSV file. Then select **Upload**. You’ll see a green check mark if your file has been processed successfully. 
    Select **Next**.</br>


6. On the **Who can see topics and where they can see them** page, you will configure topic visibility. In the **Who can see topics in the knowledge network** setting, you choose who will have access to topic details, such as highlighted topics, topic cards, topic answers in search, and topic pages. You can select:</br>
    a. **Everyone in your organization**</br>
    b. **Only selected people or security groups**</br>
    c. **No one**</br>

    ![Who can see topics](../media/content-understanding/ksetup2.png) </br> 

 > [!Note] 
 > While this setting allows you to select any user in your organization, only users who have knowledge management licenses assigned to them will be able to view topics. 

7. In the **Permissions for topic management** page, you choose who will be able to create, edit, or manage topics. In the **Who can create and edit topics** section, you can select:</br>
    a. **Everyone in your organization**</br>
    b. **Only selected people or security groups**</br>
8. In the **Who can manage topics** section, you can select:</br>
    a. **Everyone in your organization**</br>
    b. **Selected people or security groups**</br>
    ![Permissions for topic management](../media/content-understanding/ksetup3.png) </br>

    Select **Next**.</br>
9. On the **Create Topic  Center** page, you can create your topic center site in which topic pages can be viewed and topics can be managed.  In the **Topic center name** box, type a name for your Topic center. You can optionally type a short description in the **Site description** box. 

Select **Next**.</br>

   ![Create Knowledge Center](../media/content-understanding/ksetup4.png) </br> 

10. On the **Review and finish** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Activate**.

    ![Finish and review](../media/content-understanding/ksetup5.png) </br> 

11. The **Knowledge network activated** page will display, confirming that the system will now start analyzing your selected sites for topics and creating the Knowledge Center site. Select **Done**.</br>

    ![Activated](../media/content-understanding/ksetup6.png) </br> 

12. You'll be returned to your **Connect people to knowledge** page. From this page, you can select **Manage** to make any changes to your configuration settings. 

    ![Settings applied](../media/content-understanding/ksetup7.png) </br>   

> [!Note]
> After setup, an admin can [make changes to your selected knowledge management settings](manage-knowledge-network.md) any time by returning to this page.


## See also



  






