---
title: "Minors and acquiring add-ins from the Store"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 737e8c86-be63-44d7-bf02-492fa7cd9c3f
description: "Learn about the General Data Protection Regulation (GDPR) regulations that govern the personal data of minors."
---

# Minors and acquiring add-ins from the Store

The General Data Protection Regulation (GDPR) is a European Union regulation that becomes effective May 25, 2018. It gives users rights to and protection of their data. One of the aspects of the GDPR is that minors cannot have their personal data sent to parties that their parent or guardian hasn't approved. The specific age defined as a minor depends on the region where the individual is located.
  
Regions that have statutory regulations about parental consent include the United States, South Korea, the United Kingdom, and the European Union. For those regions, a minor will be blocked (via Azure Active Directory) from getting any new Office add-ins from the Store and running add-ins that were previously acquired. For countries without statutory regulations, there will be no download restrictions.
  
A user is determined to be a minor based on data specified in Azure Active Directory. The organization admin is responsible for declaring the legal age group and the parental consent for that user.
  
If the parent/guardian consents to a minor using a specific add-In, then the organization admin can use centralized deployment to deploy that add-In to all minors who have consent.
  
To be GDPR compliant for minors you need to ensure that one of following builds of Office is deployed in your school/organization.
 
 **For Word, Excel, PowerPoint, and Project**: 

|**Platform** <br/> |**Build number** <br/> |
|:-----|:-----|
|Microsoft 365 Apps for enterprise (Current Channel)  <br/> |9001.2138   <br/> |
|Microsoft 365 Apps for enterprise (Semi-Annual Enterprise Channel)  <br/> |8431.2159  <br/> |
|Office 2016 for Windows  <br/> |16.0.4672.1000  <br/> |
|Office 2013 for Windows  <br/> |15.0.5023.1000  <br/> |
|Office 2016 for Mac  <br/> |16.11.18020200  <br/> |
|Office for the web  <br/> |N/A  <br/> |
   
 **For Outlook**: 
  
|**Platform** <br/> |**Build number** <br/> |
|:-----|:-----|
|Outlook 2016 for Windows (MSI)  <br/> |Build No TBD  <br/> |
|Outlook 2016 for Windows (C2R)  <br/> |16.0.9323.1000  <br/> |
|Office 2016 for Mac  <br/> |16.0.9318.1000  <br/> |
|Outlook mobile for iOS  <br/> |2.75.0  <br/> |
|Outlook mobile for Android  <br/> |2.2.145  <br/> |
|Outlook.com  <br/> |N/A  <br/> |

 **Office 2013 requirements**
  
Word, Excel, and PowerPoint 2013 for Windows will support the same minors checks if Active Directory Authentication Library (ADAL) is enabled. There are two options for compliance, as explained next.
  
- **Enable ADAL**. This article explains how to enable ADAL for Office 2013: [Using Microsoft 365 modern authentication with Office clients](../../enterprise/modern-auth-for-office-2013-and-2016.md).<br/>You also need to set the registry keys to enable ADAL as explained in [Enable Modern Authentication for Office 2013 on Windows devices](../security-and-compliance/enable-modern-authentication.md).<br/>Additionally, you need to install the following April updates for Office 2013:
    
  - [Description of the security update for Office 2013: April 10, 2018](https://support.microsoft.com/help/4018330/description-of-the-security-update-for-office-2013-april-10-2018)
    
  - [April 3, 2018, update for Office 2013 (KB4018333)](https://support.microsoft.com/help/4018333/april-3-2018-update-for-office-2013-kb4018333)
    
- **Don't enable ADAL**. If you're unable to enable ADAL in Office 2013, then our recommendation is to use Group Policy to turn off the Store for the Office clients. Information on how to turn off the app for Office settings is located [here](/previous-versions/office/office-2013-resource-kit/cc178992(v=office.15)).

## Related articles

[Deploy add-ins in the admin center](./manage-deployment-of-add-ins.md)

[Manage add-ins in the admin center](./manage-addins-in-the-admin-center.md)
