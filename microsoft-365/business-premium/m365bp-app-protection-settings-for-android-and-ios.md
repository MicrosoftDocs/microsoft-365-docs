---
title: "Set app protection settings for Android or iOS devices"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: o365-administration
ms.localizationpriority: high
ms.date: 07/19/2022
ms.collection: 
ms.custom:
- MiniMaven
- OKR_SMB_M365
search.appverid:
- BCS160
- MET150
description: "Learn how to create, edit, or delete an app management policy, and protect work files on Android or iOS devices."
---

# Set app protection settings for Android or iOS devices

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

This article applies to Microsoft 365 Business Premium.

## Watch: Secure Office apps on iOS

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2197828).

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FLvZ?autoplay=false]

You can set up a user access policy that requires mobile users to enter a PIN or fingerprint to sign in, and also encrypts work files stored on their devices.

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

2. Under **Policies**, choose **Add policy**.

3. In the **Add policy** pane, enter a name under **Policy name**, and choose the policy type that you want under **Policy type**.

4. Turn on **Protect work files when devices are lost or stolen**, and then make sure the following three settings are turned on:
 
    - **Force users to save all work files to OneDrive for Business**
  
    - **Encrypt work files**

5. Turn on **Manage how users access Office files on Mobile devices** and ensure the settings are turned on or set for each item.

6. Under **Files in these apps will be protected**, select the Office apps you want to protect on mobile devices.

7. Under **Who will get these settings?**, all users are selected by default, but you can choose **Change** to select any security groups you've created.

8. To finish creating the policy, choose **Add**.

9. On the **Add policy** page, choose **Close**.

10. On the admin center home page, confirm that your new policy was added by choosing **Policies** and reviewing your policy on the **Policies** page.

## Create an app management policy

1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a>.

2. In the left nav, choose **Devices** \> **Policies** \> **Add**.
  
3. On the **Add policy** pane, enter a unique name for this policy.

4. Under **Policy type**, choose **Application Management for Android** or **Application Management for iOS**, depending on which set of policies you want to create.

5. Expand **Protect work files when devices are lost or stolen** and **Manage how users access Office files on mobile devices**. Configure the settings how you would like. **Manage how users access Office files on mobile devices** is **Off** by default, but we recommend that you turn it **On** and accept the default values. For more information, see [Available settings](#available-settings).

    You can always use the **Restore default settings** link to return to the default setting.

:::image type="content" source="Media/m365bp-add-policy.png" alt-text="Create a policy with application management.":::
  
6. Next decide **Who will get these settings?** If you don't want to use the default **All Users** security group, choose **Change**, choose the security groups that get these settings \> **Select**.

7. Finally, choose **Done** to save the policy, and assign it to devices.

## Edit an app management policy

1. On the **Policies** card, choose **Edit policy**.

2. On the **Edit policy** pane, choose the policy you want to change.

3. Choose **Edit** next to each setting to change the values in the policy. When you change a value, it's automatically saved in the policy.

4. When you're finished, close the **Edit policy** pane.

## Delete an app management policy

1. On the **Policies** page, choose a policy and then **Delete**.

2. On the **Delete policy** pane, choose **Confirm** to delete the policy or policies you chose. 

## Available settings

The following tables give detailed information about settings available to protect work files on devices and the settings that control how users access Office files from their mobile devices.
  
 For more information, see [How do protection features in Microsoft 365 Business Premium map to Intune settings](m365bp-map-protection-features-to-intune-settings.md). 
  
### Settings that protect work files

The following settings are available to protect work files if a user's device is lost or stolen:


|Setting  |Description  |
|:-----|:-----|
|Delete work files from an inactive device after this many days  |If a device isn't used for the number of days that you specify here, any work files stored on the device will be deleted automatically.  |
|Force users to save all work files to OneDrive for Business  |If this setting is **On**, the only available save location for work files is OneDrive for Business.  |
|Encrypt work files  |Keep this setting **On** so that work files are protected by encryption. Even if the device is lost or stolen, no one can read your company data.  |

### Settings that control how users access Office files on mobile devices

The following settings are available to manage how users access Office work files:

|Setting  |Description  |
|:-----|:-----|
|Require a PIN or fingerprint to access Office apps  |If this setting is **On** users must provide another form of authentication, in addition to their username and password, before they can use Office apps on their mobile devices.|
|Reset PIN when login fails this many times  |To prevent an unauthorized user from randomly guessing a PIN, the PIN will reset after the number of wrong entries that you specify.  |
|Require users to sign in again after Office apps have been idle for  |This setting determines how long a user can be idle before they're prompted to sign in again.  |
|Deny access to work files on jailbroken or rooted devices  |Clever users may have a device that is jailbroken or rooted. This means that the user can modify the operating system, which can make the device more subject to malware. These devices are blocked when this setting is **On**.  |
|Don't allow users to copy content from Office apps into personal apps  |We do allow this by default, but if the setting is **On**, the user could copy information in a work file to a personal file. If the setting is **Off**, the user will be unable to copy information from a work account into a personal app or personal account.  |

## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)