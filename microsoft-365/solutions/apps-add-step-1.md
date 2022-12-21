---
title: "Step 1. Assess app requirements"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 1. Assess app requirements.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 1. Assess app requirements

As an IT admin, before adding apps to Intune and making them available to the members of your organization, you may find it helpful determine a few app requirements for your organization up front. You must determine app requirements such as the platforms and capabilities that your workforce needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that your workforce should use, and who needs them. 

Determine your organization's requirements by asking the questions presented in the below table:

| Questions | Details |
|---|---|
| Does my   organization need to use Mobile Application Management (MAM) or Mobile Device   Management (MDM)? | Intune suports both MAM and MEM.   MAM without device management allows your organization's apps to be managed   by Intune, but doesn't enroll the devices to be managed by Intune. MAM with   device management allows your organization's apps and devices to be managed.  |
| What   platforms do members of my organization use? | Intune supports a number of   device platforms. You should consider supporting all device platforms that   members of your organization use to access corporate data. |
| Which   apps are needed to access company information and data? | Consider including the apps that   involve communication (such as email and meeting apps), productivity apps   (such as Excel, PowerPoint, and Word).  |
| Which   groups of users need specific apps? |  |
| Is there   special configuration needed for each app? |  |
| Does   each app need access protection and data protection? |  |

## MDM verses MAM



## Determine the platforms needed for each app

Intune commonly supports the following platforms:
- Windows
- iOS/iPadOS
- macOS
- Android



> [!NOTE]
> Intune also supports Linux.
 


## Groups of users that need the app
<!--  
The users of apps and devices at your company (your company's workforce) might have several app requirements. 
-->
## Configuration of each app
<!-- 
configuration policies to apply for those groups
-->
## Protection needed for each app
<!-- 
protection policies to apply
Start with level 1

For example, for enrollment types including Android personally-owned work profile, you may want to deploy a web browsing app to make sure users will have a way to open links.
-->