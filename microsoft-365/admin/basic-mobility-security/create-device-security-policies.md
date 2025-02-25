---
title: "Create device security policies in Basic Mobility and Security"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection: 
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkEXCHANGE
- basic-mobility-security
description: "Use Basic Mobility and Security to create device policies that protect your organization information."
---

# Create device security policies in Basic Mobility and Security

You can use Basic Mobility and Security to create device policies that help protect your organization information on Microsoft 365 from unauthorized access. You can apply policies to any mobile device in your organization where the user of the device has an applicable Microsoft 365 license and has enrolled the device in Basic Mobility and Security.

## Before you begin

> [!IMPORTANT]
> Before you can create a mobile device policy, you must activate and set up Basic Mobility and Security. For more info, see [Overview of Basic Mobility and Security for Microsoft 365](overview.md).

- Learn about the devices, mobile device apps, and security settings that Basic Mobility and Security supports. See [Capabilities of Basic Mobility and Security](capabilities.md).
- Create security groups that include Microsoft 365 users that you want to deploy policies to and for users that you might want to exclude from being blocked access to Microsoft 365. We recommend that before you deploy a new policy to your organization, you test the policy by deploying it to a small number of users. You can create and use a security group that includes just yourself or a small number Microsoft 365 users that can test the policy for you. To learn more about security groups, see [Create, edit, or delete a security group](../email/create-edit-or-delete-a-security-group.md).
- To create and deploy Basic Mobility and Security policies in Microsoft 365, you need to be a Compliance administrator. For more info, see [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference).
- Before you deploy policies, let your organization know the potential impacts of enrolling a device in Basic Mobility and Security. Depending on how you set up the policies, noncompliant devices can be blocked from accessing Microsoft 365 and data, including installed applications, photos, and personal information on an enrolled device, and data can be deleted.

> [!NOTE]
> Policies and access rules created in Basic Mobility and Security for Microsoft 365 Business Standard override Exchange ActiveSync mobile device mailbox policies and device access rules created in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center</a>. After a device is enrolled in Basic Mobility and Security for Microsoft 365 Business Standard, any Exchange ActiveSync mobile device mailbox policy or device access rule applied to the device is ignored. To learn more about Exchange ActiveSync, see [Exchange ActiveSync in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/exchange-activesync/exchange-activesync).

## Step 1: Create a device policy and deploy to a test group

Before you can start, make sure you have activated and set up Basic Mobility and Security. For instructions, see [Overview of Basic Mobility and Security](overview.md).

1. From your browser, go to <https://compliance.microsoft.com/basicmobilityandsecurity>.

2. On the **Policies** tab, select **Create**.

3. On the **Policy name** page, add and name and a description and select **Next**.

4. On the **Access requirements** page, specify the requirements you want applied to mobile devices in your organization and select **Next**.

5. On the **Configurations** page, select configuration requirements for your organization and select **Next**.

6. On the **Deployment** page, choose a security group to apply this policy to.

7. On the **Review** page, verify your selections and choose **Submit**.

The policy is pushed to the device of each user the policy applies to the next time they sign in to Microsoft 365 using their mobile device. If users haven't had a policy applied to their mobile device before, after you deploy the policy, they get a notification on their device that includes the steps to enroll and activate Basic Mobility and Security. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md). Until they complete enrollment in Basic Mobility and Security hosted by the Intune Service, access to email, OneDrive, and other services is restricted. After they complete enrollment by using the Intune Company Portal app, they can use the services and the policy is applied to their device.

## Step 2: Verify that your policy works

After you’ve created a device policy, check that the policy works as you expect before you deploy it to your organization.

