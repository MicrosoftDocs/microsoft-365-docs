---
title: 'Create a new topic in Microsoft Viva Topics'
description: 'How to create a new topic in Microsoft Viva Topics.'
author: efrene
ms.author: efrene
manager: pamgreen
ms.reviewer: cjtan
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-topics
ms.service: 
search.appverid: 
localization_priority: Normal


---

# Create a new topic in Microsoft Viva Topics

In Viva Topics, you can create a new topic if one is not discovered through indexing or if the AI technology did not find enough evidence to establish it as a topic.

> [!Note] 
> While information in a topic that is gathered by AI is [security trimmed](topic-experiences-security-trimming.md), note that topic description and people information in a manually created topic is visible to all users who have permissions to view the topic. 


## Requirements

To create a new topic, you need to:
- Have a Viva Topics license.
- Have permissions to [**Who can create or edit topics**](./topic-experiences-user-permissions.md). Knowledge admins can give users this permission in the Viva Topics topic permissions settings. 

> [!Note] 
> Users who have permission to manage topics in the topic center (knowledge managers) already have permissions to create and edit topics.

## To create a topic

You can create a new topic from two locations:

- Topic center home page: Any licensed user with the **Who can create or edit topics** permission (contributors) can create a new topic from the topic center by selecting the <b>New</b> menu and select <b>Topic page</b>.<br/> 

    ![New topic from topic center](../media/knowledge-management/new-topic.png) <br/> 

- Manage topics page:  Any licensed user who has **Who can manage topics** permission (knowledge managers) can create a new topic from the Manage topics page in the Topic Center by selecting <b>New topic page</b>.<br/> 

    ![New topic from manage topics](../media/knowledge-management/new-topic-topic-center.png) <br/> 

### To create a new topic:

1. Select the option to create a new Topic Page from the ribbon on the Manage Topics page.

2.   In the **Name this topic** section, type the name of the new topic.

    ![Name this topic](../media/knowledge-management/k-new-topic-page.png) <br/> 


3. In the <b>Alternate Names</b> section, type any other names that the topic might be referred to. 

    ![Alternate names](../media/knowledge-management/alt-names.png) <br/> 
4. In the <b>Description</b> section, type a couple of sentences that describe the topic. 

    ![Description of the topic](../media/knowledge-management/description.png)<br/>

4. In the <b>Pinned people</b> section, you can "pin" a person to show them as having a connection to the topic (for example, an owner of a connected resource). Begin by typing their name or email address in the <b>add a new user</b> box, and then select the user you want to add from the search results. You can also "unpin" them by selecting the <b>Remove from list</b> icon on the user card. You can also drag the person to another place in the list.
 
    ![Pinned people](../media/knowledge-management/pinned-people.png)<br/>


5. In the <b>Pinned files and pages</b> section, you can add or "pin" a file or SharePoint site page that is associated to the topic.

   ![Pinned files and pages](../media/knowledge-management/pinned-files-and-pages.png)<br/>
 
    To add a new file, select <b>Add</b>, select the SharePoint site from your Frequent or Followed sites, and then select the file from the site's document library.

    You can also use the <b>From a link</b> option to add a file or page by providing the URL. 

    > [!Note] 
    > Files and pages that you add must be located within the same Microsoft 365 tenant. If you want to add a link to an external resource in the topic, you can add it through the canvas icon in step 8.


6.  The <b>Related sites</b> section shows sites that have information about the topic. 

    ![Related sites section](../media/knowledge-management/related-sites.png)<br/>

    You can add a related site by selecting <b>Add</b> and then either searching for the site, or selecting it from your list of Frequent or Recent sites.<br/>
    
    ![Select site](../media/knowledge-management/sites.png)<br/>

7. The <b>Related topics</b> section shows connections that exist between topics. You can add a connection to a different topic by selecting the <b>Connect to a related topic</b> button, and then typing the name of the related topic, and selecting it from the search results. 

   ![Related topics](../media/knowledge-management/related-topic.png)<br/>  

    You can then give a description of how the topics are related, and select <b>Update</b>.<br/>

   ![Related topics description](../media/knowledge-management/related-topics-update.png)<br/> 

   The related topic you added will display as a connected topic.

   ![Related topics connected](../media/knowledge-management/related-topics-final.png)<br/> 

   To remove a related topic, select the topic you want to remove, then select the <b>Remove topic</b> icon.<br/>
 
   ![Remove related topic](../media/knowledge-management/remove-related.png)<br/>  

   Then select <b>Remove</b>.<br/>

   ![Confirm remove](../media/knowledge-management/remove-related-confirm.png)<br/> 
     
 


8. You can also add static items to the page (such as text, images, or links) by selecting the canvas icon, which you can find below the short description. Selecting it will open the SharePoint toolbox from which you can choose the item you want to add to the page.

   ![Canvas icon](../media/knowledge-management/webpart-library.png)<br/> 


9. Select **Publish** to save your changes. 

After you publish the page, the topic name, alternate name, description, and pinned people will display to all licensed users who view the topic. Specific files, pages, and sites will only appear on the topic page if the viewer has Office 365 permissions to the item. 



## See also



