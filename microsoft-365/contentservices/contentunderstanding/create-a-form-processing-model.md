---
title: "Create a Form Processing model (Preview)"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 7/20/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: PJO150
localization_priority: Normal
description: "Create a Form Processing model in Project Cortex."
---

# Create a Form Processing model (Preview)
> [!Note] The content in this article is for Project Cortex Private Preview. [Find out more about Project Cortex]().

Project Cortex users can create Form Processing models 

Using AI Builder - a feature in Micrsoft PowerApps - Project Cortex users can create a form processing model directly from a SharePoint document library. 


To create a Form Processing model:

1. In your document library, select the **Automate** menu, select **AI Builder**, and then select **Create a Form Processing model**.
2. In the **New form processing model** pane, in the  **Name** field, type a name for your model (for example, *Purchase Orders*).
3. Select **Create**.
4. Your browser will open a new PowerApps AI Builder forms processing model page.  
5. Click **Add documents** to begin adding example documents that are analyzed to determine what named value pairs can be extracted. You can choose either **Upload from local storage**, **SharePoint**, or **Azure Blob storage**. You will need to use at least five files for training.
6. After adding your files, they will analyzed for any information that is common is all files.  After they have been analyzed, in the **Select the form fields you want to save** page, click the file to see the fields that were detected.
7. The next page will display one of your sample files and will highlight all common fields that were automatically detected by the system. Select the fields you want to save, and select the checkbox to confirm your selection. For example, in the Purchase Order model, you can choose to select the *Date*, *PO*, and *Total* fields.  Note that you can also choose to rename a field if needed. Click **Done** after you have selected the fields you want to save.
> [!Note]
> Efren - Need to add information about adding undetected fields.
8. On the **Model Summary** page, the saved fields will show in the **Selected fields** section. Select **Train** to begin training on your example files. When you see the notification that training has completed, select **Go to details page**. If you are satisfied with the results of your model, select **Publish** to make it available for use.
9. 







## Key Project apps and services

The key Project apps and services described in this article are available in the following Project Plans.

|**Plan**|**Project Plan 1**|**Project Plan 3**|**Project Plan 5**|
|:-----|:-----|:-----|:----|
|Project Online Desktop Client<br/> |  No<br/> |Yes | Yes|
|Project Online <br/> |No  <br/> |Yes| Yes|
|Project or the web  <br/> |Yes  <br/> |Yes  |Yes|
|Roadmap <br/>| No | Yes|Yes |


> [!Note] 
> In Project Plan 1, you can view roadmaps in read-only mode, but you cannot create them. 

For more details on Project Plans, see the [Microsoft Project Service Description](https://docs.microsoft.com/office365/servicedescriptions/project-online-service-description/project-online-service-description).

### Project Online Desktop Client

Use the Project Online Desktop Client to create offline standalone project plans (.MPP file format). You can also use it to connect to a Project Online site leverage it's enterprise level capabilities (resources, ) enterprise resources and to publish and share your projects with other users. 

### Project Online

Project Online data is saved to Office 365 to the SharePoint content database. 

### Project for the web
XXX

### Project Roadmap
XXX


## Where is my data saved to?

### Common Data Service

### Office 365


## Reporting
XXXX

## Project Home






## Where is my data located

You can look for the location of where your Project for the web and Project Online data is stored by seeing [Explore where Office 365 stores your customer data](https://products.office.com/where-is-your-data-located?rtc=1). 

### Project for the web and the Common Data Service

When Project for the web is first used in your Microsoft 365 tenant, a default CDS instance is provided to your tenant.  Project for the web data (such as projects or roadmaps) is stored in solutions in the default instance.

Admins can find the name and details of their default CDS instance in the PowerApps admin center (admin.powerapps.com).  



### Deleting user data

If you need to delete Project for the web data (for example, you need to delete data for a specific user) an admin can choose to [manually delete](delete-user-data-from-project-for-the-web.md) it.

Similarly, an admin can also [manually delete Project Online data](https://docs.microsoft.com/projectonline/delete-user-data-from-project-online) (for example, user data or user identifying data) if needed.

## Turn off Project for the web

An admin can choose to [turn off Project for the web to specific users in their organization](https://review.docs.microsoft.com/project-for-the-web/turn-project-for-the-web-off?branch=efrene-v2working#turn-off-project-for-the-web-for-specific-users-in-your-organization). This can be done through the Microsoft 365 admin center or through Windows PowerShell. 

 > [!Note] 
 > When you turn off Project for the web to individual users in your tenant, you will also turn off the Roadmap feature for those users.

## Turn off Roadmap 

Although Roadmap is a Project for the web feature, it is possible that some organizations may want to use Roadmap, but may want their users to access Project for the web at a later time.

The **Turn Roadmap on for your organization** control on the Project Settings page allows you to [turn Roadmap on or off in your organization](https://docs.microsoft.com/project-for-the-web/turn-roadmap-on-or-off). </br>
 

## Turn off Project Online

An admin may want certain users to have access to Project for the web and the Roadmap feature, and not Project Online. To do this, an admin would need to [turn off the Project Online service for the user](https://docs.microsoft.com/project-for-the-web/turn-project-for-the-web-off#turn-off-project-online) through their assigned Project Plan 3 or Project Plan 5 license.

## See Also
  
[Turn Project for the web off](turn-project-for-the-web-off.md)</br>
[Project for web get started guide for admins](project-for-the-web-get-started-guide-for-admins.md)