1. From your browser, go to [https://compliance.microsoft.com/basicmobilityandsecurity](https://compliance.microsoft.com/basicmobilityandsecurity).
2. Select **View the list of managed devices**.
3. Check the status of user devices that have the policy applied. You want the **State** of devices to be **Managed.**
4. You can also do a full or selective wipe on a device by clicking on **Factory reset** or **Remove company data** from **Manage** button after selecting a device. For instructions, see [Wipe a mobile device in Basic Mobility and Security](wipe-mobile-device.md).

## Step 3: Deploy a policy to your organization

After you’ve created a device policy and verified that it works as expected, deploy it to your organization.

1. From your browser type: [https://compliance.microsoft.com/basicmobilityandsecurity](https://compliance.microsoft.com/basicmobilityandsecurity).
2. Select the policy you want to deploy, and choose **Edit** next to **Groups applied to.**
3. Search for a group to add and click on **Select**.
4. Select **Close** and **Change setting.**
5. Select **Close** and **Edit policy.**

The policy is pushed to the mobile device of each user the policy applies to the next time they sign in to Microsoft 365 from their mobile device. If users haven't had a policy applied to their mobile device, they get a notification on their device with steps to enroll and activate it for Basic Mobility and Security. After they’ve completed the enrollment, the policy is applied to their device. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md).

## Step 4: Block email access for unsupported devices

To help secure your organization information, you should block app access to Microsoft 365 email for mobile devices that aren't supported by Basic Mobility and Security. For a list of supported devices, see [Supported devices](../../admin/basic-mobility-security/capabilities.md).

**To block app access:**

1. From your browser, type [https://compliance.microsoft.com/basicmobilityandsecurity](https://compliance.microsoft.com/basicmobilityandsecurity).
1. Select **Organization Setting** tab.

3. To block unsupported devices, choose **Access** under **If a device isn't supported by Basic Mobility and Security for Microsoft 365**, and then select **Save**.

   :::image type="content" source="../../media/basic-mobility-security/basic-mobility-access.png" alt-text="Basic Mobility and Security block access option.":::

## Step 5: Choose security groups to be excluded from conditional access checks

If you want to exclude some people from conditional access checks on their mobile devices and you've created one or more security groups for those people, add the security groups here. The people in these groups won't have any policies enforced for their supported mobile devices. This is the recommended option if you no longer want to use Basic Mobility and Security in your organization.

1. From your browser, type [https://compliance.microsoft.com/basicmobilityandsecurity](https://compliance.microsoft.com/basicmobilityandsecurity).

1. Select  **Organization Setting** tab.

      :::image type="content" source="../../media/basic-mobility-security/basic-mobility-microsoft-purview.png" alt-text="Basic Mobility and Security create a policy option.":::

3. Select **Add** to add the security group that has users you want to exclude from having blocked access to Microsoft 365. When a user has been added to this list, they can access Microsoft 365 email when they are using an unsupported device.

4. Select the security group you want to use in the **Select group** panel.

5. Select the name, and then **Add** > **Save**.

1. On the  **Organization Setting** panel, choose **Save**.

      :::image type="content" source="../../media/basic-mobility-security/basic-mobility-groups.png" alt-text="Basic Mobility and Security allow access option.":::

## What is the impact of security policies on different device types?

When you apply a policy to user devices, the impact on each device varies somewhat among device types. See the following table for examples of the impact of policies on different devices.

| Security Policy | Android | Samsung KNOX | iOS | Notes |
|:-----|:-----|:-----|:-----|:-----|
|Require encrypted backup|No|Yes|Yes|iOS encrypted backup required.|
|Block cloud backup|Yes|Yes|Yes|Block Google backup on Android (grayed out), cloud backup on supervised iOS.|
|Block document synchronization|No|No|Yes|iOS: Block documents in the cloud on supervised iOS devices.|
|Block photo synchronization |No|No|Yes|iOS (native): Block Photo Stream.|
|Block screen capture |No|Yes|Yes|Blocked when attempted.|
|Block video conference |No|No|Yes|FaceTime blocked on supervised iOS devices, not on Skype or others.|
|Block sending diagnostic data |No|Yes|Yes|Block sending Google crash report on Android.|
|Block access to app store |No|Yes|Yes|App store icon missing on Android home page, disabled on Windows, and supervised iOS devices.|
|Require password for app store |No|No|Yes|iOS: Password required for iTunes purchases.|
|Block connection to removable storage |No|Yes|N/A|Android: SD card is grayed out in settings, Windows notifies user, apps installed aren't available|
|Block Bluetooth connection |See notes|See notes|Yes|We can't disable BlueTooth as a setting on Android. Instead, we disable all of the transactions that require BlueTooth: Advanced Audio Distribution, Audio/Video Remote Control, hands-free devices, headset, Phone Book Access, and Serial Port. A small toast message appears at the bottom of the page when any of these are used.|

## What happens when you delete a policy or remove a user from the policy?

When you delete a policy or remove a user from a group to which the policy was deployed, the policy settings, Microsoft 365 email profile and cached emails might be removed from the user's device. See the following table to see what is removed for the different device types.

| What's removed | iOS | Android (including Samsung KNOX) |
|:-----|:-----|:-----|
|Managed email profiles<sup>1</sup>|Yes|No|
|Block cloud backup|Yes|No|

<sup>1</sup> If the policy was deployed with the option **Email profile is managed** selected, the managed email profile and cached emails in that profile are deleted from the user device.

The policy is removed from the mobile device for each user the policy applies to the next time their device checks in with Basic Mobility and Security. If you deploy a new policy that applies to these user devices, they are prompted to re-enroll in Basic Mobility and Security.

You can also wipe a device either completely, or selectively wipe organizational information from the device. For more info, see [Wipe a mobile device in Basic Mobility and Security](wipe-mobile-device.md).

## Related content

[Overview of Basic Mobility and Security](overview.md) (article)\
[Capabilities of Basic Mobility and Security](capabilities.md) (article)
