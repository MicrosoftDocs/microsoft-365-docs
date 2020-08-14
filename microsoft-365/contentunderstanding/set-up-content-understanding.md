---
title: 'Set up content understanding (Preview) '
description: 'How to set up Project Cortex.'
author: efrene
ms.author: efrene
manager: pamgreen
ms.date: 08/1/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW

---
# Set up content understanding (Preview)

> [!Note] 
> The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

Admins can use the Microsoft 365 admin center to set up and configure content understanding. 

Prior to setup, make sure to plan for the best way to set up and configure content understanding in your environment. For example, you will need to make considerations about the following:
- Which SharePoint sites will you enable form processing? All of them, some, or select sites?
- Name of your content center, and who is the primary site admin?

An admin can also make changes to your selected settings anytime after setup through the content understanding management settings in the Microsoft 365 admin center.


## Requirements 
You must have Global Admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up content understanding.


## To set up content understanding

1. In the Microsoft 365 admin center, select **Setup**, and then view the **Organizational knowledge** section.
2. In the **Organizational knowledge** section, select **Automate content understanding**.<br/>

    ![Organizational knowledge setup page](../media/content-understanding/admin-org-knowledge-options.png)</br>

3. On the **Automate content understanding** page, click **Get started** to walk you through the setup process.<br/>

    ![Begin setup](../media/content-understanding/admin-content-understanding-get-started.png)</br>


4. On the **Configure Form Processing** page, you can choose if you want to let users be able to use AI Builder to create form processing models in specific SharePoint document libraries. A menu option will be available in the document library ribbon to **Create a form processing model** in SharePoint document libraries in which it is enabled.
 
     For **Which SharePoint libraries should show option to create a form processing model**, you can select:</br>
    - **All SharePoint libraries** to make it available to all SharePoint libraries in your tenant.</br>
    - **Only libraries in selected sites**, and then select the sites in which you want to make it available.</br>
    - **No SharePoint libraries** if you currently don't want to make it available to any sites (you can change this after setup).
</br>

   ![Configure form processing](../media/content-understanding/admin-configforms.png)
</br>

   > [!Note]
   > Enabling this setting on a SharePoint document library does not affect existing models applied to the library or the ability to apply document understanding models to a library. 

    
5. On the **Create Content Center** page, you can create a SharePoint content center site on which your users can create and manage document understanding models. </br>
    a. For **Site name**, type the name you want to give your content center site.</br>
    b. The **Site address** will show the URL for your site, based on what you selected for the site name.</br>

    > [!Note] 
    > While you can select any supported language, note that content understanding models can only be created for English.</br>

      ![Create content center](../media/content-understanding/admin-cu-create-cc.png)</br>


    Select **Next**.
6. On the **Finish and review** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Activate**.



7. The **Content understanding activated** page will display, confirming that the system has added your form processing preferences and creating the Content Center site. Select **Done**.

8. You'll be returned to your **Automate content understanding** page. From this page, you can select **Manage** to make any changes to your configuration settings. 

## See also



  






