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
description: "Set up content understanding in Project Cortex"
---
# Set up content understanding (Preview)

The content in this article is for the Project Cortex Private Preview. [Find out more about Project Cortex](https://aka.ms/projectcortex).

Prior to setup, make sure to plan for the best way to set up and configure content understanding in your environment. For example, you need to make considerations about the following names of:

- The SharePoint sites that you want to enable form processing - all of them, some, or selected sites
- Your content center and the name of the primary site admin

> [!NOTE]
> You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up content understanding.

As an admin, you can also make changes to your selected settings anytime after setup, and throughout the content understanding management settings in the Microsoft 365 Admin Center.

## To set up content understanding

1. From the Microsoft 365 admin center, select **Setup** and then view the **Organizational knowledge** section.

1. In the **Organizational knowledge** section, select **Automate content understanding**.<br/>

    ![Organizational knowledge setup page](../media/content-understanding/admin-org-knowledge-options.png)</br>

3. On the **Automate content understanding** page, select **Get started** to walk through the setup process.<br/>

    ![Begin setup](../media/content-understanding/admin-content-understanding-get-started.png)</br>

4. On the **Configure Form Processing** page, choose if you want to enable users to use AI Builder to create form processing models in specific SharePoint document libraries. A menu option becomes available in the document library ribbon to **Create a form processing model** in SharePoint document libraries for which enabled.
 
     For **Which SharePoint libraries should show option to create a form processing model**, you can select:</br>
    - **All SharePoint libraries** to make it available to all SharePoint libraries in your tenant.</br>
    - **Only libraries in selected sites** and then select the sites you want to make it available.</br>
    - **No SharePoint libraries** if you currently don't want to make it available to any sites (you can change this after setup).
</br>

   ![Configure form processing](../media/content-understanding/admin-configforms.png)
</br>

   > [!NOTE]
   > Enable this setting on a SharePoint document library does not affect existing models applied to the library or the ability to apply document understanding models to a library. 

    
5. From the **Create Content Center** page, you can create a SharePoint content center site for which users can create and manage document understanding models. </br>
    a. For **Site name**, type the name you want for the content center site.</br>
    b. The **Site address** shows the URL for your site, based on the site name.</br>

    > [!NOTE] 
    > While you can select any supported language, content understanding models can only be created for English.</br>

      ![Create content center](../media/content-understanding/admin-cu-create-cc.png)</br>

6. Select **Next**.

7. On the **Finish and review** page, look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Activate**.

8. The **Content understanding activated** page displays, confirming the system added your form processing preferences and created the Content Center site. Select **Done**.

9. You'll be returned to your **Automate content understanding** page. From this page, you can select **Manage** to make any changes to your configuration settings. 