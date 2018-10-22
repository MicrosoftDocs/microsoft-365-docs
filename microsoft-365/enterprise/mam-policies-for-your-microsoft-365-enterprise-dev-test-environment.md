---
title: "MAM policies for your Microsoft 365 Enterprise test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/16/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to add Intune mobile application management (MAM) policies to your Microsoft 365 Enterprise test environment.
---

# MAM policies for your Microsoft 365 Enterprise test environment

With the instructions in this article, you add Intune mobile application management (MAM) policies to your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> Click [here](https://aka.ms/m365etlgstack) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to configure MAM policies in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure MAM policies in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for a Windows Server AD forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 
>  

## Phase 2: Create and deploy MAM policies for iOS and Android devices

In this phase, you create and deploy two different MAM policies: one for iOS devices and one for Android devices.
  
1. Go to the Office 365 portal at ([https://portal.office.com](https://portal.office.com)) and sign in to your Office 365 trial subscription with your global administrator account.
    
2. On a new tab of your browser, open the Azure portal at [https://portal.azure.com](https://portal.azure.com).

3. On the Azure portal tab in Internet Explorer, in the navigation pane, click **All services**, type **Intune**, and then click **Intune**.
    
4. If you see a **You haven't enabled device management yet** message on the **Microsoft Intune** blade, click it. On the **Mobile Device Management authority** blade, click **Intune MDM Authority**, and then click **Choose**. Refresh your browser tab.
    
5. In the left navigation pane, click **Groups**.
    
6. On the **Groups-All groups** blade, click **+ New Group**.
    
7. On the **Group** blade, select **Office 365** for **Group type?**, type **Managed iOS device users** in **Name**, select **Assigned** in **Membership type**,  and then click **Create**. 
    
8. Close the **Group** blade.
    
9. On the **Groups-All groups** blade, click **Add**.
    
10. On the **Group** blade, select **Office 365** for **Group type?**, type **Managed Android device user** in **Name**, select **Assigned** in **Membership type**,  and then click **Create**.
    
11. Close the **Groups-All groups** blade.
    
12. On the **Intune** blade, in the **Quick tasks** list, click **Create a compliance policy**.
    
13. On the **Compliance Policy Profiles** blade, click **Create Policy**.
    
14. On the **Create Policy** blade, in **Name**, type **iOS**. In **Platform**, select **iOS**, click **OK** on the **iOS compliance policy** blade, and then click **Create**.
    
15. On the **Compliance Policy Profiles** blade, click **Create Policy**.
    
16. On the **Create Policy** blade, in **Name**, type **Android**. In **Platform**, select **Android**, click **OK** on the **Android compliance policy** blade, and then click **Create**.
    
17. On the **Compliance Policy Profiles** blade, click the **Android** policy name.
    
18. In the left navigation of the **Android - Properties** blade, click **Assignments**, and then click **Select groups**.
    
19. On the **Select groups** blade, click the **Managed Android device users** group, and then click **Select**.
    
20. Click **Save**, and then close the **Android - Assignments** blade.
    
21. On the **Compliance Policy Profiles** blade, click the **iOS** policy name.
    
22. In the left navigation of the **iOS - Properties** blade, click **Assignments**, and then click **Select groups**.
    
23. On the **Select groups** blade, click the **Managed iOS device users** group, and then click **Select**.
    
24. Click **Save**, and then close the **iOS - Assignments** blade.
    
25. Close the **Compliance Policy Profiles** blade.
    
26. On the **Intune** blade, click **Manage apps** in the left navigation.
    
27. On the **Mobile Apps** blade, click **Apps**.
    
28. In the list of apps, click **PowerPoint**, 
    
29. On the **PowerPoint Overview** blade, click **Assignments > Select groups > Managed iOS devices > Select**. In **Type**, select **Available**, and then click **Save**.
    
30. Repeat step 29 for the following apps:
    
    - Outlook for Android
    
    - Word for iOS
    
    - Excel for iOS
    
    - Outlook for iOS
    
    - Microsoft Dynamics CRM on iPad for iOS
    
    - Microsoft Dynamics CRM on iPhone for iOS
    
    - Dynamics CRM for Phones for Android
    
    - Dynamics CRM for Tablets for Android
    
    - Excel for Android
    
    - Word for Android
    
    - OneNote for iOS
    
31. Close the **Mobile Apps - Apps** blade.
    
32. On the **Mobile Apps** blade, click **App Protection Policies**.
    
33. On the **App Protection Policies** blade, click **Add a policy**.
    
34. On the **Add a policy** blade, type **iOS**, and then click **Select required apps**.
    
35. On the **Apps** blade, click **PowerPoint**, **Microsoft Dynamics CRM on iPhone**, **Excel**, **Microsoft Dynamics CRM on iPhone**, **Word**, **OneNote**, and **Outlook**, and then click **Select**.
    
36. On the **Add a policy** blade, click **Create**.
    
37. On the **App Protection Policies** blade, click **Add a policy**.
    
38. On the **Add a policy** blade, type **Android**, select **Android** in **Platform**, and then click **Select required apps**.
    
39. On the **Apps** blade, click **PowerPoint**, **Dynamics CRM for tablets**, **Excel**, **Word**, **Outlook**, and **Dynamics CRM for phones**, and then click **Select**.
    
40. On the **Add a policy** blade, click **Create**.
    
You now have two MAM policies, one for iOS devices and one for Android devices, and are ready to experiment with testing settings for the selected apps. 
  
## Next step

Explore additional [mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management) features and capabilities in your test environment.

## See also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md).
  
[Enroll iOS and Android devices in your Microsoft 365 Enterprise test environment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md)
  
[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

[Enterprise Mobility + Security (EMS)](https://www.microsoft.com/cloud-platform/enterprise-mobility-security)
