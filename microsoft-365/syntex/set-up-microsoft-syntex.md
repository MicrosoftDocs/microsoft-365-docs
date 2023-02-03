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

## To set up Syntex

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>, and then view the **Files and content** section.

1. In the **Files and content** section, select **Use content AI with Microsoft Syntex**.

1. On the **Use content AI with Microsoft Syntex** page, select **Set up Microsoft Syntex** to walk through the setup process. <br/>

1. On the **Configure AI Builder model creation** page, you can choose if you want to let end users create and train models that use AI Builder and apply them to document libraries. A menu option will be available in the document library ribbon in SharePoint document libraries in which it is enabled.
 
     For **Which SharePoint sites should show the option to create structured and freeform document processing models**, you can select:</br>
      - **All SharePoint sites** to make it available to all SharePoint libraries in your organization.</br>
      - **Libraries in selected SharePoint sites**, and then select the sites in which you want to make it available or upload a list of up to 50 sites.</br>
      - **No SharePoint libraries** if you don't want to make it available to any sites (you can change this after setup).

   > [!Note]
   > Removing a site after it has been included does not affect existing models applied to the libraries in that site or the ability to apply unstructured document processing models to a library. 

    If you want to enable model creation in all content center sites, select the **Enable AI Builder model creation in all content center sites** check box under **Libraries in selected SharePoint sites**.

    If you have multiple Power Platform environments configured, you can choose which one you want to use with for document processing. (This option will not appear if you only have one environment.)

    For **Power Platform environment**, you can select:
    - **Use the default environment** to use your default Power Platform environment.
    - **Use a custom environment** to use a custom environment. Choose the environment that you want to use from the list. ([See the requirements for a custom environment](/microsoft-365/contentunderstanding/set-up-content-understanding#requirements).)

    Select **Next**.

1. On the **Create a content center** page, you can create a SharePoint content center site where your users can create and manage unstructured document processing models. If you previously created a content center from the SharePoint admin center, that information will display here and you can just select **Next**.

    1. For **Content center name**, type the name you want to give your content center site.
    
    1. The **Site address** will show the URL for your site, based on what you selected for the site name. If you want to change it, select **Edit**.

       Select **Next**.

1. On the **Review and finish** page, you can look at your selected setting and choose to make changes. If you are satisfied with your selections, select **Activate**.

1. On the confirmation page, select **Done**.

1. You'll be returned to your **Use content AI with Microsoft Syntex** page. From this page, you can select **Manage Microsoft Syntex** to make any changes to your configuration settings. 

If you plan to use the pay-as-you-go preview, see [Configure Microsoft Syntex for Azure pay-as-you-go billing](syntex-azure-billing.md).

