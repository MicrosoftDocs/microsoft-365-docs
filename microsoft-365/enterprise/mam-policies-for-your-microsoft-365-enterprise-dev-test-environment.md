---
title: "Device compliance policies for your Microsoft 365 Enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/09/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-identity-device-management
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to add Intune device compliance policies to your Microsoft 365 Enterprise test environment.
---

# Device compliance policies for your Microsoft 365 Enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 Enterprise test environments.*

With the instructions in this article, you add an Intune device compliance policy for Windows 10 devices and Microsoft 365 Apps for enterprise to your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](../media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure MAM policies in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure MAM policies in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 
>  

## Phase 2: Create a device compliance policy for Windows 10 devices

In this phase, you create a device compliance policy for Windows 10 devices.
  
1. Go to the Office 365 portal at ([https://portal.office.com](https://portal.office.com)) and sign in to your Office 365 test lab subscription with your global administrator account.
    
2. On a new tab of your browser, open the Azure portal at [https://portal.azure.com](https://portal.azure.com).

3. From the Azure portal tab in your browser, type **Intune** in the search box, and then click **Intune**.
    
4. If you see a **You haven't enabled device management yet** message In the **Microsoft Intune** pane, click it. In the **Mobile Device Management authority** pane, click **Intune MDM Authority**, and then click **Choose**. Refresh your browser tab.
    
5. In the left navigation pane, click **Groups**.
    
6. In the **Groups-All groups** pane, click **+ New Group**.
    
7. In the **Group** pane, select **Office 365** or **Security** for **Group type?**, type **Managed Windows 10 device users** in **Name**, select **Assigned** in **Membership type**,  and then click **Create**. 
    
8. Click **Microsoft Intune**. In the **Microsoft Intune** pane, in the **Quick tasks** list, click **Create a compliance policy**.
    
9. In the **Compliance Policy Profiles** pane, click **Create Policy**.
    
10. In the **Create Policy** pane, in **Name**, type **Windows 10**. In **Platform**, select **Windows 10 and later**, click **OK** In the **Windows 10 compliance policy** pane, and then click **Create**. 
    
11. Click **Compliance Policy Profiles**, and then click the **Windows 10** policy name.
    
12. In the **Windows 10** pane, click **Assignments**, and then click **Select groups to include**.
    
13. In the **Select groups to include** pane, click the **Managed Windows 10 device users** group, and then click **Select**.
    
14. Click **Save**, click **Microsoft Intune-Overview**, and then click **Client apps** in the left navigation.
    
15. In the **Client Apps** pane, click **Apps**, and then click **Add**. 

16. In the **Add app** pane, select **App type**, and then select **Windows 10** under **Office 365 Suite**.

17. In the **Add App** pane, select **App Suite Information**.
 
18. In the **App Suite Information** pane, type **Microsoft 365 Apps for enterprise** in both **Suite Name** and **Suite Description**.
Click OK.

19. In the **Add App** pane, select **Configure App Suite**, and then click **OK**.

20. In the **Add App** pane, select **App Suite Settings**.

21. For **Update Channel**, select **Semi-Annual**, and then click **OK**.

22. In the **Add app** pane, click **Add**.

You now have a device compliance policy for testing the selected apps in the **Windows 10** device compliance policy and for members of the **Managed Windows 10 device users** group. Please note that selecting Office 365 as the group type will create additional resources. 
  
## Next step

Explore additional [mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md).
  
[Enroll iOS and Android devices in your Microsoft 365 Enterprise test environment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md)
  
[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Enterprise Mobility + Security (EMS)](https://www.microsoft.com/cloud-platform/enterprise-mobility-security)
