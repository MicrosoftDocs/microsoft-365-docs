---
title: Understand device profiles
description:  The various profiles that admins can assign to devices
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Device profiles

You can think of device profiles as being part of a hierarchy of device configuration options.

:::image type="content" source="../../media/mmd-profile-options-heirarchy.png" alt-text="Device configurations shown as a pyramid. Description follows.":::

| Device configuration options | Description
| ----- | ----- |
| Your configurations | At the top are your own configurations, such as network details or applications. A device can have any number of these configurations, which aren't managed or blocked by Microsoft Managed Desktop. |
| Customizations | The next higher level is additional [customizations](customizing.md). Each device can have one or more (or no) customizations. The customizations can either modify a lower-level layer (Device profiles or the foundational configuration), or be an entirely new request that's layered on top of the standard configuration. |
| Device profiles | Every Microsoft Managed Desktop device must have one, and only one, profile assigned. Admins can select which profile a device is assigned.<br><br>You can assign different pre-set profiles to devices. Each profile is optimized for the needs of specific types of users. Three device profiles are available:<ul><li>Standard</li><li>Sensitive Data</li><li>Power user</li> |
| Foundation | Fundamentally, every Microsoft Managed Desktop device has a foundation that includes:<br><ul><li>Standard security baseline</li><li>Compliance policies</li><li>Windows Update settings</li><li>Groups</li></ul><br>To work with Microsoft Managed Desktop, every device must include all of these elements. These elements can't be changed by admins. You must submit a request to Microsoft Managed Desktop. |

## Device profile details

The following table summarizes the settings and their default values for each setting configured by device profiles. Behind the scenes, these settings are configured with OMA-URIs by using Custom Configuration Profiles in Microsoft Endpoint Manager.

<br>

****

| Feature | Sensitive Data | Power User | Standard |
| ----- | :-----: | :-----: | :-----: |
|**Block External Storage**| Yes | Yes | No |
|**[Cloud Block Level](/windows/client-management/mdm/policy-csp-defender#defender-cloudblocklevel)**| High | High | High |
|**Disable Microsoft Accounts**| Yes | Yes | No |
|**Disable personal OneDrive**| Yes | Yes | No |
|**[Switch to secure desktop for elevation](/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions#localpoliciessecurityoptions-useraccountcontrol-switchtothesecuredesktopwhenpromptingforelevation)**| No | Yes | No |
|**Microsoft Defender for Endpoint Device Tag**| M365Managed-SensitiveData | M365Managed-PowerUser | M365Managed-Standard |
|**Admin on the device?**| No | Yes | No |
|**Autopilot Profile**| MMD Standard | MMD Power User | MMD Standard |
|**AppLocker**| Yes | No | No |
|**Block Public Store**| Yes | Yes | No |
|

Each device profile also involves these items:

- A dynamic membership Azure Active Directory device group.
- A static membership Azure Active Directory device group.
- A Microsoft Endpoint Manager Configuration profile.

> [!IMPORTANT]
> Don't modify the membership of these groups directly. Use the interface as described in [Reassign profiles](../working-with-managed-desktop/change-device-profile.md).

## Limitations

You can request exceptions to the device profiles and their details as you would with any other policy.

Keep in mind that you can only have one of each device profile in your Azure Active Directory organization ("tenant"). For example, you can't request that the Sensitive data device profile disables AppLocker for only some of your users. All devices with the sensitive data device profile must have the same configuration.

Each device can only have one profile. If a given device is used by more than one user, all users on that device will have the same configuration.
