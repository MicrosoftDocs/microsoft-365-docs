---
title: "Step 4. Configure Microsoft Edge"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Step 4. Configure Microsoft Edge in Intune.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 4. Configure Microsoft Edge

Microsoft Edge provides AI-powered web browsing capabilities. Using Intune, Microsoft Edge can be added, configured, and assigned to end users at your organization. Once you have added and assigned Microsoft Edge, end users can use Edge to safely view and work with your company resources. Using Intune, you can also assign Microsoft Edge to your end users to support conditional access, app protection, and single sign-on at your organization.

You can add Microsoft Edge to Intune as a store app (Android, iOS/iPadOS), a Built-In app (Android, iOS/iPadOS), a Windows 10 and later app, a macOS app, or a Managed Google Play store app. However, only the Microsoft Edge for the iOS/iPadOS and Android platforms support app configuration policies.

> [!NOTE]
> Configuring Microsoft Edge using Intune applies to the following platforms:
> - iOS/iPadOS 14.0 or later
> - Android 8.0 or later for enrolled devices and Android 9.0 or later for unenrolled devices

When you use Intune's app configuration policies, you create and assign configuration settings separately from adding and assigning the app itself. Therefore, you should consider adding the app to Intune without assigning the app, create and assign an app configuration policy for the app, and then assign the app itself to the device or user.

