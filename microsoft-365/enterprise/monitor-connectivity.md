---
title: "Monitor Microsoft 365 connectivity"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
ms.date: 8/4/2020
audience: ITPro
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- BCS160
ms.assetid: 53cdb60c-a6b2-4848-b3ff-e7b75dc3fd1f
description: "In this article, you will learn about the tools and techniques you can use to monitor and maintain Microsoft 365 connectivity."
---

# Monitor Microsoft 365 connectivity

Once you've deployed Microsoft 365, you can maintain Microsoft 365 connectivity using some of the tools and techniques below. You'll want to understand the official [Service Health and Continuity](/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity) guidelines as well as our [Best practices for using Microsoft 365 on a slow network](https://support.office.com/article/fd16c8d2-4799-4c39-8fd7-045f06640166). You'll also want to grab the [Microsoft 365 admin app](https://blogs.office.com/2015/03/13/administer-on-the-go-with-the-updated-office-365-admin-app/) and bookmark our [Microsoft 365 for business - Admin Help](https://support.office.com/article/17d3ff3f-3601-466e-b5a1-482b31cfb791).
  
## Monitoring Microsoft 365 Connectivity

|||
|:-----|:-----|
|**Getting notified of new Microsoft 365 endpoints** <br/> |If you're [Managing Microsoft 365 endpoints](https://support.office.com/article/99cab9d4-ef59-4207-9f2b-3728eb46bf9a), you'll want to receive notifications when we publish new endpoints, you can subscribe to our RSS feed using your favorite RSS reader. Here is how to [subscribe via Outlook](https://go.microsoft.com/fwlink/p/?LinkId=532416) or you can [have the RSS feed updates emailed to you](https://go.microsoft.com/fwlink/p/?LinkId=532417).  <br/> |
|**Use System Center to Monitor Microsoft 365** <br/> |If you're using Microsoft System Center, you can download the [System Center Management Pack for Office 365](https://www.microsoft.com/download/details.aspx?id=43708) to begin monitoring Microsoft 365 today. For more detailed guidance, please see the management pack operations guide. <br/> |
|**Monitoring the health of Azure ExpressRoute** <br/> |If you are connecting to Microsoft 365 using Azure ExpressRoute for Microsoft 365, you'll want to ensure that you're using both the Microsoft 365 Service Health Dashboard as well as the Azure [Reducing troubleshooting time with Azure Resource health](https://azure.microsoft.com/blog/reduce-troubleshooting-time-with-azure-resource-health/) <br/> |
|**Using Azure AD Connect Health with AD FS** <br/> |If you're using AD FS for Single Sign-On with Microsoft 365, you'll want to begin [using Azure AD Connect Health to monitor your AD FS infrastructure](/azure/active-directory/hybrid/how-to-connect-health-adfs).  <br/> |
|**Programmatically monitor Microsoft 365** <br/> |Refer to our guidance on the [Microsoft 365 Management API](/office/office-365-management-api/office-365-management-apis-overview).  <br/> |

Here's a short link you can use to come back: [https://aka.ms/monitorconnectivity365]()
  
## Related topics

[Configure Microsoft 365 Enterprise services and applications](configure-services-and-applications.md)
  
[Get your organization ready for Microsoft 365 Enterprise](get-your-organization-ready-for-office-365.md)
  
[Network planning and performance tuning for Microsoft 365](network-planning-and-performance.md)
  
[Microsoft 365 integration with on-premises environments](microsoft-365-integration.md)
  
[Managing Microsoft 365 endpoints](managing-office-365-endpoints.md)
