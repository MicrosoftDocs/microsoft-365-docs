---
title: "Microsoft 365 Enterprise Business Continuity Management Mitigations"
author: chrfox
ms.author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description: Some sample mitigations for Microsoft 365 service incident scenarios. 
---

# Service Incident Mitigation Scenarios

The scenarios below serve as examples of how to mitigate the impact an M365 service disruption has on your business functions.

## Leveraging Mobile App Access
As mobile use has proliferated, there are new means to stay connected and M365 mobile applications can be a key part of your resiliency strategy. In addition to allowing your users to collaborate flexibly, mobile applications use cellular data for connectivity which offers an alternative means of connecting to the cloud.  
If you decide to allow users to connect to M365 services via their mobile devices, preparation is required. Ensure that users have the apps downloaded and configured, along with any associated identity-authentication solutions. Microsoft Intune is recommended for secure configuration and management of mobile devices connecting to corporate resources.  
Examples of how mobile applications can protect continuity of business communication and collaboration include: 
- When your corporate network connection is disrupted at your worksite, providing no hard wired or wireless connectivity.  
    - Mobile devices can circumvent this issue by accessing the service via Cellular Network. 
    - When a M365 service connection protocol is impacted resulting in reduced or completely disrupted functionality.  
    - For example, if Outlook MAPI connections experience an outage, users accessing their EXO mailboxes via the Outlook Desktop client will be negatively affected. Due to segmentation of the infrastructure that supports connectivity to the service, impact is often isolated to only one protocol. Connecting to your mailbox via Outlook Mobile, or Outlook on the Web, would be potential mitigations in this scenario.  


|Microsoft 365 dependency|potential mitigations|
|---------|---------|
|Incident Management system relies on Exchange Online to engage On-Call Engineers and Incident Managers.|Ensure Incident Management system supports multichannel communications (parallel email, phone call, and SMS notification), and call tree hierarchies (if the primary on-call doesn't engage, the system automatically engages the backup). Also include backup contact methods in every notification, so that backup communication methods are embedded for easy reference. Alternative communication methods, such as Yammer, can be used for emergency collaboration if the incident management service is unavailable.|
|Microsoft Teams is used for storing files accessed via the client.|Teams stores files uploaded to the client within a SharePoint Online document library. Files are still accessible via SharePoint Online. Train users on file locations in SharePoint Online.|
|Microsoft Teams conference calling is relied upon for general communication and incident management triage.|Establish a backup conferencing solution with a 3rd-party provider.|
|VoIP phones are used as a secondary method of communication.|Implement non-VoIP phones capable of PSTN calling, especially for network and service operations centers during incidents. Add employee mobile phone numbers to the company directory for enabling critical personnel to be contacted over the cellular network.|
|OneDrive for Business is relied upon for file storage and user productivity. [Files On-Demand](https://techcommunity.microsoft.com/t5/Microsoft-OneDrive-Blog/OneDrive-Files-On-Demand-For-The-Enterprise/ba-p/117234) is configured to free up space on local user drives.|OneDrive sync supplies group policies allowing admins to require specific content to be synced locally or free up space when desired. To mitigate the risk of document inaccessibility, configure this policy to sync critical documents locally. Train users to manually apply the “always keep on this device” setting for key documents.|
|Communication of business disruptions to customers and suppliers relies on Exchange Online.|Public third-party social networks can be used as an alternative means of mass communication.|




  

