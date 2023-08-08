---
title: "Step 2. Configure Microsoft Outlook"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 2. Configure Microsoft Outlook.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 2. Configure Microsoft Outlook

## Configure Outlook for iOS/iPadOS on managed devices

### Configuration settings

- Select new config policy
- Select for managed devices
- Select Outlook for iOS
- Add basic info
- On Settings pane select 'Use configuration designer' in 'Configuration settings' section.
- See Outlook settings

### S/MIME settings

- Select new config policy
- Select for managed devices
- Select Outlook for iOS
- Add basic info
- On Settings pane view 'Outlook S/MIME settings' in the 'S/MIME' section.
- See Outlook settings


Secure Multipurpose Internet Mail Extensions (S/MIME) is a specification that allows users to send and receive digitally signed and encrypted emails. You can create a configuration policy for iOS/iPadOS devices or Android devices.

You can enable Outlook S/MIME settings to always sign and/or always encrypt on iOS and Android devices when using the managed apps option. You can find this setting in [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) when using managed apps by selecting **Apps** > **App configuration policies**.  In addition, you can add an LDAP (Lightweight Directory Access Protocol) URL for Outlook S/MIME on iOS and Android devices for both managed apps and managed devices. For related information, see [App configuration policies for Microsoft Intune](../apps/app-configuration-policies-overview.md).


## Configure the Outlook for iOS as managed app

#### General configuration settings
#### Microsoft Tunnel for Mobile Application Management settings
#### Outlook configuration settings
#### S/MIME


## Configure Outlook for Android on managed devices

Choose 'Android Enterprise' as the platform
Choose a profile type:
- **All Profile Types**: If a new profile is created and **All Profile Types** is selected for device enrollment type, you will not be able to associate a certificate profile with the app config policy. This option supports username and password authentication. If you use certificate-based authentication, don't use this option.
- **Fully Managed, Dedicated, and Corporate-Owned Work Profile Only**: If a new profile is created and **Fully Managed, Dedicated, and Corporate-Owned Work Profile Only** is selected, **Fully Managed, Dedicated, and Corporate-Owned Work Profile** certificate policies created under **Device** > **Configuration profiles** can be utilized. This option supports certificate-based authentication, and username and password authentication. **Fully Managed** relates to Android Enterprise fully managed devices (COBO). **Dedicated** relates to Android Enterprise dedicated devices (COSU). **Corporate-Owned Work Profile** relates to Android Enterprise corporate-owned work profile (COPE).
- **Personally-Owned Work Profile Only**: If a new profile is created and **Personally-Owned Work Profile Only** is selected, Work Profile certificate policies created under **Device** > **Configuration profiles** can be utilized. This option supports certificate-based authentication, and username and password authentication.

### Permissions
### Configuration settings
### S/MIME settings

## Configure the Outlook for Android as managed app

#### General configuration settings
#### Microsoft Tunnel for Mobile Application Management settings
#### Outlook configuration settings
#### S/MIME




## Next step
<!--
[![Step 3 - Configure Microsoft Office](../media/configure-managed-apps/configure-managed-apps-05.png)](apps-config-step-3.md)
-->
Continue with [Step 3](apps-config-step-3.md) to configure Microsoft Office in Microsoft Intune.
