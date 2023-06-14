---
title: "Manage add-ins in the admin center"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 07/06/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 737e8c86-be63-44d7-bf02-492fa7cd9c3f
description: "Learn about using Centralized add-ins to deploy add-ins to users and groups in your organization."
---

# Manage add-ins in the Microsoft 365 admin center

Office Add-ins help you personalize your documents and streamline the way you access information on the web. See [Start using your Office Add-in](https://support.microsoft.com/office/82e665c4-6700-4b56-a3f3-ef5441996862). 

After a Global or Exchange admin deploys add-ins for users in an organization, they can turn add-ins off or on, edit, delete, and manage access to the add-ins.

For more information about installing add-ins from the admin center, see [Deploy add-ins in the admin center](./manage-deployment-of-add-ins.md).
  
## Add-in states

An add-in can be in either the **On** or **Off** state.
  
| State | How the state occurs | Impact |
|:-----|:-----|:-----|
|**Active**  <br/> |Admin uploaded the add-in and assigned it to users or groups.  <br/> |Users and groups assigned to the add-in see it in the relevant clients.  <br/> |
|**Turned off**  <br/> |Admin turned off the add-in.  <br/> |Users and groups assigned to the add-in no longer have access to it.  <br/> If the add-in state is changed to Active, the users and groups will have access to it again.  <br/> |
|**Deleted**  <br/> |Admin deleted the add-in.  <br/> |Users and groups assigned the add-in no longer have access to it.  <br/> |
   
Consider deleting an add-in if no one is using it anymore. For example, turning off an add-in might make sense if an add-in is used only during specific times of the year.

## Delete an add-in

You can also delete an add-in that was deployed.

1. In the admin center, go to the **Settings** > **Integrated apps** page.

2. Select the deployed add-in and then select the **Configuration** tab.

3. In the **Configuration** pane, go to **Advanced Settings** > **Add-ins**.

4. Select the add-in from the list again.

5. Choose **Remove Add-In**. Remove the Add-in button on the bottom right corner.

6. Validate your selections, and choose **Remove**.

## Edit add-in access

Post deployment, admins can also manage user access to add-ins.

1. In the admin center, go to the **Settings** > **Integrated apps** page.

2. Select the deployed add-in.

3. Click on **Edit** under **Who has Access**.

4. Save the changes.

## Prevent add-in downloads by turning off the Office Store across all apps (Except Outlook)

> [!NOTE]
> Outlook add-in installation is managed by a [different process](/exchange/clients-and-mobile-in-exchange-online/add-ins-for-outlook/specify-who-can-install-and-manage-add-ins).

As an organization you may wish to prevent the download of new Office Add-ins from the Office Store. This can be used in conjunction with Centralized Deployment to ensure that only organization-approved add-ins are deployed to users within your organization.
  
**To turn off add-in acquisition**
  
1. In the admin center, go to the **Settings** \> [Org settings](https://go.microsoft.com/fwlink/p/?linkid=2053743) page.

2. Select **User owned apps and services**.
    
3. Clear the option to let users access the Office store.

    This will prevent all users from acquiring the following add-ins from the store.
      
    - Add-ins for Word, Excel, and PowerPoint 2016 from:
        
      - Windows
      - Mac
      - Office
        
        
    - Acquisitions starting within **AppSource**
        
    - Add-ins within Microsoft 365
        
    A user who tries to access the store will see the following message: **Sorry, Microsoft 365 has been configured to prevent individual acquisition of Office Store add-ins.**
  
Support for turning off the Office Store is available in the following versions:
  
- Windows: 16.0.9001 - Currently available.
    
- Mac: 16.10.18011401 - Currently available.
    
- iOS: 2.9.18010804 - Currently available.
    
- The web - Currently available.
    
This does not prevent an administrator from using Centralized Deployment to assign an add-in from the Office Store.

> [!NOTE] 
> Add-ins such as Visio Data Visualizer, Bing Maps, and People Graph will still show up in the ribbon, even if an admin has disabled the Store. To remove these links, administrators must disable the Store through Group Policy Object (GPO).
  
To prevent a user from signing in with a Microsoft account, you can restrict logon to use only the organizational account. For more information, see [Identity, authentication, and authorization in Office 2016](/DeployOffice/security/identity-authentication-and-authorization-in-office).  

> [!NOTE] 
> Preventing users from accessing the office store will also prevent them from [Sideloading Office Add-ins for testing from a network share](/office/dev/add-ins/testing/create-a-network-shared-folder-catalog-for-task-pane-and-content-add-ins).

## More about the end-user experience with add-ins

After you deploy an add-in, your end users can start using it in their Office applications. The add-in appears on all platforms that the add-in supports. See [Start using your Office Add-in](https://support.microsoft.com/office/82e665c4-6700-4b56-a3f3-ef5441996862). 
  
If the add-in supports add-in commands, the commands appear in the ribbon. In the following example, the command **Search Citation** appears for the **Citations** add-in. 

![Microsoft 365 ribbon with Search Citations.](../../media/553b0c0a-65e9-4746-b3b0-8c1b81715a86.png)
  
If the deployed add-in doesn't support add-in commands or if you want to view all deployed add-ins, you can view them via **My Add-ins**. 
  
### In Word 2016, Excel 2016, or PowerPoint 2016

1. Select **Insert \> My Add-ins**. 
    
2. Select the **Admin Managed** tab in the Office Add-ins window. 
    
3. Double-click the add-in you deployed earlier (in this example, **Citations**).

    ![Admin Managed tab of the Office Add-ins page.](../../media/fd36ba81-9882-40f0-9fce-74f991aa97d5.png)
  
### In Outlook

1. On the **Home** ribbon, select **Get Add-ins**.

    ![Store button in Outlook.](../../media/getaddinsicon.png)
  
2. Select **Admin-managed** in the left nav. 

## Related content

[Minors and acquiring add-ins from the Microsoft Store](./minors-and-acquiring-addins-from-the-store.md)
