---
title: Set up Microsoft Syntex
ms.author: mikeplum
author: MikePlumleyMSFT
ms.reviewer: ssquires
manager: serdars
audience: admin
ms.topic: article
ms.service: microsoft-syntex
ms.collection: 
- enabler-strategic
- m365initiative-syntex
ms.custom: 
- admindeeplinkMAC
search.appverid: MET150
ms.localizationpriority: high
description: Set up Microsoft Syntex.
---

# Set up Microsoft Syntex

Admins can use the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> to set up Microsoft Syntex. 

Consider the following before you start:

- In which SharePoint sites will you enable document processing? All of them, some, or select sites?
- What will you name your default content center?

You can change your settings after initial setup in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

Prior to setup, make sure to plan for the best way to set up and configure content understanding in your environment. For example, you need to make the following decisions:

- The SharePoint sites in which you want to enable document processing - all of them, some, or selected sites
- The name and admins for your content center

## Requirements 

> [!NOTE]
> You must have Global admin or SharePoint admin permissions to be able to access the Microsoft 365 admin center and set up Syntex.

As an admin, you can also make changes to your selected settings anytime after setup, and throughout the content understanding management settings in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

### Custom Power Platform environments

If you plan to use a custom Power Platform environment, you must install the *AI Builder for Project Cortex* app in this environment. See [Manage Dynamics 365 apps](/power-platform/admin/manage-apps#install-an-app-in-the-environment-view) for details and look for the *AI Builder for Project Cortex* app in the list of Dynamics 365 apps.

You also need to [allocate AI Builder credits](/power-platform/admin/capacity-add-on) to the custom environment before you can create document processing models. 

When using a custom environment, model creators must be assigned the Environment Maker security role and model users must be assigned the Basic User security role. See [Assign a security role to a user](/power-platform/admin/assign-security-roles) for more information.

Users creating models in a [content center site](/microsoft-365/contentunderstanding/create-a-content-center) must be site members. Users creating models locally outside the content center must be site owners of those sites.

### Licensing

To use Syntex, your organization must have a subscription to Syntex, and each user must have a licenses assigned. Syntex licenses include the following apps, which must all be assigned:

- Syntex
- Syntex - SPO type
- Common Data Service for Syntex

To use structured document processing or freeform document processing models, you also need AI Builder credits. For each licensed user of Syntex, an allocation of AI Builder credits is provided each month.

For details about Syntex licensing, see [Microsoft Syntex licensing](syntex-licensing.md)

## To set up Syntex

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then view the **Files and content** section.

2. In the **Files and content** section, select **Automate content understanding**. Note that your current AI Builder credit availability is shown in the **At a glance** section.<br/>

3. On the **Automate content understanding** page, click **Get started** to walk through the setup process. <br/>

    > [!div class="mx-imgBorder"]
    > ![Begin setup.](../media/content-understanding/admin-content-understanding-get-started.png)</br>

4. On the **Configure Form Processing** page, you can choose if you want to let users be able to create document processing models in specific SharePoint document libraries. A menu option will be available in the document library ribbon to **Create a form processing model** in SharePoint document libraries in which it is enabled.
 
     For **Which SharePoint libraries should show option to create a form processing model**, you can select:</br>
      - **Libraries in all SharePoint sites** to make it available to all SharePoint libraries in your organization.</br>
      - **Libraries in selected SharePoint sites**, and then select the sites in which you want to make it available or upload a list of up to 50 sites.</br>
      - **No SharePoint libraries** if you don't want to make it available to any sites (you can change this after setup).

   > [!div class="mx-imgBorder"]
   > ![Configure document processing site options.](../media/content-understanding/admin-configforms.png)

   > [!Note]
   > Removing a site after it has been included does not affect existing models applied to the libraries in that site or the ability to apply unstructured document processing models to a library. 
    
    If you have multiple Power Platform environments configured, you can choose which one you want to use with for document processing. (This option will not appear if you only have one environment.)

    ![Configure document processing Power Platform options.](../media/content-understanding/setup-power-platform-env.png)

    For **Power Platform environment**, you can select:
    - **Use the default environment** to use your default Power Platform environment.
    - **Use a custom environment** to use a custom environment. Choose the environment that you want to use from the list. ([See the requirements for a custom environment](/microsoft-365/contentunderstanding/set-up-content-understanding#requirements)).

    Click **Next**.

5. On the **Create Content Center** page, you can create a SharePoint content center site where your users can create and manage unstructured document processing models. If you previously created a content center from the SharePoint admin center, that information will display here and you can just select **Next**.

    1. For **Site name**, type the name you want to give your content center site.
    
    1. The **Site address** will show the URL for your site, based on what you selected for the site name. If you want to change it, click **Edit**.

       > [!div class="mx-imgBorder"]
       > ![Create content center.](../media/content-understanding/admin-cu-create-cc.png)</br>

       Select **Next**.

6. On the **Review and finish** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Activate**.

7. On the confirmation page, click **Done**.

8. You'll be returned to your **Automate content understanding** page. From this page, you can select **Manage** to make any changes to your configuration settings. 

## Assign licenses

Once you have configured Syntex, you must assign licenses for the users who will be using any Syntex features.

To assign licenses:

1. In the Microsoft 365 admin center, under **Users**, select <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.

2. Select the users that you want to license, and choose **Manage product licenses**.

3. Choose **Apps** from the drop-down menu.

4. Select **Show apps for  Syntex**. Under **Apps**, make sure **Common Data Service for Syntex**, **Syntex**, and **Syntex - SPO type** are all selected.

    > [!div class="mx-imgBorder"]
    > ![Syntex licenses in the Microsoft 365 admin center.](../media/content-understanding/sharepoint-syntex-licenses.png)

5. Click **Save changes**.

## See also

[Overview of the document processing model in AI Builder](/ai-builder/form-processing-model-overview)

[Create and manage environments in the Power Platform admin center](/power-platform/admin/create-environment)
