---
title: "View directory synchronization errors in Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
ms.collection:
- Ent_O365
- M365-identity-device-management
search.appverid:
- MET150
- MOE150
- MED150
- MBS150
- GPA150
ms.assetid: b4fc07a5-97ea-4ca6-9692-108acab74067
description: Learn how to view directory synchronization errors and possible fixes in Microsoft 365 admin center.
---

# View directory synchronization errors in Microsoft 365

You can view directory synchronization errors in the Microsoft 365 admin center. Only the User object errors are displayed. To view errors with PowerShell, see [Identify objects with DirSyncProvisioningErrors](/azure/active-directory/hybrid/how-to-connect-syncservice-duplicate-attribute-resiliency).

## View directory synchronization errors in the Microsoft 365 admin center

To view any errors in the Microsoft 365 admin center:
  
1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com) with a global administrator account. 
    
2. On the **Home** page, you'll see the **User management** card. 
    
    ![The User management card in the Microsoft 365 admin center](../media/060006e9-de61-49d5-8979-e77cda198e71.png)
  
3. On the card, choose **Sync errors** under **Azure AD Connect** to see the errors on the **Directory sync errors** page.   
    
    ![An example of the Directory sync errors page](../media/882094a3-80d3-4aae-b90b-78b27047974c.png)

4. Choose any of the errors to display the details pane with information about the error and tips on how to fix it.

   ![Example of the details of a directory sync error](../media/a6e302d4-6be7-4e3a-b4b5-81c5a2c02952.png)
  
After viewing, see [fixing problems with directory synchronization for Microsoft 365](fix-problems-with-directory-synchronization.md) to correct any identified issues.