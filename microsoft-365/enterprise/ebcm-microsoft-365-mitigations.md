---
title: "Microsoft 365 for enterprise Business Continuity Management Mitigations"
author: chrfox
f1.keywords:
- NOCSH
ms.author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description: Some sample mitigations for Microsoft 365 service incident scenarios. 
---

# Service incident mitigation strategies

Here are some strategies and scenarios that show how to mitigate the impact of a Microsoft 365 service incident on your business process.

## Service incident scenarios and potential mitigations

|Microsoft 365 dependency|potential mitigations|
|---------|---------|
|Incident Management system relies on Exchange Online to engage On-Call Engineers and Incident Managers.|Ensure that your Incident Management system supports multichannel communications, such as parallel email, phone call, and SMS notification, and call tree hierarchies in case the primary on-call doesn't engage, the system automatically engages the backup. Also include backup contact methods in every notification, so that backup communication methods are embedded for easy reference. Alternative communication methods, such as Yammer, can be used for emergency collaboration if the incident management service is unavailable.|
|Microsoft Teams is used for storing files accessed via the client.|Teams stores files uploaded to the client in a SharePoint Online document library. Files are still accessible via SharePoint Online. Train users on file locations in SharePoint Online.|
|Microsoft Teams conference calling is relied upon for general communication and incident management triage.|Establish a backup conferencing solution with a 3rd-party provider.|
|VoIP phones are used as a secondary method of communication.|Implement non-VoIP phones capable of PSTN calling, especially for network and service operations centers during incidents. Add employee mobile phone numbers to the company directory for enabling critical personnel to be contacted over the cellular network.|
|OneDrive for Business is relied upon for file storage and user productivity. [Files On-Demand](https://techcommunity.microsoft.com/t5/Microsoft-OneDrive-Blog/OneDrive-Files-On-Demand-For-The-Enterprise/ba-p/117234) is configured to free up space on local user drives.|OneDrive sync supplies group policies allowing admins to require specific content to be synced locally or free up space when desired. To mitigate the risk of document inaccessibility, configure this policy to sync critical documents locally. Train users to manually apply the “always keep on this device” setting for key documents.|
|Communication of business disruptions to customers and suppliers rely on Exchange Online.|Public third-party social networks can be used as an alternative means of mass communication.
|Hybrid on-premises architecture, such as ADFS or Pass Through Authentication, fails causing disruption to user's ability to authenticate to cloud services.|Configure [Password Hash Sync](https://docs.microsoft.com/azure/active-directory/authentication/concept-resilient-controls#deploy-password-hash-sync-even-if-you-are-federated-or-use-pass-through-authentication), in conjunction with your hybrid authentication services, as a secondary cloud-based authentication mechanism to avoid sign-in disruption during the outage. [Refer to Create a Resilient Access Control Management Strategy with Azure Active Directory](https://docs.microsoft.com/azure/active-directory/authentication/concept-resilient-controls) for further information on building resilient authentication and access control architectures.|  

## Leveraging mobile app access

As mobile use has proliferated, there are new means to stay connected and Microsoft 365 mobile applications can be a key part of your resiliency strategy. Because they connect to cloud services over the cellular provider network, they are not dependent on your organizations network infrastructure.

Let's use Outlook as an example. Users can Connect to their Exchange Online mailboxes over different network protocols (https or MAPI) depending on the email app being used. If there is a service incident that involves one of the protocols, say MAPI for instance which the desktop client uses, then your users can still get to their mailbox through the Outlook Mobile app or Outlook on the Web.
  
If you decide to allow users to connect to Microsoft 365 services via their mobile devices you can use Microsoft Intune to securely configure and manage those devices. Once the user accounts and devices are enrolled in your mobile management solution ensure that the apps have been downloaded and configured.
