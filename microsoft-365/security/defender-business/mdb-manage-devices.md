---
title: Manage devices in Microsoft Defender for business
description: Learn how to manage devices in Microsoft Defender for business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.date: 07/14/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Manage devices in Microsoft Defender for business

In Microsoft Defender for business, you can manage devices as follows:

- [View a list of onboarded devices](#view-the-list-of-onboarded-devices) to see their risk level, exposure level, and health state
- Take action on a device that has threat detections
- Add or remove devices from a policy
- Offboard a device

> [!NOTE]
> The procedures in this article assume that you are using the Microsoft 365 Defender portal for Defender for business. For more information, see [Why we recommend using the Microsoft 365 Defender portal to manage your security solution](mdb-choose-portal.md#why-we-recommend-using-the-microsoft-365-defender-portal-to-manage-your-security-solution).

## View the list of onboarded devices

:::image type="content" source="../../media/defender-business/mdb-deviceinventory.png" alt-text="Screenshot of device inventory":::

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device inventory**.

3. Select a device to open its flyout panel, where you can learn more about its status and take action. 


## Take action on a device that has threat detections

:::image type="content" source="../../media/defender-business/mdb-selected-device.png" alt-text="Screenshot of a selected device with details and actions available":::

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Device inventory**. 

2. Select a device to open its flyout panel, and review the information that is displayed.

3. Select the ellipsis (**...**) to open the actions menu. 

4. Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**. 

## View or edit your device policies

See [View or edit device policies in Microsoft Defender for business](mdb-view-edit-device-policies.md).

## Add or remove devices from a group

Policies are applied to devices through device groups. You can edit a policy to include or exclude specific devices.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device configuration**. 

3. Take one of the following actions:

   1. Select an existing policy, and then choose **Edit**.
   2. Choose **+ Add** to create a new policy.

4. On the **General information** step, review the information, edit if necessary, and then choose **Next**.

5. Choose **+ Create new group**. 

6. Specify a name and description for the device group, and then choose **Next**.

7. Select the devices to include in the group, and then choose **Create group**.

8. On the **Device groups** step, review the list of device groups for the policy. If needed, remove a group from the list. Then choose **Next**.

9. On the **Configuration settings** page, review and edit settings as needed, and then choose **Next**. For more information about these settings, see [Configuration settings](mdb-configuration-settings.md#configuration-settings-in-microsoft-defender-for-business).

10. On the **Review your policy** step, review all the settings, make any needed edits, and then choose **Create policy** or **Update policy**.

## Offboard a device

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select the Windows 10 operating system.

5. In the **Offboard a device** section, in the **Deployment method** list, select **Local Script**, and then choose **Download package**.

6. Save the zipped folder to a location, such as a removable drive.

7. On each device, follow these steps: 

   1. Copy the configuration package to the device.
   2. Extract its contents to a location you can find easily (such as the Desktop or to a `C:\Temp folder`). Notice that the folder contains a file called `WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.zip` (where `YYYY-MM-DD` refers to the expiry date of the package.
   3. Select the Start menu, and then type `cmd` to find the Command Prompt app. Then run Command Prompt as an administrator.
   4. In the Command Prompt window, type the location of the script file that you saved in step 7b. For example, if you saved it to the Desktop, you’d type `%userprofile%\Desktop\WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.cmd`.
   5. Press the Enter key, or select **OK**.

## Next steps

[Respond to and mitigate threats in Microsoft Defender for business](mdb-respond-mitigate-threats.md)