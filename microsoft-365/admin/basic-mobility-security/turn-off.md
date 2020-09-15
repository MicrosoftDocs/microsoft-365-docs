---
title: "Turn off Basic Mobility and Security"   
f1.keywords: NOCSH                
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
- Adm_TOC
ms.custom: AdminSurgePortfolio
description: "Remove groups or policies to turn off Basic Mobility and Security."  
---

# Turn off Basic Mobility and Security

To effectively turn off Basic Mobility and Security, you remove groups of people defined by security groups from the device management policies, or remove the policies themselves.

- Remove groups of users by removing user security groups from the device policies you've created.
    
- Disable Basic Mobility and Security for everyone by removing all Basic Mobility and Security device policies.
    
These options remove Basic Mobility and Security enforcement for devices in your organization. Unfortunately, you can't simply "unprovision" Basic Mobility and Security after you've set it up. 

>[!IMPORTANT]
>Be aware of the impact on users' devices when you remove user security groups from policies or remove the policies themselves. For example, email profiles and cached emails might be removed, depending on the device. For more info, see  [What happens when you delete a policy or remove a user from the policy?](https://support.microsoft.com/office/create-device-security-policies-in-basic-mobility-and-security-d310f556-8bfb-497b-9bd7-fe3c36ea2fd6#bkmk_changeimpact)

## Remove user security groups from Basic Mobility and Security device policies

1. In your browser type: [https://protection.office.com/devicev2](https://protection.office.com/devicev2).

2. Select a device policy, and select **Edit policy**. 

3. On the  **Deployment**  page, select **Remove**.
    
4. Under  **Groups**, select a security group.

5. Select  **Remove**, and select **Save**.
    

## Remove Basic Mobility and Security device policies

1.  In your browser type: [https://protection.office.com/devicev2](https://protection.office.com/devicev2). 

2.  Select a device policy, and then select  **Delete policy**.
    
3.  In the Warning dialog box, select **Yes**.

>[!NOTE] 
>For more steps to unblock devices if your organization devices are still in a blocked state,  see the blog post [Removing Access Control from Mobile Device Management for Office 365](https://techcommunity.microsoft.com/t5/Intune-Customer-Success/Removing-Access-Control-from-Mobile-Device-Management-for-Office/ba-p/279934).
