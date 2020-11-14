---
title: "Device compliance policies for your Microsoft 365 for enterprise test environment"
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
description: Use this Test Lab Guide to add Intune device compliance policies to your Microsoft 365 for enterprise test environment.
---

# Device compliance policies for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

This article describes how to add an Intune device compliance policy for Windows 10 devices and Microsoft 365 Apps for enterprise to your Microsoft 365 for enterprise test environment.

Adding an Intune device compliance policy involves two phases:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Create a device compliance policy for Windows 10 devices](#phase-2-create-a-device-compliance-policy-for-windows-10-devices)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to configure MAM policies in only a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure MAM policies in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It's provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization.
>  

## Phase 2: Create a device compliance policy for Windows 10 devices

In this phase, create a device compliance policy for Windows 10 devices.
  
1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com) and sign in to your Microsoft 365 test lab subscription with your global administrator account.
1. On a new tab of your browser, open the Azure portal at [https://portal.azure.com](https://portal.azure.com).
1. In the search box of the Azure portal, enter **Intune**, and then select **Intune**.
1. If you see a **You haven't enabled device management yet** message in the **Microsoft Intune** pane, select it. In the **Mobile Device Management authority** pane, select **Intune MDM Authority**, and then select **Choose**.
1. Refresh your browser tab.
1. In the left navigation pane, select **Groups**.
1. In the **Groups-All groups** pane, select **+ New Group**.
1. In the **Group** pane, select **Microsoft 365** or **Security** for **Group type?**, enter **Managed Windows 10 device users** in **Name**, select **Assigned** in **Membership type**,  and then select **Create**.
1. Select **Microsoft Intune**.
1. In the **Microsoft Intune** pane, in the **Quick tasks** list, select **Create a compliance policy**.
1. In the **Compliance Policy Profiles** pane, select **Create Policy**.
1. In the **Create Policy** pane, in **Name**, enter **Windows 10**. In **Platform**, select **Windows 10 and later**, select **OK** in the **Windows 10 compliance policy** pane, and then select **Create**.
1. Select **Compliance Policy Profiles**, and then select the **Windows 10** policy name.
1. In the **Windows 10** pane, select **Assignments**, and then select **Select groups to include**.
1. In the **Select groups to include** pane, select the **Managed Windows 10 device users** group, and then select **Select**.
1. Select **Save**, select **Microsoft Intune-Overview**, and then select **Client apps** in the left navigation.
1. In the **Client Apps** pane, select **Apps**, and then select **Add**.
1. In the **Add app** pane, select **App type**, and then select **Windows 10** under **Microsoft 365 Suite**.
1. In the **Add App** pane, select **App Suite Information**.
1. In the **App Suite Information** pane, enter **Microsoft 365 Apps for enterprise** in both **Suite Name** and **Suite Description**, and then select **OK**.
1. In the **Add App** pane, select **Configure App Suite**, and then select **OK**.
1. In the **Add App** pane, select **App Suite Settings**.
1. For **Update Channel**, select **Semi-Annual Enterprise**, and then select **OK**.
1. In the **Add app** pane, select **Add**.

You now have a device compliance policy for testing the selected apps in the **Windows 10** device compliance policy and for members of the **Managed Windows 10 device users** group. Please note that selecting **Microsoft 365** as the group type creates additional resources.
  
## Next step

Explore additional [mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md).
  
[Enroll iOS and Android devices in your Microsoft 365 for enterprise test environment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md)
  
[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Enterprise Mobility + Security (EMS)](https://www.microsoft.com/cloud-platform/enterprise-mobility-security)
