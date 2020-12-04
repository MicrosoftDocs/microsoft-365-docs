---
title: "Launch your portal using the Portal Launch Scheduler"
ms.author: jhendr
author: jhendr
manager: pamgreen
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Ent_O365
- SPO_Content
f1.keywords:
- CSH
ms.custom: Adm_O365
search.appverid: 
- SPO160
- MET150
description: "This article describes how you can launch your portal using the Portal Launch Scheduler"
---

# Launch your portal using the Portal Launch Scheduler

A portal is a SharePoint site on your intranet that has a large number of site viewers who consume content on the site. Launching your portal in waves is an important part of ensuring users have a smooth and performant experience accessing a new SharePoint Online portal. 

Launching in waves is a key way to roll-out your portal, as detailed in [Planning your portal launch roll-out plan in SharePoint Online](https://docs.microsoft.com/microsoft-365/Enterprise/Planportallaunchroll-out?view=o365-worldwide). The Portal Launch Scheduler is designed to help you follow a wave / phased roll-out approach by managing the redirects for the new portal. During each of the waves, you can gather user feedback and monitor performance during each wave of deployment. This has the advantage of slowly introducing the portal, giving you the option to pause and resolve issues before proceeding with the next wave, and ultimately ensuring a positive experience for your users. 

There are two types of redirection: 
- bidirectional: launch a new modern SharePoint Online portal to replace an existing SharePoint classic or modern portal 
- temporary page redirection: launch a new modern SharePoint Online portal with no existing SharePoint portal

The portal launch scheduler is only available to launch modern SharePoint Online portals, i.e. communication sites and modern team sites. Launches must be scheduled at least 7 days in advance. The number of waves required is determined by the expected number of users. Before scheduling a portal launch, the [Page Diagnostics for SharePoint tool](https://aka.ms/perftool) must be run to verify that the home page on the portal is healthy. At the end of the portal launch, all users with permissions to the site will be able to access the new site. 

For more information about launching a successful portal, follow the basic principles, practices, and recommendations detailed in [Creating, launching and maintaining a healthy portal](https://docs.microsoft.com/sharepoint/portal-health). 

> [!NOTE]
> This feature is not available for Office 365 Germany, Office 365 operated by 21Vianet (China), or Microsoft 365 US Government plans.

## App setup and connecting to SharePoint Online
1. [Download the latest SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251).

    > [!NOTE]
    > If you installed a previous version of the SharePoint Online Management Shell, go to Add or remove programs and uninstall "SharePoint Online Management Shell." <br>On the Download Center page, select your language and then click the Download button. You'll be asked to choose between downloading a x64 and x86 .msi file. Download the x64 file if you're running the 64-bit version of Windows or the x86 file if you're running the 32-bit version. If you don't know, see [Which version of Windows operating system am I running?](https://support.microsoft.com/help/13443/windows-which-operating-system). After the file downloads, run it and follow the steps in the Setup Wizard.

2. Connect to SharePoint as a [global admin or SharePoint admin](/sharepoint/sharepoint-admin-role) in Microsoft 365. To learn how, see [Getting started with SharePoint Online Management Shell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online).


## View any existing portal launch setups

To see if there are existing portal launch configurations:

   ```PowerShell
   Get-SPOPortalLaunchWaves -LaunchSiteUrl <object> -DisplayFormat <object>
   ```

## Schedule a portal launch on the site

The number of waves required depends on your expected launch size. 
- Less than 10k users: 1 wave
- 10k to 30k users: 3 waves 
- 30k+ to 100k users: 5 waves
- More than 100k users: 5 waves and contact your Microsoft account team

### Steps for bidirectional redirection

Bidirectional redirection involves launching a new modern SharePoint Online portal to replace an existing SharePoint classic or modern portal. Users in active waves will be redirected to the new site regardless of whether they navigate to the old or new site. Users in a non-launched wave that try to access the new site will be redirected back to the old site until their wave is launched. 

We only support redirection between the default home page on the old site and the default home page on the new site. Should you have administrators or owners that need access to the old and new sites without being redirected, ensure they are listed using the `WaveOverrideUsers` parameter. Should you have administrators or owners that need access to the old and new sites without being redirected, ensure they are listed using the `WaveOverrideUsers` parameter. We only support redirection between the default home page on the old site and the default home page on the new site.

To migrate users from an existing SharePoint site to a new SharePoint site in a staged manner:

1. Run the following command to designate portal launch waves.
   
   ```PowerShell
    New-SPOPortalLaunchWaves -LaunchSiteUrl <object> -RedirectionType Bidirectional -RedirectUrl <string> -ExpectedNumberOfUsers <object> -WaveOverrideUsers <object> -Waves <object>
    ```

Example:
   ```PowerShell
   New-SPOPortalLaunchWaves -LaunchSiteUrl "https://contoso.sharepoint.com/teams/newsite" -RedirectionType Bidirectional -RedirectUrl "https://contoso.sharepoint.com/teams/oldsite" -ExpectedNumberOfUsers 10kTo30kUsers -WaveOverrideUsers "admin@contoso.com" -Waves ' 
[{Name:"Wave 1", Groups:["Viewers 1"], LaunchDateUtc:"2020/10/14"}, 
{Name:"Wave 2", Groups:["Viewers 2"], LaunchDateUtc:"2020/10/15"}, 
{Name:"Wave 3", Groups:["Viewers 3"], LaunchDateUtc:"2020/10/16"}]'
   ```

2. Complete validation. It can take 5-10 minutes for the redirection to complete its configuration across the service. 

### Steps for redirection to temporary page

Temporary page redirection should be used when no existing SharePoint portal exists. Users are directed to a new modern SharePoint Online portal in a staged manner. If a user is in a wave that has not been launched, they will be redirected to a temporary page (any URL). 

1. Run the following command to designate portal launch waves.
   
      ```PowerShell
    New-SPOPortalLaunchWaves -LaunchSiteUrl <object> -RedirectionType ToTemporaryPage -RedirectUrl <string> -ExpectedNumberOfUsers <object> -WaveOverrideUsers <object> -Waves <object>
    ```

Example:
   ```PowerShell
   New-SPOPortalLaunchWaves -LaunchSiteUrl "https://contoso.sharepoint.com/teams/newsite" -RedirectionType ToTemporaryPage -RedirectUrl "https://portal.contoso.com/UnderConstruction.aspx" -ExpectedNumberOfUsers 10kTo30kUsers -WaveOverrideUsers "admin@contoso.com" -Waves ' 
[{Name:"Wave 1", Groups:["Viewers 1"], LaunchDateUtc:"2020/10/14"}, 
{Name:"Wave 2", Groups:["Viewers 2"], LaunchDateUtc:"2020/10/15"}, 
{Name:"Wave 3", Groups:["Viewers 3"], LaunchDateUtc:"2020/10/16"}]'
   ```

2. Complete validation. It can take 5-10 minutes for the redirection to complete its configuration across the service. 
   - `New-SPOPortalLaunchWaves  -LaunchSiteUrl "https://*.sharepoint.com/sites/newsite" -RedirectionType Bidirectional -RedirectUrl "https://*.sharepoint.com/sites/oldsite" -ExpectedNumberOfUsers LessThan10kUsers -WaveOverrideUsers "*@microsoft.com" -Waves ' [{Name:"Wave 1", Groups:["Viewers SG1"], LaunchDateUtc:"2020/10/14"}, {Name:"Wave 2", Groups:["Viewers SG2"], LaunchDateUtc:"2020/10/15"}]' -IsTesting $true`

## Pause or restart a portal launch on the site

1. To pause a portal launch in progress and temporarily prevent upcoming wave progressions from occurring, run the following command:

   ```PowerShell
   Set-SPOPortalLaunchWaves -Status Pause - LaunchSiteUrl <object>
   ```
2. Validate that all users are redirected to the old site. 

3. To restart a portal launch that's been paused, run the following command:

   ```PowerShell
   Set-SPOPortalLaunchWaves -Status Restart - LaunchSiteUrl <object>
   ```
   
4. Validate that the redirection is now restored. 

## Delete a portal launch on the site
1. Create a Portal launch Wave.
  - `New-SPOPortalLaunchWaves  -LaunchSiteUrl "https://*.sharepoint.com/sites/NewSite" -RedirectionType ToTemporaryPage -RedirectUrl "https://*.sharepoint.com/sites/OldSite" -ExpectedNumberOfUsers From10kTo30kUsers -WaveOverrideUsers *@microsoft.com -Waves [{Name:"Wave 1", Groups:["Viewers SG1"], LaunchDateUtc:"2020/10/14"}, {Name:"Wave 2", Groups:["Viewers SG2"], LaunchDateUtc:"2020/10/15"}]' -IsTesting $true`

2. Run the following command to delete a portal launch scheduled or in progress for a site.

   ```PowerShell
   Remove-SPOPortalLaunchWaves -LaunchSiteUrl <object>
   ```

3. Validate that no redirection happens for all users.

## Learn more
[Planning your portal launch roll-out plan in SharePoint Online](https://docs.microsoft.com/microsoft-365/Enterprise/Planportallaunchroll-out)
