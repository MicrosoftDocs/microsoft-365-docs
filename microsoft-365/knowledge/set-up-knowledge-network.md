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
# Set up Project Cortex (Preview)

> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex]().

Use the Microsoft 365 admin center to set up and configure Knowledge Management. 

> [!Important]
> It is important to plan the best way to set up and configure Project Cortex in your environment. For example, who should you initially give access to and which sites do I analyze?  Much of this type of information is needed during the setup steps. Before going through the setup steps, make sure to [make all your planning considerations]().

## Requirements 
You must have Global Admin permissions to be able to access the Microsoft 365 admin center and set up Project Cortex.

## Set up your knowledge network

Setting up your knowledge network walks you through the following:

- Topic discovery: Selecting topic source sites and topics to exclude from discovery.
- Topic visibility: Selecting who can view topics and see suggested topics.
- Topic permissions: Selecting who can create, edit, and manage topics.
- Knowledge center: Create your knowledge center.
- Review: Check and apply your settings.

To set up your knowledge network:

1. In the Microsoft 365 admin center, select **Setup**, and then view the **Organizational Knowledge** section.
2. In the **Organizational Knowledge** section, click **Connect people to knowledge**.<br/>

    ![Connect people to knowledge](../media/content-understanding/admin-org-knowledge-options.png) </br>

3. On the **Set up your knowledge network**, click **Get started** to walk you through the setup process.<br/>

    ![Get started](../media/content-understanding/k-get-started.png) </br>

4. On the **Choose how the knowledge network can find topics** page, you will configure topic discovery. In the **Select SharePoint topic sources** section, select which SharePoint sites will be mined as sources for your topics during discovery. This includes:</br>
    a. **All sites**: All SharePoint sites in your tenant.</br>
    b. **All, except selected sites**: Type the names of the sites you want to exclude.</br>
    c. **Only selected sites**: Type the names of the sites you want to include.</br>

    ![Choose how to find topics](../media/content-understanding/k-choose-how-find-topics.png) </br>
   
5. In the **Exclude topics by name** section, you can choose to includes names of topics you don't want to be discovery results. Your options include:</br>
    a. **Don't exclude any topics**: If you have a number of topics to exclude, you choose to include them in a CSV file. Select **Choose** to import your CSV file.</br>
    b. **Exclude topic that contain these terms**
    Select **Next**.</br>

    ![Exclude topics by name](../media/content-understanding/k-choose-how-find-topics.png) </br>

6. On the **Who can see topics and where they can see them page**, you will configure topic visibility. In the **Who will see topic details, including: descriptions, connected people, and resources** section, you choose who will have access to topic details. You can select:
    a. **Everyone**
    b. **Everyone, except selected people or groups**
    c. **Only selected people or groups**
    d. **No one**
    
7. In the **Who will see suggested topics to add to their profile** section, you choose who will be able to add suggested topics to their profiles, based on their activity in Microsoft 365. You can select:
    a. **Everyone**
    b. **Everyone, except selected people or groups**
    c. **Only selected people or groups**
    d. **No one**
    Select **Next**.
8. In the **Permissions for topic management** page, you choose who will be able to create, edit, or manage topics. In the **Who can create and edit topics** section, you can select:
    a. **Everyone**
    b. **Everyone, except selected people or groups**
    c. **Only selected people or groups**
9. In the **Who can manage topics** section, you can select:
    a. **Everyone**
    b. **Selected people or groups**
    Select **Next**.
10. On the **Create Knowledge Center** page, you can create your Knowledge Center site in which topics are managed.  In the **Site name** box, type a name for your Knowledge Center. You can optionally type a short description in the **Site description** box. Select **Next**.
11. On the **Finish and review** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Apply settings**.
12. The **Knowledge Network settings applied** page will display, confirming that the system will now start analyzing your selected sites for topics and creating the Knowledge Center site. Select **Done**.
13. You'll be returned to your **Set up your Knowledge Network** page. From this page, you can select **Manage** to make any changes to your configuration settings. 

> [!Note]  Need to at information about when this might be completed and how to tell.

## Set up Content Understanding

Setting up your content understanding walks you through the following:

- Configure Form Processing: Make AI builder available to your SharePoint sites.
- Create a Content Center: Create a Content Center site to create and manage models.


### To set up Content Understanding

1. In the Microsoft 365 admin center, select **Setup**, and then view the **Content Service and Insights** section.
2. In **Content Service and Insights**, in **Build AI models to understand content**, select **View**.<br/>
3. On the **Build AI models to understand content**, click **Get started** to walk you through the setup process.<br/>
4. On the **Configure Form Processing** page, you can choose if you want to let users be able to use AI Builder to create Form Processing models in SharePoint document libraries.  For **Show AI Builder option on the Automate menu for all SharePoint document libraries**, you can select:
    a. **Show** to make the menu option available.
    b. **Hide** to hide the menu option from users.
    Select **Next**.
5. On the **Create Content Center** page, you can create a SharePoint Content Center site on which your users can create document understanding models. 
    a. For **Site name**, type the name you want to give your Content Center site.
    b. The **Site address** will show the URL for your site, based on what you selected for the site name.
    c. For **Primary administrator**, type the user who will own and manage this site.
    d. For **Language**, select the language that you want the site to display in.  
    > [!Note] While you can select any supported language, not that content understanding models will can only be created for English.
    Select **Next**.
6. On the **Finish and review** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Apply settings**.
7. The **Content understanding settings applied** page will display, confirming that the system has added your form processing preferences and creating the Content Center site. Select **Done**.
8. You'll be returned to your **Build AI models to understand content** page. From this page, you can select **Manage** to make any changes to your configuration settings. 

## See also



  






