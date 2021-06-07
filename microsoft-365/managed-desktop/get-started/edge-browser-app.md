---
title: New Microsoft Edge
description:  Explains how the new Edge browser is deployed and updated
keywords: browser, Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
audience: ITpro
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---


# New Microsoft Edge app

The new [Microsoft Edge browser](https://www.microsoft.com/edge) provides world-class performance with more privacy, more productivity, and more value while you browse. Microsoft Managed Desktop is offering a public preview of deployment of the new Edge browser in your environment.

## Initial deployment

To migrate your Microsoft Managed Desktop devices to the new Microsoft Edge browser, file an IT Support Ticket through the Microsoft Managed Desktop Portal. We will deploy the Edge Stable channel to the Test Group when you file the ticket, and then deploy it in each subsequent deployment group every 24 hours. To pause the deployment, file another ticket asking Operations to hold.

The [Beta Channel](/deployedge/microsoft-edge-channels#beta-channel) is also available upon request for representative validation within your organization. Microsoft Managed Desktop will deploy the application as required to the Test and First Groups so that all of those users have the Beta Channel in addition to the Stable Channel. For any other users who need access to the Beta Channel, add them to the **Modern Workplace - Edge Beta Users** group and have them install it from the Company Portal

## Updates to Microsoft Edge

Microsoft Managed Desktop deploys the [Stable channel](/deployedge/microsoft-edge-channels#stable-channel) of Microsoft Edge, which is auto-updated about every six weeks. Updates on the Stable channel are rolled out [progressively](/deployedge/microsoft-edge-update-progressive-rollout) by the Microsoft Edge product group in order to ensure the best experience for customers. 

The [Beta Channel](/deployedge/microsoft-edge-channels#beta-channel) is deployed to devices in both the Test and First groups for representative validation within the organization. This channel is fully supported and is auto-updated with new features approximately every six weeks.

To ensure that Microsoft Edge updates correctly, do not modify the Microsoft Edge [update policies](/deployedge/microsoft-edge-update-policies).



## Settings managed by Microsoft Managed Desktop

Microsoft Managed Desktop has created a default set of policies for Microsoft Edge to secure the browser. The default browser settings are as follows:

### Microsoft Edge extensions

The security baseline for Microsoft Edge on Microsoft Managed Desktop devices sets two policies to disable all Chrome extensions and secure users. To enable and deploy extensions in your environment, see Settings you manage. 

#### Extension installation blocklist
**Default value:** All

Microsoft Managed Desktop sets this policy to prevent Chrome extensions from being installed on managed endpoints. There are known risks associated with the Chromium extension model including data loss protection, privacy, and other risks that can compromise devices. 

#### Allow user-level native messaging hosts (installed without admin permissions)

**Default value:** Disabled

By disabling this policy, Microsoft Edge will only use native messaging hosts installed on the system level. Native messaging hosts are a part of Chrome extensions, which allow for the browser to interact with other parts of user’s endpoint, creating a variety of security concerns.  

### Secure Sockets Layer (TLS/SSL)

#### Minimum TLS version

**Default value:** Minimum TLS 1.2 supported

If you want to use the less secure TLS 1.1, you can file a request to do so.

#### Allows users to proceed from the SSL warning page

**Default value:** Disabled

We don't recommend enabling this setting since it allows users to visit sites with TSL errors.

### Microsoft Defender SmartScreen

#### Configure Windows Defender SmartScreen

**Default value:** Enabled

Enabled by default to help protect users.

#### Windows Defender SmartScreen prompts for sites

**Default value:** Enabled

We do not recommend disabling this setting since that would allow users to ignore warnings and continue to potentially malicious sites.

#### Prevent bypassing of Windows Defender SmartScreen warnings about downloads

**Default value:** Enabled

We do not recommend disabling this setting since that would allow users to ignore warnings and complete unverified downloads.

### Adobe Flash

#### Default Adobe Flash setting

**Default value:** Disabled

We don't recommend using Flash because of associated security risks. If you still have processes that depend on Flash, set the **[PluginsAllowedForUrls](/deployedge/microsoft-edge-policies#pluginsallowedforurls)** policy to enable Flash for sites that need it. If you can't maintain an allowed list of sites to use Flash, file a change request to change the value to **Click to Play**, which allows users choose when it's appropriate to run Flash.

### Password manager

#### Enable saving passwords to the password manager

**Default value:** Disabled

The password manager is disabled by default but can be enabled upon customer request. Please file a support request and our service engineers can enable the setting in your environment. 

### Internet Explorer Mode in Microsoft Edge
IE mode on Microsoft Edge makes it easy to use all of the sites your organization needs in a single browser. It uses the integrated Chromium engine for sites that are compatible with the Chromium rendering engine and it uses the Trident MSHTML engine from Internet Explorer 11 (IE11) for sites that aren't or have dependencies on IE functionality. [Learn more] (https://docs.microsoft.com/DeployEdge/edge-ie-mode) 

Microsoft Managed Desktop enables Internet Explorer mode for your devices by default 

#### Internet Explorer mode integration
**Default Value:** Internet Explorer mode

By default, devices are set to use Internet Explorer mode, but you can set them to open sites in a standalone Internet Explorer 11 window instead. To change this behavior, file a support request.

#### Add sites to the Enterprise Mode Site list
For sites to open in Internet Explorer mode you must include them on the [Enterprise Site list](/DeployEdge/edge-ie-mode-sitelist). Maintaining and deploying the Enterprise Site list is your responsibility. For details, see [Configure using the Configure Enterprise Mode Site List policy](/DeployEdge/edge-ie-mode-policies#configure-using-the-configure-the-enterprise-mode-site-list-policy)

### Other settings

#### Enable site isolation for every site

**Default value:** Enabled

When this policy is enabled, users can't opt out of the default behavior in which each site runs in its own process.

#### Supported authentication schemes

**Default value:** NTLM, Negotiate

Microsoft Managed Desktop doesn't support Basic or Digest Authentication schemes.

#### Automatically import another browser's data and settings at first run

**Default value:** Automatically import all supported datatypes and settings from the default browser 

With this policy applied, the First Run Experience will skip the import section, minimizing user interaction. The browser data from older versions of Microsoft Edge will always be silently migrated at the first run, regardless of this setting. 


## Settings you manage

You can deploy any Microsoft Edge settings not previously described by using the Administrative Templates profile in Microsoft Intune. For details, see [Configure Microsoft Edge policy settings with Microsoft Intune](/deployedge/configure-edge-with-intune). If you want to evaluate a policy that is not currently included in the Microsoft Edge Administrative Templates in Intune, you can use custom settings for Windows 10 devices in Intune.

### Enabling specific Chrome extensions

The Administrative Template offers a setting to deploy particular Chrome extensions with Microsoft Intune. You can find it in **Computer Configuration > Microsoft Edge > Extensions > Allow Specific Extensions to be installed**.

### Install extensions silently

You can also use the Administrative Template to set Microsoft Edge to install extensions without alerting the user. You can find it in **Computer Configuration > Microsoft Edge > Extensions > Control which extensions are installed silently**.

### Microsoft Edge update policies
To ensure that Microsoft Edge updates correctly, do not modify the Microsoft Edge [update policies](/deployedge/microsoft-edge-update-policies).

### Other common enterprise policies

Microsoft Edge offers a great many other policies. These are some of the more common ones:
 
- [Configure Sites on the Enterprise Site List and IE Mode](/deployedge/edge-ie-mode-sitelist)
- [Configure start-up, home page, and new tab page settings](/deployedge/microsoft-edge-policies#startup-home-page-and-new-tab-page)
- [Configure Surf game setting](/deployedge/microsoft-edge-policies#allowsurfgame)
- [Configure proxy server settings](/deployedge/microsoft-edge-policies#proxy-server)
