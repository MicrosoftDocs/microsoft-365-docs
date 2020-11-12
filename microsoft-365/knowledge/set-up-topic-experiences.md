---
title: "Set up topic experiences in Microsoft 365"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.service: o365-administration
search.appverid: MET150
localization_priority: Normal
description: "Learn how to set up topic experiences in Microsoft 365"
---

# Set up topic experiences in Microsoft 365

You can use the Microsoft 365 admin center to set up and configure [topic experiences](knowledge-management-overview.md). 

It is important to plan the best way to set up and configure topics in your environment. Be sure to read [Plan topic experiences](plan-topic-experiences.md) before you begin the procedures in this article.

You must be a global administrator or SharePoint administrator to access the Microsoft 365 admin center and set up topic experiences.

## Set up topic experiences

To set up topic experiences in Microsoft 365

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Setup**, and then view the **Organizational Knowledge** section.
2. In the **Organizational Knowledge** section, click **Connect people to knowledge**.

    ![Connect people to knowledge](../media/admin-org-knowledge-options.png) 

3. On the **Connect people to knowledge** page, click **Get started** to walk you through the setup process.

    ![Get started](../media/k-get-started.png) 

4. On the **Choose how the knowledge network can find topics** page, you will configure topic discovery. In the **Select SharePoint topic sources** section, select which SharePoint sites will be crawled as sources for your topics during discovery. Choose from:
    - **All sites**: All SharePoint sites in your organization. This includes current and future sites.
    - **All, except selected sites**: Type the names of the sites you want to exclude.  You can also upload a list of sites that you want to opt out from discovery. Sites created in future will be included as sources for topic discovery. 
    - **Only selected sites**: Type the names of the sites you want to include. You can also upload a list of sites. Sites created in the future will not be included as sources for topic discovery.
    - **No sites**: Do not include any SharePoint sites.

    ![Choose how to find topics](../media/ksetup1.png) 
   
5. In the **Exclude topics by name** section, you can add names of topics you want to exclude from topic discovery. Use this setting to prevent sensitive information from being included as topics. The options are:
    - **Don't exclude any topics** 
    - **Exclude topics by name**

    ![Exclude topics](../media/topics-excluded-by-name.png) 

    (Knowledge managers can also [exclude topics in the topic center](exclude-topics.md) after discovery.)

    #### How to exclude topics by name    

    If you need to exclude topics, after selecting **Exclude topics by name**, select download the .csv template and update it with the list of topics that you want to exclude from your discovery results.

    ![Exclude topics in CSV template](../media/exclude-topics-csv.png) 

    In the CSV template, enter the following information about the topics you want to exclude:

    - **Name**: Type the name of the topic you want to exclude. There are two ways to do this:
        - Exact match: You can include the exact name or acronym (for example, *Contoso* or *ATL*).
        - Partial match: You can exclude all topics that have a specific word in it.  For example, *arc* will exclude all topics with the word *arc* in it, such as *Arc circle*, *Plasma arc welding*, or *Training arc*. Note that it will not exclude topics in which the text is included as part of a word, such as *Architecture*.
    - **Stands for (optional)**: If you want to exclude an acronym, type the words the acronym stands for.
    - **MatchType-Exact/Partial**: Type whether the name you entered was an *exact* or *partial* match type.

    After you've completed and saved your .csv file, select **Browse** to locate and select it.
    
    Select **Next**.

6. On the **Who can see topics and where can they see them** page, you will configure topic visibility. In the **Who can see topics in the knowledge network** setting, you choose who will have access to topic details, such as highlighted topics, topic cards, topic answers in search, and topic pages. You can select:
    - **Everyone in my organization**
    - **Only selected people or security groups**
    - **No one**

    ![Who can see topics](../media/ksetup2.png)  

 > [!Note] 
 > While this setting allows you to select any user in your organization, only users who have Topic Experiences licenses assigned to them will be able to view topics.

7. In the **Permissions for topic management** page, you choose who will be able to create, edit, or manage topics. In the **Who can create and edit topics** section, you can select:
    - **Everyone in my organization**
    - **Only selected people or security groups**
    - **No one**

    ![Permissions for topic management, who can create and edit topics](../media/ksetup3.png) 

8. In the **Who can manage topics** section, you can select:
    - **Everyone in my organization**
    - **Only selected people or security groups**

    ![Permissions for topic management](../media/km-setup-create-edit-topics.png) 

    Select **Next**.

9. On the **Create topic center** page, you can create your topic center site in which topic pages can be viewed and topics can be managed. In the **Site name** box, type a name for your Topic center. You can optionally type a short description in the **Description** box. 

Select **Next**.

   ![Create Knowledge Center](../media/ksetup4.png)  

10. On the **Review and finish** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Activate**.

11. The **Knowledge network activated** page will display, confirming that the system will now start analyzing your selected sites for topics and creating the Knowledge Center site. Select **Done**.

12. You'll be returned to your **Connect people to knowledge** page. From this page, you can select **Manage** to make any changes to your configuration settings. 

    ![Settings applied](../media/ksetup7.png)    

## Assign licenses

Once you have configured topic experiences, you must assign licenses for the users who will be using topic experiences.

To assign licenses:

1. In the Microsoft 365 admin center, under **Users**, click **Active users**.

2. Select the users that you want to license, and click **Manage product licenses**.

3. Select **Assign more**.

4. Under **Licenses**, select **Topic Experiences**.

5. Under **Apps**, make sure **Graph Connectors Search with Index** and **Topic Experiences** are both selected.

    > [!div class="mx-imgBorder"]
    > ![SharePoint Syntex licenses in the Microsoft 365 admin center](../media/topic-experiences-licenses.png)

6. Click **Save changes**.

## Manage topic experiences

Once you have set up topic experiences, you can change the settings that you chose during setup in the [Microsoft 365 admin center](https://admin.microsoft.com/AdminPortal#/featureexplorer/csi/KnowledgeManagement). See the following references:

- [Manage topic discovery in Microsoft 365](topic-experiences-discovery.md)
- [Manage topic visibility in Microsoft 365](topic-experiences-knowledge-rules.md)
- [Manage topic permissions in Microsoft 365](topic-experiences-user-permissions.md)
- [Change the name of the topic center in Microsoft 365](topic-experiences-administration.md)

## See also

[Knowledge management Overview](knowledge-management-overview.md)
