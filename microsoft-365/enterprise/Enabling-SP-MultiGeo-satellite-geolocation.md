---
title: "Enabling SharePoint Multi-Geo in your satellite geo location"
ms.reviewer: adwood
ms.date: 08/10/2020
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
f1.keywords:
- NOCSH
ms.custom: seo-marvel-apr2020
ms.collection: 
- Strat_SP_gtc
- SPO_Content
ms.localizationpriority: medium
description: This article provides information for Global or SharePoint admins about enabling SharePoint Multi-Geo in satellite geo locations.
---

# Enabling SharePoint Multi-Geo in your satellite geo location

This article is for Global or SharePoint administrators who created a Multi-Geo satellite location **before** SharePoint Multi-Geo capabilities became generally available on March 27, 2019, and who didn't enable SharePoint Multi-Geo in their satellite geo locations.

>[!Note]
>If you have added a new geo location **after March 27th, 2019**, you do not need to perform these instructions, as your new geo location will already be enabled for OneDrive and SharePoint Multi-Geo.

These instructions allow you to enable SharePoint in your satellite location, so your Multi-Geo satellite users can take advantage of both OneDrive and SharePoint Multi-Geo capabilities in O365. 

>[!IMPORTANT]
>Please note that this is a one way enablement. Once you set SPO mode, you will not be able to revert your tenant to OneDrive only Multi-Geo mode without an escalation with support. 

## To set a geo location into SPO Mode

To set a geo location into SPO mode, connect to the geo location you want to set in SPO Mode:

1.    Open your SharePoint Online Management Shell 
2.    Connect-SPOService -URL "https://$tenantGeo-admin.sharepoint.com" -Credential $credential
3.    Set-SPOMultiGeoExperience</br></br>
![Set-SPOMultiGeoExperience.](../media/Set-SPO-MultiGeo.jpg)
4.    This operation usually takes about an hour while we perform various publish backs in the service and re-stamp your tenant. After at least 1 hour, perform a Get-SPOMultiGeoExperience. This shows you whether this geo location is in SPO mode.</br></br>
![Image of Set-SPOMultiGeoExperience.](../media/Get-SPO-MultiGeo.jpg)

  
>[!Note]
>Certain caches in the service update every 24 hours, so it is possible that for a period of up to 24 hours, your satellite geo may intermittently behave as if it was still in ODB mode. This does not cause any technical issues. 
 
For additional information regarding SharePoint Multi-Geo, refer to [aka.ms/sharepointmultigeo](multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md)
