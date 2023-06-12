---
title: Manage endpoint security policies in Microsoft Defender for Endpoint
description: 
keywords: 
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: how-to
ms.subservice: mde
search.appverid: met150
ms.date: 06/19/2023
---

# Manage endpoint security policies in Microsoft Defender for Endpoint

[!Include[Prerelease information](../../includes/prerelease.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](/microsoft-365/security/defender-endpoint/defender-endpoint-plan-1)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Use security policies to manage security settings on devices. As a security administrator, you can configure security policy settings in Microsoft 365 Defender. 

You'll find endpoint security policies under **Endpoints > Configuration management > Endpoint security policies**.


::image type="content" source="./images/endpoint-security-policies.png" alt-text="Managing Endpoint security policies in the Microsoft 365 Defender portal":::

Following are brief descriptions of each endpoint security policy type. To learn more about them, including the available profiles for each, follow the links to content dedicated to each policy type:

- Antivirus - Antivirus policies help security admins focus on managing the discrete group of antivirus settings for managed devices. 

- Disk encryption - Endpoint security Disk encryption profiles focus on only the settings that are relevant for a devices built-in encryption method, like FileVault or BitLocker. This focus makes it easy for security admins to manage disk encryption settings without having to navigate a host of unrelated settings.

- Firewall - Use the endpoint security Firewall policy in Intune to configure a devices built-in firewall for devices that run macOS and Windows 10/11.

- Endpoint detection and response - When you integrate Microsoft Defender for Endpoint with Intune, use the endpoint security policies for endpoint detection and response (EDR) to manage the EDR settings and onboard devices to Microsoft Defender for Endpoint.

- Attack surface reduction - When Defender antivirus is in use on your Windows 10/11 devices, use Intune endpoint security policies for Attack surface reduction to manage those settings for your devices.


The following sections apply to all of the endpoint security policies.

## Create an endpoint security policy

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with Security administrator or Global administrator role assigned.

2. Select **Endpoints > Configuration management > Endpoint security policies** and then select **Create new Policy**. 


3. Select a platform from the dropdown list.

4. Select a template, then select **Create policy**.


5. On the **Basics** page, enter a name and description for the profile, then choose **Next**.

6. On the **Settings** page, expand each group of settings, and configure the settings you want to manage with this profile.

   When your done configuring settings, select **Next**.

7. On the **Assignments** page, select the groups that will receive this profile. For more information on assigning profiles, see [Assign user and device profiles](../configuration/device-profile-assign.md).

   Select **Next**.

8. On the **Review + create** page, when you're done, choose **Create**. The new profile is displayed in the list when you select the policy type for the profile you created.


## To edit a policy

1. Select the new policy, and then select **Properties**.
2. Select Settings to expand a list of the configuration settings in the policy. You can’t modify the settings from this view, but you can review how they're configured.
3. To modify the policy, select **Edit** for each category where you want to make a change:
   - Basics
   - Assignments
   - Configuration settings
4. After you’ve made changes, select **Save** to save your edits.  Edits to one category must be saved before you can introduce edits to additional categories.

## Manage conflicts

Many of the device settings that you can manage with Endpoint security policies (security policies) are also available through other policy types in Intune. These other policy types include *device configuration* policy and *security baselines*. Because settings can be managed through several different policy types or by multiple instances of the same policy type, be prepared to identify and resolve policy conflicts for devices that don't adhere to the configurations you expect.

- Security baselines can set a non-default value for a setting to comply with the recommended configuration that baseline addresses.
- Other policy types, including the endpoint security policies, set a value of *Not configured* by default. These other policy types require you to explicitly configure settings in the policy.

Regardless of the policy method, managing the same setting on the same device through multiple policy types, or through multiple instances of the same policy type can result in conflicts that should be avoided.

The information at the following links can help you identify and resolve conflicts:

- [Troubleshoot policies and profiles in Intune](/troubleshoot/mem/intune/troubleshoot-policies-in-microsoft-intune)
- [Monitor your security baselines](../protect/security-baselines-monitor.md#troubleshoot-using-per-setting-status)
