---
title: Work with app control
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
audience: ITpro
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Work with app control

Once app control has been deployed in your environment, both you and Microsoft Managed Desktop Operations have ongoing responsibilities. For example, you might want to add a new app in the environment or add (or remove) a trusted signer. To improve security, all apps should be code-signed before you release them to users. An app's publisher details includes information about the signer.


## Add a new app

To add a new app, follow these steps:

1. Add the app to [Microsoft Intune](/mem/intune/apps/apps-win32-app-management).
2. Deploy the app to any device in the Test ring. 
3. Test your app according to your standard business processes. 
4. Check Event Viewer under **Application and Services Logs\Microsoft\Windows\AppLocker**, looking for any **8003** or **8006** events. These events indicate that the app would be blocked. For more information about all App Locker events and their meanings, see [Using Event Viewer with AppLocker](/windows/security/threat-protection/windows-defender-application-control/applocker/using-event-viewer-with-applocker).
5. If you find any of these events, open a signer request with Microsoft Managed Desktop Operations.

## Add (or remove) a trusted signer

When you open a signer request, you'll need to provide some important publisher details first. Then follow these steps:

1. [Gather publisher details](#gather-publisher-details).
2. Open a ticket with Microsoft Managed Desktop Operations to request the signer rule and include following details:  
    - Application name 
    - Application version 
    - Description 
    - Change type ("add" or "remove")  
    - Publisher details (for example: “O=<publisher name>,L=<location>,S=State,C=Country”) 

> [!NOTE]
> To remove trust for an app, follow the same steps, but set **Change type** to *remove*.

Operations will progressively deploy policies to deployment groups following this schedule:


|Deployment group  |Policy type  |Timing  |
|---------|---------|---------|
|Test     |  Audit       |  Day 0       |
|First     | Enforced        | Day 1        |
|Fast     | Enforced        |  Day 2       |
|Broad     | Enforced        |  Day 3       |


You can pause or roll back the deployment at any time during the rollout. To do this, open another service request with Operations.

> [!NOTE]
> If you pause the release of a signer rule, that rule must be either rolled back or completed before another rollout can start.

## Gather publisher details

To access the publisher data for an app, follow these steps:

1. Find a Microsoft Managed Desktop device in the Test ring that has an Audit Mode policy applied. 
2. Attempt to install the app on the device.
3. Open Event Viewer on that device. 
4. In Event Viewer, navigate to **Application and Services Logs\Microsoft\Windows**, and then select **AppLocker**. 
5. Find any **8003** or **8006** event, and then copy information from the event: 
    - Application name 
    - Application version 
    - Description 
    - Publisher details (for example: “O=<publisher name>, L=<location>, S=State, C=Country”)