There are two ways to deliver app configuration using Intune. The first way is to use the mobile device management (MDM) OS channel on enrolled devices for iOS and Android devices. The second way is to use the Mobile Application Management (MAM) channel. For more information, see [Delivery channels for app configuration policies](apps-config-overview.md#delivery-channels-for-app-configuration-policies). For more information about delivery channels, see [Managed App Configuration channel for iOS](https://developer.apple.com/library/content/samplecode/sc2279/Introduction/Intro.html) and [Android in the Enterprise channel for Android](https://developer.android.com/work/managed-configurations).

> [!IMPORTANT]
> When considering configuration setting for Microsoft Edge, also be aware that if you use the MAM channel, you'll want to consider how you protect the app using [app protection policies](/mem/intune/apps/app-protection-policy) in Intune.

## Configuration settings

You, as the admin, can customize the behavior of Microsoft Edge by creating and assigning an app configuration policy for Edge. When you create an app configuration policy for Microsoft Edge in Intune, you commonly set one or more app configuration keys. Each configuration key is specifically named for the app. When you use a configuration key, you add the name of the configuration key, the value type, and the configuration value.

> [!IMPORTANT]
> App configuration keys are case sensitive. Use the proper casing to ensure the configuration takes effect.

### Common settings for Microsoft protected apps

Microsoft Edge for iOS/iPadOS and Android supports the following configuration scenarios:

- Organization allowed accounts mode - Must have enrolled devices.

### General app configuration settings

Microsoft Edge provides several different configuration settings that allow you to customize the behavior of Edge on an end user's device. The following table provides a list of general app configuration settings for Edge.

| Key | Description |
|---|---|
| com.microsoft.intune.mam.managedbrowser.NewTabPage.BrandLogo | You can customize the New Tab   Page in Edge for iOS and Android devices to display your organization's logo   as the page background. You can also upload your organization logo. For more   information, see [New Tab Page experiences](/mem/intune/apps/manage-microsoft-edge#new-tab-page-experiences). |
| com.microsoft.intune.mam.managedbrowser.NewTabPage.BrandColor | You can customize the New Tab   Page in Edge for iOS and Android devices to display your organization's brand   color in the page background. For more information, see [New Tab Page   experiences](/mem/intune/apps/manage-microsoft-edge#new-tab-page-experiences). |
| com.microsoft.intune.mam.managedbrowser.homepage | You can configure a homepage   shortcut for Edge for iOS and Android in the New Tab Page. The homepage   shortcut you configure appears as the first icon beneath the search bar when   the user opens a new tab in Edge for iOS and Android.  For more information, see [Homepage   shortcut](/mem/intune/apps/manage-microsoft-edge#homepage-shortcut). |
| com.microsoft.intune.mam.managedbrowser.managedTopSites | You can configure multiple top   site shortcuts on New Tab Pages in Edge for iOS and Android. For more   information, see [Multiple top site   shortcuts](/mem/intune/apps/manage-microsoft-edge#multiple-top-site-shortcuts). |
| com.microsoft.intune.mam.managedbrowser.NewTabPage.IndustryNews | You can configure the New Tab   Page experience within Edge for iOS and Android to display industry news that   is relevant to your organization. For more information, see   [/mem/intune/apps/manage-microsoft-edge#industry-news](/mem/intune/apps/manage-microsoft-edge#industry-news). |
| com.microsoft.intune.mam.managedbrowser.NewTabPage.CustomURL | You can disable the New Tab Page   experience in Edge for iOS and Android and instead have a web site launch   when the user opens a new tab. For more information, see [Homepage instead of   New Tab Page experience](/mem/intune/apps/manage-microsoft-edge#homepage-instead-of-new-tab-page-experience). |
| com.microsoft.intune.mam.managedbrowser.bookmarks | You can configure bookmarks that   you'd like your users to have available when they're using Edge for iOS and   Android. For more information, see [Managed   bookmarks](/mem/intune/apps/manage-microsoft-edge#managed-bookmarks). |
| com.microsoft.intune.mam.managedbrowser.MyApps | You can have users view My Apps   bookmark within the organization folder inside Edge for iOS and Android. For   more information, see [My Apps   bookmark](/mem/intune/apps/manage-microsoft-edge#my-apps-bookmark). |
| com.microsoft.intune.mam.managedbrowser.PasswordSSO | You can enable Microsoft Entra password   single sign-on (SSO) functionality offered by Microsoft Entra ID to allow   user access management to web applications that don't support identity   federation. For more information, see [Microsoft Entra password single sign-on](/mem/intune/apps/manage-microsoft-edge#azure-ad-password-single-sign-on). |
| com.microsoft.intune.mam.managedbrowser.defaultHTTPS | Microsoft Edge for iOS and   Android devices uses the HTTPS protocol handler when the user doesn't specify   the protocol in the URL. For more information, see [Default protocol   handler](/mem/intune/apps/manage-microsoft-edge#default-protocol-handler). |
| com.microsoft.intune.mam.managedbrowser.disableShareUsageData | You can choose to enable data   collection so that the end user browsing experience in Edge is personalized.   By default, end users are promoted to share usage data. You can choose to   disable the prompt and share usage data. For more information, see [Disable   data sharing for   personalization](/mem/intune/apps/manage-microsoft-edge#disable-data-sharing-for-personalization). |
| com.microsoft.intune.mam.managedbrowser.disabledFeatures | You can disable certain features   in Edge that are enabled by default. For example, you can disable password   prompts, InPrivate browsing, translator, read aloud, drop documents   and messages to devices), and developer tools. For more information, see   [      Disable specific   features](/mem/intune/apps/manage-microsoft-edge#disable-specific-features). |
| com.microsoft.intune.mam.managedbrowser.disableImportPasswords | You can disable the import of   passwords from Password Manager. For more information, see [Disable import   passwords   feature](/mem/intune/apps/manage-microsoft-edge#disable-import-passwords-feature). |
| com.microsoft.intune.mam.managedbrowser.cookieControlsMode | You can control whether sites   can store cookies for your end users. You can choose to allow cookies, block   non-Microsoft cookies, block non-Microsoft cookies in InPrivate mode, or   block all cookies. Cookies contain data about end user browsing preferences.   The are used to show you relevant content. |
| com.microsoft.intune.mam.managedbrowser.enableKioskMode | For Android devices, you can   enable kiosk mode in Edge. Kiosk mode runs Edge in full-screen. By default,   kiosk mode is disabled. For more information, see [Kiosk mode experiences on   Android devices](/mem/intune/apps/manage-microsoft-edge#kiosk-mode-experiences-on-android-devices). |
| com.microsoft.intune.mam.managedbrowser.showAddressBarInKioskMode | For Android devices, you can   show the address bar in kiosk mode in Edge. By default, this setting is   disabled. For more information, see [Kiosk mode experiences on Android   devices](/mem/intune/apps/manage-microsoft-edge#kiosk-mode-experiences-on-android-devices). |
| com.microsoft.intune.mam.managedbrowser.showBottomBarInKioskMode | For Android devices, you can   show the bottom action bar in kiosk mode in Edge. By default, this setting is   disabled. For more information, see [Kiosk mode experiences on Android   devices](/mem/intune/apps/manage-microsoft-edge#kiosk-mode-experiences-on-android-devices). |
| com.microsoft.intune.mam.managedbrowser.NetworkStackPref | You can choose which network   stack is used for Microsoft Edge service communication. The layers of the   network architecture are called the network stack. The layers of a network   stack are broadly divided into sections, such as Network Interface, Network Driver   Interface Specification (NDIS), Protocol Stack, System Drivers, and User-Mode   Applications. By default, Microsoft Edge uses the Chromium network stack. You   can choose between using the Chromium network stack and the iOS network   stack. Primarily, by choosing a network stack, you select which sync services   and auto search suggestions are used. |
| com.microsoft.intune.mam.managedbrowser.proxyPacUrl | You can choose a URL to a proxy   autoconfig (PAC) file to use with Microsoft Edge. **Note:** Use   **ProxySettings** instead. For more information, see   [ProxyPacUrl](/DeployEdge/microsoft-edge-policies#proxypacurl) and [Set a   proxy .pac file URL](/mem/intune/apps/manage-microsoft-edge#set-a-proxy-pac-file-url). |
| com.microsoft.intune.mam.managedbrowser.proxyPacUrl.FailOpenEnabled | You can choose to block network   access with invalid or unavailable proxy autoconfig (PAC) script. By   default, network access is blocked. For more information, see [PAC   failed-open   support](/mem/intune/apps/manage-microsoft-edge#pac-failed-open-support) and   [ProxySettings](/DeployEdge/microsoft-edge-policies#proxysettings). |
| com.microsoft.intune.mam.managedbrowser.PersistentWebsiteDataStore | For iOS devices, you can choose   the persistent website data store to use for an end user in Edge. By default,   the personal account is used. However, you can choose to use the website data   store based on the first signed-in account, or choose to use the work or   school account first regardless of the sign-in order. For more information,   see [iOS Website data   store](/mem/intune/apps/manage-microsoft-edge#ios-website-data-store). |
| com.microsoft.intune.mam.managedbrowser.SmartScreenEnabled  | Microsoft Defender SmartScreen is a feature that helps users avoid malicious sites and downloads. For more information, see [Microsoft Defender SmartScreen](/mem/intune/apps/manage-microsoft-edge#microsoft-defender-smartscreen). |
| com.microsoft.intune.mam.managedbrowser.OpeningExternalApps  | When a web page requests to open an external app, users will see a pop-up asking them to open the external app or not. Organizations can manage the behavior. For more information, see [Block opening external apps](/mem/intune/apps/manage-microsoft-edge#block-opening-external-apps). |
| com.microsoft.intune.mam.managedbrowser.Chat | You can choose to hide or show   the Bing button in the bottom bar of Edge as part of Microsoft Copilot.   For more information, see [Microsoft Copilot](/copilot/overview). |
| com.microsoft.intune.mam.managedbrowser.EdgeChatPageContext | You can choose whether Microsoft Copilot has access to page content. By default, this setting shows the **Page context** and **Show quick chat panel** options under the Copilot mode. For more information, see [Microsoft Copilot](/copilot/overview). |
| EdgeLockedViewModeEnabled | Edge for iOS and Android can be enabled as locked view mode with MDM policy `EdgeLockedViewModeEnabled`. This policy, which is disabled by default, allows organizations to restrict various browser functionalities, providing a controlled and focused browsing experience. The locked view mode is often used together with MAM policy **com.microsoft.intune.mam.managedbrowser.NewTabPage.CustomURL** or MDM policy **EdgeNewTabPageCustomURL**, which allow organizations to configure a specific web page that is automatically launched when Edge is opened. Users are restricted to this web page and cannot navigate to other websites, providing a controlled environment for specific tasks or content consumption. |

### Data protection configuration settings

Microsoft Edge provides several different configuration settings that allow you to customize the behavior of Edge on an end user's device. The following table provides a list of data protection configuration settings for Edge.

| Key | Description |
|---|---|
| com.microsoft.intune.mam.managedbrowser.account.syncDisabled | You can choose to allow Edge to   sync end user's browsing data across all their signed-in devices. This   relates to Favorites, Passwords, and Address (autofill). For more   information, see [Manage account   synchronization](/mem/intune/apps/manage-microsoft-edge#manage-account-synchronization). |
| com.microsoft.intune.mam.managedbrowser.AllowListURLs | You can add a list of URLs that   end users are allowed to reach. End users must be using their work or school   account in Edge. For more information, see [Manage restricted web   sites](/mem/intune/apps/manage-microsoft-edge#manage-restricted-web-sites). |
| com.microsoft.intune.mam.managedbrowser.BlockListURLs | You can choose a list of URLs   that end users aren't allowed to reach. End users must be using their work   or school account in Edge. For more information, see [Manage restricted web   sites](/mem/intune/apps/manage-microsoft-edge#manage-restricted-web-sites). |
| com.microsoft.intune.mam.managedbrowser.AllowTransitionOnBlock | You can choose to allow managed   users (work or school account) to switch to their personal account to view a   website. Personal accounts must not be disabled. Users are prompted to either   switch to the personal context to open the restricted site, or to add a   personal account.  For more   information, see [Manage restricted web   sites](/mem/intune/apps/manage-microsoft-edge#manage-restricted-web-sites). |
| com.microsoft.intune.mam.managedbrowser.openInPrivateIfBlocked | You can choose to allow   restricted sites to be opened in the Microsoft Entra account's InPrivate context. If   the Microsoft Entra account is the only account configured in Edge, the restricted   site is opened automatically in the InPrivate context.   For more information, see [Manage   restricted web   sites](/mem/intune/apps/manage-microsoft-edge#manage-restricted-web-sites). |
| com.microsoft.intune.mam.managedbrowser.durationOfOpenInPrivateSnackBar | You can choose the number of   seconds that an end user sees the snack bar notification "Access to   this site is blocked by your organization. We’ve opened it in InPrivate mode   for you to access the site." For more information, see [Manage restricted   web   sites](/mem/intune/apps/manage-microsoft-edge#manage-restricted-web-sites). |
| com.microsoft.intune.mam.managedbrowser.AppProxyRedirection | On iOS and Android devices, you can enable   Microsoft Entra application proxy redirection scenarios. By default,  Microsoft Entra application proxy scenarios are prevented.   For more information, see [Manage proxy   configuration](/mem/intune/apps/manage-microsoft-edge#manage-proxy-configuration). |
| com.microsoft.intune.mam.managedbrowser.NTLMSSOURLs | You can choose a list of   internal (intranet) websites that enable NTLM credential caching. The   end users must enter credentials and successfully authenticate when   attempting to access a URL in the list. NTLM is a Windows network   authentication protocol. For more information, see [Manage NTLM single   sign-on   sites](/mem/intune/apps/manage-microsoft-edge#manage-ntlm-single-sign-on-sites). |
| com.microsoft.intune.mam.managedbrowser.durationOfNTLMSSO | You can enter the number of   hours to cache credentials when using NTLM credential caching. NTLM is a   Windows network authentication protocol. For more information, see [Manage   NTLM single sign-on   sites](/mem/intune/apps/manage-microsoft-edge#manage-ntlm-single-sign-on-sites). |
| com.microsoft.intune.mam.managedbrowser.MicrosoftRootStoreEnabled | Microsoft Edge for Android verifies server certificates using the built-in certificate verifier and the Microsoft Root Store as the source of public trust. Organizations can switch to system certificate verifier and system root certificates. For more information, see [Manage   NTLM single sign-on   sites](/mem/intune/apps/manage-microsoft-edge#open-external-apps). |
| com.microsoft.intune.mam.managedbrowser.SSLErrorOverrideAllowed | You can configure whether end users can click through SSL warning pages. For more information, see [SSL warning page control](/mem/intune/apps/manage-microsoft-edge#ssl-warning-page-control). |

For more information about configuring Microsoft Edge, see [Manage Microsoft Edge on iOS and Android with Intune](/mem/intune/apps/manage-microsoft-edge). 

## Next step

[:::image type="content" source="../media/configure-managed-apps/configure-managed-apps-05.png" alt-text="Step 5 - Configure Microsoft Teams" border="false" :::](apps-config-step-5.md)

Continue with [Step 5](apps-config-step-5.md) to configure Microsoft Teams in Microsoft Intune.
