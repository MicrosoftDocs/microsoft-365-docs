---
title: "Document Understanding overview"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 12/5/2019
audience: admin
ms.topic: article
ms.service: 
search.appverid: PJO150
localization_priority: Normal
description: "Get an overview of the Document Understanding feature in Microsoft Broadsight."
---

# Document Understanding overview

The first step is to create your model in the SharePoint document library in which the model will be used.

1. In your SharePoint document library, select **Automate**, select **AI Builder** from the menu, and then click **Create a form processing model**.
2. On the **Create form processing model** screen, type a name for your model in the **Name** field (for example, **Contract Renewal**), and then click **Create**. This will create a home page for this model.

This will create a new content type, and its library view will become the new library default view when the model is published. You can change these settings under **Advanced settings**.

> [!Note]
> If the AI Builder menu option is not available in your document library, the feature was not enabled on this document library. You need to check with your SharePoint admin to verify.



Project for the web is built on the [Microsoft Power Platform](https://powerplatform.microsoft.com/). The Power Platform consists of [PowerApps](https://powerapps.microsoft.com), [Microsoft Flow](https://preview.flow.microsoft.com), [Power BI](https://powerbi.microsoft.com), and the [Common Data Service (CDS)](https://docs.microsoft.com/powerapps/maker/common-data-service/data-platform-intro). Project for the web  data is stored in CDS.  

> [!Note] 
> Note that Project for the web data also includes data from its  Roadmap feature. 

## Data retention

Since Project for the web data is stored in CDS, data retention policies differ from Project Online (whose data is stored in Office 365).  When your Project Online subscription ends, your data is retained for 90 days before it is automatically deleted (in accordance to [Office 365 data retention policies](https://docs.microsoft.com/microsoft-365/compliance/retention-policies)).  However, if you used Project for the web (which is included in Project Plan 3 and Project Plan 5 license), that data is not automatically deleted 90 days after your subscription ends. 

Need to link to more data about Dynamics 365 data retention. 

## Where is my data located

When Project for the web is first used in your Microsoft 365 tenant, a default Dynamics 365 CDS instance is provided to your tenant.  Project for the web data (such as project or roadmaps) is stored in solutions in the default instance.

Admins can find the name and details of their default Dynamics 365 CDS instance in the PowerApps admin center (admin.powerapps.com).  

![CDS Environment](media/PowerAppsEnvironment.png)

### Deleting user data

If you need to delete Project for the web data (for example, you need to delete data for a specific user) an admin can choose to [manually delete](delete-user-data-from-project-for-the-web.md) it.

## Turn off Project for the web

An admin can choose to turn off Project for the web throughout the organization or to specific users:


- [Turn Project for the web off to the entire organization](https://review.docs.microsoft.com/project-for-the-web/turn-project-for-the-web-off?branch=efrene-v2working#turn-off-project-for-the-web-for-your-organization). This is done through the Project Settings page in the Microsoft 365 admin center.
    > [!Note] 
    > Turning off Project for the web to your org does not turn off the Roadmap feature. 

- [Turn Project for the web off to individual users](https://review.docs.microsoft.com/project-for-the-web/turn-project-for-the-web-off?branch=efrene-v2working#turn-off-project-for-the-web-for-specific-users-in-your-organization). This can be done through the Microsoft 365 admin center or through Windows PowerShell. 

    > [!Note] 
    > When you turn off Project for the web to individual users in your tenant, you will also turn off the Roadmap feature for those users.

## Turn off Roadmap 

Although Roadmap is a Project for the web feature, it is possible that some organizations may want to use Roadmap but may want their users to access Project for the web at a later time.

The **Turn Roadmap on for your organization** control on the Project Settings page allows you to turn Roadmap on or off in your organization. </br>
 
![Select user](media/ProjectSettingsRM.png)


## See Also
  
[Turn Roadmap on or off](Turn-roadmap-on-or-off.md)</br>
[Turn Project for the web off](turn-project-for-the-web-off.md)</br>
[Project for web get started guide for admins](project-for-the-web-get-started-guide-for-admins.md)



