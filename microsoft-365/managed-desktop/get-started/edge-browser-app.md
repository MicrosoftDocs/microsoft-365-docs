---
title: Microsoft Edge
description:  Explains how the Microsoft Edge browser is deployed and updated
keywords: browser, Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
manager: dougeby
audience: ITpro
ms.topic: article
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
---


# Microsoft Edge

[Microsoft Edge](https://www.microsoft.com/edge) provides world-class performance and value with:

- More privacy and protection from external threats.
- More productivity quick access to Office apps, files, sites, and built-in Microsoft Search.
- Seamless experience by syncing across your devices with cross-platform support and profiles.

> [!IMPORTANT]
> The Internet Explorer 11 desktop application will be retired and go out of support on June 15, 2022 (for a list of what's in scope, see the [FAQ](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/internet-explorer-11-desktop-app-retirement-faq/ba-p/2366549). The same IE11 apps and sites you use today can open in Microsoft Edge with Internet Explorer mode. [Learn more here](https://blogs.windows.com/windowsexperience/2021/05/19/the-future-of-internet-explorer-on-windows-10-is-in-microsoft-edge/).

## Updates to Microsoft Edge

Microsoft Managed Desktop deploys the [Extended Stable channel](/deployedge/microsoft-edge-channels#extended-stable-channel) of Microsoft Edge, which is automatically updated every eight weeks. Updates on the Extended Stable channel are rolled out [progressively](/deployedge/microsoft-edge-update-progressive-rollout) by the Microsoft Edge product group to ensure the best experience for customers.

The [Beta Channel](/deployedge/microsoft-edge-channels#beta-channel) is deployed to devices in the Test group for representative validation within the organization. This channel is fully supported and automatically updated with new features approximately every four weeks.

> [!IMPORTANT]
> To ensure that Microsoft Edge updates correctly, don't modify the Microsoft Edge [update policies](/deployedge/microsoft-edge-update-policies).

## Settings managed by Microsoft Managed Desktop

Microsoft Managed Desktop has created a default set of policies for Microsoft Edge to secure the browser. The default browser settings are as follows:

### Microsoft Edge extensions

The security baseline for Microsoft Edge on Microsoft Managed Desktop devices sets two policies to disable all Chrome extensions and secure users. To enable and deploy extensions in your environment, see [Settings you manage](#settings-you-manage).

| Setting | Default value | Description |
| ------ | ------ | ------ |
| Extension installation blocklist | All | Microsoft Managed Desktop sets this policy to prevent Chrome extensions from being installed on managed endpoints. There are known risks associated with the Chromium extension model including data loss protection, privacy, and other risks that can compromise devices. |
| Allow user-level native messaging hosts (installed without admin permissions) | Disabled | By disabling this policy, Microsoft Edge will only use native messaging hosts installed on the system level. Native messaging hosts are a part of Chrome extensions, which allow for the browser to interact with other parts of user's endpoint, creating various security concerns. |

### Secure Sockets Layer (TLS/SSL)

| Setting | Default value | Description
| ------ | ------ | ------ |
| Minimum TLS version | Minimum TLS 1.2 supported | If you want to use the less secure TLS 1.1, you can file a request to do so. |
| Allow users to proceed from the SSL warning page | Disabled | We don't recommend enabling this setting since it allows users to visit sites with TSL errors. |

### Microsoft Defender SmartScreen

| Setting | Default value | Description
| ------ | ------ | ------ |
| Configure Windows Defender SmartScreen | Enabled | Enabled by default to help protect users. |
| Windows Defender SmartScreen prompts for sites | Enabled | We don't recommend disabling this setting since that would allow users to ignore warnings and continue to potentially malicious sites. |
| Prevent bypassing of Windows Defender SmartScreen warnings about downloads | Enabled | We don't recommend disabling this setting since that would allow users to ignore warnings and complete unverified downloads. |

### Adobe Flash

| Setting | Default value | Description
| ------ | ------ | ------ |
| Default Adobe Flash setting | Disabled | We don't recommend using Flash because of associated security risks. <br><br> If you still have processes that depend on Flash, set the **[PluginsAllowedForUrls](/deployedge/microsoft-edge-policies#pluginsallowedforurls)** policy to enable Flash for sites that need it. If you can't maintain an allowed list of sites to use Flash, file a change request to change the value to **Click to Play**, which allows users choose when it's appropriate to run Flash. |

### Password manager

| Setting | Default value | Description
| ------ | ------ | ------ |
| Enable saving passwords to the password manager | Disabled | The password manager is disabled by default. If you'd like this feature enabled, file a support request and our engineers can enable the setting in your environment. |

### Internet Explorer Mode in Microsoft Edge

IE mode on Microsoft Edge makes it easy to use all of the sites your organization needs in a single browser. It uses the integrated Chromium engine for sites that are compatible with the Chromium rendering engine. Microsoft Edge uses the Trident MSHTML engine from Internet Explorer 11 (IE11) for sites that aren't or have dependencies on IE functionality. [Learn more](/DeployEdge/edge-ie-mode)

Microsoft Managed Desktop enables Internet Explorer mode for your devices by default.

| Setting | Default value | Description
| ------ | ------ | ------ |
| Internet Explorer mode integration | Internet Explorer mode | By default, devices are set to use Internet Explorer mode, but you can set them to open sites in a standalone Internet Explorer 11 window instead. To change this behavior, file a support request. |
| Add sites to the Enterprise Mode Site List | See description | For sites to open in Internet Explorer mode you must include them on the [Enterprise Site list](/DeployEdge/edge-ie-mode-sitelist). Maintaining and deploying the Enterprise Site list is your responsibility. For details, see [Configure using the Configure Enterprise Mode Site List policy](/DeployEdge/edge-ie-mode-policies#configure-using-the-configure-the-enterprise-mode-site-list-policy). |

### Other settings

| Setting | Default value | Description
| ------ | ------ | ------ |
| Enable site isolation for every site | Enabled | When this policy is enabled, users can't opt out of the default behavior in which each site runs in its own process. |
| Supported authentication schemes | NTLM, Negotiate | Microsoft Managed Desktop doesn't support Basic or Digest Authentication schemes. |
| Automatically import another browser's data and settings at first run | Automatically import all supported datatypes and settings from the default browser. | With this policy applied, the First Run Experience will skip the import section, minimizing user interaction. The browser data from older versions of Microsoft Edge will always be silently migrated at the first run, regardless of this setting. |

## Settings you manage

You can deploy any Microsoft Edge settings not previously described by using the Administrative Templates profile in Microsoft Intune. For details, see [Configure Microsoft Edge policy settings with Microsoft Intune](/deployedge/configure-edge-with-intune). If you want to evaluate a policy that isn't currently included in the Microsoft Edge Administrative Templates in Intune, you can use custom settings for Windows 10 devices in Intune.

| Setting | Description
| ------ | ------ |
| Enable specific Chrome extensions | The Administrative Template offers a setting to deploy particular Chrome extensions with Microsoft Intune. You can find it in **Computer Configuration > Microsoft Edge > Extensions > Allow Specific Extensions to be installed**. |
| Install extensions silently | You can also use the Administrative Template to set Microsoft Edge to install extensions without alerting the user. You can find it in **Computer Configuration > Microsoft Edge > Extensions > Control which extensions are installed silently**. |
| Microsoft Edge update policies | To ensure that Microsoft Edge updates correctly, don't modify the Microsoft Edge [update policies](/deployedge/microsoft-edge-update-policies). |
| Other common enterprise policies | Microsoft Edge offers a great many other policies. The following are some of the more common ones: <ul> <li> [Configure Sites on the Enterprise Site List and IE Mode](/deployedge/edge-ie-mode-sitelist)</li><li> [Configure start-up, home page, and new tab page settings](/deployedge/microsoft-edge-policies#startup-home-page-and-new-tab-page)</li> <li> [Configure Surf game setting](/deployedge/microsoft-edge-policies#allowsurfgame)</li> <li> [Configure proxy server settings](/deployedge/microsoft-edge-policies#proxy-server)</li></ul>
