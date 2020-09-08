---
title: Prepare mapped drives for Microsoft Managed Desktop 
description:  Important steps to make sure 
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
---

#  Prepare mapped drives for Microsoft Managed Desktop

Many enterprise environments have legacy requirements for mapped drives to allow their users or teams to share and store files, or for on-premises applications. Microsoft does not recommend the use of mapped drives with the Microsoft Managed Desktop. Instead, we recommend that you modernize your file access solutions as follows:
  
- Migrate mapped drives used by individual users to OneDrive for Business. 
- Migrate mapped drives used by teams to share files to SharePoint Online. 
- Modernize or replace any applications that use on-premises file shares to remove that requirement.
  
Modernizing these services will allow the best user experience with Microsoft Managed Desktop. Microsoft FastTrack Services can assist you in modernizing your environment by using Microsoft Cloud Services. You can check whether you're eligible for FastTrack services at [Eligible Services and Plans](https://docs.microsoft.com/fasttrack/m365-eligible-services-and-plans) and then contact them directly to prepare for Microsoft Managed Desktop. For background about FastTrack OneDrive for Business or SharePoint Online Migration, see [Data Migration](https://docs.microsoft.com/fasttrack/o365-data-migration).

## Mapped drives on Microsoft Managed Desktop
 
If you cannot remove or replace mapped drives for some use cases, you should submit a support request in the Microsoft Managed Desktop admin portal to have them deployed to Microsoft Managed Desktop users.
    
For such a request, you'll have to provide the following details in the support request: 

- All UNC paths to file share locations that will need to be mapped for Microsoft Managed Desktop devices 
- User groups that require access to these file share locations 
- Any specific drive letter that needs to be assigned (if necessary)

For example:

| Drive letter | UNC path | User group |
|--------------|----------|------------|
| X:  | \\\server\share\Marketing | ContosoMarketing |

It's entirely your responsibility to ensure that users and groups have and maintain the right permissions to access file share locations and that the on-premises file services remain accessible. Also, you should remove your requirements for such file shares as soon as possible.

### To have mapped drives deployed in Microsoft Managed Desktop
 
Make sure that mapped drives cannot be avoided and you have carefully reviewed the requirements before submitting any service request. Then follow these steps:

1. Navigate to the [Microsoft Managed Desktop portal](https://aka.ms/mmdportal).  
2. Submit a support request titled “Mapped drives deployment” through the **Support > Support requests** section and provide all the required file share details.  
3. Microsoft Managed Desktop IT Operations will advise, by using support request updates, when the request has been completed. Initially this configuration will only be deployed to devices in the Test deployment group.  
4. You must test and confirm whether the configuration deployed by the Microsoft Managed Desktop IT Operations works as you expect. Reply using the Discussion tab in the Support request to notify Microsoft Managed Desktop IT Operations once you've completed your testing.  
5. Microsoft Managed Desktop IT Operations team will then deploy the configuration to the other deployment groups. 
