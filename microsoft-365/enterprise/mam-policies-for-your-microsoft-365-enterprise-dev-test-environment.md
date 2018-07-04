---
title: "MAM policies for your Microsoft 365 Enterprise dev/test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/27/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to add Intune mobile application management (MAM) policies to your Microsoft 365 dev/test environment.
---

# MAM policies for your Microsoft 365 Enterprise dev/test environment

With the instructions in this article, you add Intune mobile application management (MAM) policies to your Microsoft 365 dev/test environment.

![Test Lab Guides in the Microsoft Cloud](\media\m365-enterprise-test-lab-guides\cloud-tlg-icon.png)
  
## Phase 1: Build out your Microsoft 365 dev/test environment

Follow the instructions in the [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
## Phase 2: Create and deploy MAM policies for iOS and Android devices

In this phase, you create and deploy two different MAM policies: one for iOS devices and one for Android devices.
  
1. Go to the Office 365 portal at ([https://portal.office.com](https://portal.office.com)) and sign in to your Office 365 trial subscription with your global administrator account.
    
2. On a new tab of your browser, open the Azure portal ([https://azure.portal.com](https://azure.portal.com)) and sign in using your Office 365 global administrator account.
    
3. On the Azure portal tab in Internet Explorer, in the navigation pane, click **All services**, type **Intune**, and then click **Intune**.
    
4. In the left navigation pane, click **Groups**.
    
5. On the **Groups-All groups** blade, click **+ New Group**.
    
6. On the **Group** blade, select **Office 365** for **Group type?**, type **Managed iOS device users** in **Name**, select **Assigned** in **Membership type**,  and then click **Create**. 
    
7. Close the **Group** blade.
    
8. On the **Groups-All groups** blade, click **Add**.
    
9. On the **Group** blade, select **Office 365** for **Group type?**, type **Managed Android device user** in **Name**, select **Assigned** in **Membership type**,  and then click **Create**.
    
10. Close the **Groups-All groups** blade.
    
11. On the **Intune** blade, in the **Quick tasks** list, click **Create a compliance policy**.
    
12. On the **Compliance Policy Profiles** blade, click **Create Policy**.
    
13. On the **Create Policy** blade, in **Name**, type **iOS**. In **Platform**, select **iOS**, click **OK** on the **iOS compliance policy** blade, and then click **Create**.
    
14. On the **Compliance Policy Profiles** blade, click **Create Policy**.
    
15. On the **Create Policy** blade, in **Name**, type **Android**. In **Platform**, select **Android**, click **OK** on the **Android compliance policy** blade, and then click **Create**.
    
16. On the **Compliance Policy Profiles** blade, click the **Android** policy name.
    
17. In the left navigation of the **Android - Properties** blade, click **Assignments**, and then click **Select groups**.
    
18. On the **Select groups** blade, click the **Managed Android device users** group, and then click **Select**.
    
19. Click **Save**, and then close the **Android - Assignments** blade.
    
20. On the **Compliance Policy Profiles** blade, click the **iOS** policy name.
    
21. In the left navigation of the **iOS - Properties** blade, click **Assignments**, and then click **Select groups**.
    
22. On the **Select groups** blade, click the **Managed iOS device users** group, and then click **Select**.
    
23. Click **Save**, and then close the **iOS - Assignments** blade.
    
24. Close the **Compliance Policy Profiles** blade.
    
25. On the **Intune** blade, click **Manage apps** in the left navigation.
    
26. On the **Mobile Apps** blade, click **Apps**.
    
27. In the list of apps, click **PowerPoint**, 
    
28. On the **PowerPoint Overview** blade, click **Assignments > Select groups > Managed iOS devices > Select**. In **Type**, select **Available**, and then click **Save**.
    
29. Repeat step 28 for the following apps:
    
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
    
30. Close the **Mobile Apps - Apps** blade.
    
31. On the **Mobile Apps** blade, click **App Protection Policies**.
    
32. On the **App Protection Policies** blade, click **Add a policy**.
    
33. On the **Add a policy** blade, type **iOS**, and then click **Select required apps**.
    
34. On the **Apps** blade, click **PowerPoint**, **Microsoft Dynamics CRM on iPhone**, **Excel**, **Microsoft Dynamics CRM on iPhone**, **Word**, **OneNote**, and **Outlook**, and then click **Select**.
    
35. On the **Add a policy** blade, click **Create**.
    
36. On the **App Protection Policies** blade, click **Add a policy**.
    
37. On the **Add a policy** blade, type **Android**, select **Android** in **Platform**, and then click **Select required apps**.
    
38. On the **Apps** blade, click **PowerPoint**, **Dynamics CRM for tablets**, **Excel**, **Word**, **Outlook**, and **Dynamics CRM for phones**, and then click **Select**.
    
39. On the **Add a policy** blade, click **Create**.
    
You now have two MAM policies, one for iOS devices and one for Android devices, and are ready to experiment with testing settings for the selected apps.
  
  
## See Also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md).
  
[Enroll iOS and Android devices in your Microsoft 365 Enterprise dev/test environment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md)
  
[Enterprise Mobility + Security (EMS)](https://www.microsoft.com/cloud-platform/enterprise-mobility-security)


