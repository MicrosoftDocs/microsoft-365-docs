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

You can launch your portal using the Portal Launch Scheduler by first validating the tenant admin's ability to setup a waves for a new portal. Then the admin can validate a redirection of requests, based on the existence of a user in the active waves.

For more information about launching a successful portal, follow the basic principles, practices, and recommendations detailed in [Creating, launching and maintaining a healthy portal](https://go.microsoft.com/fwlink/?linkid=2105838). 

## App setup
1. Uninstall if there an existing `Microsoft.Online.SharePoint.PowerShell` from your machine through the control panel.
2. On PowerShell pass `Install-Module -Name Microsoft.Online.SharePoint.PowerShell`.

## Connect to SharePoint Online
1. Open the [SharePoint Online Management Shell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) in Windows.
2. Connect to your tenant as an admin.
   - `Connect-SPOService -Url "https://*-admin.sharepoint.com" -Credential "username”`
3.	Supply your password when prompted.

## Command to get an existing setup

To view existing portal launch configurations:

1. Pass `Get-SPOPortalLaunchWaves  -LaunchSiteUrl  https://*.sharepoint.com/sites/newsite`.
2. Pass the additional parameter `-DisplayFormat Raw` if you wish to see the wave collection formatted as a raw input format.

## Commands for bi-directional redirection

To migrate old site users to the new site in a staged manner:

1. Create Portal launch waves.
   - This is only applicable in the early release test phase.
   - To test the impact of the change immediately, make sure the first wave `LaunchDateUtc` is set to the current date. If you do not supply this flag, you get an error message. This error happens because launches in production must be scheduled at least 7 days in advance.

   - `New-SPOPortalLaunchWaves  -LaunchSiteUrl "https://*.sharepoint.com/sites/newsite" -RedirectionType Bidirectional -RedirectUrl "https://*.sharepoint.com/sites/oldsite" -ExpectedNumberOfUsers LessThan10kUsers -WaveOverrideUsers "*@microsoft.com" -Waves ' [{Name:"Wave 1", Groups:["Viewers SG1"], LaunchDateUtc:"2020/10/14"}, {Name:"Wave 2", Groups:["Viewers SG2"], LaunchDateUtc:"2020/10/15"}]' -IsTesting $true`

2. Complete validation.
  - It can take up to 5 minutes for the redirection to complete its configuration across the service, so please wait before continuing.
  - If you login with the user specified as `WaveOverrideUsers`, then nothing changes. You should be staying at the site you navigated to.
  - Login with a user who is part of *Viewers SG1*.
    - Navigate to the old site and you should be redirected to the new site.
    - Navigate to the new site and you should be stay on the new site.
    - Log with user in *Viewers SG2* and navigate to the old site and stay on the old site.
    - Navigate to the new site and you should be redirected to the old site.

3. Pause Portal launch.
  - If you need to pause the launch waves, you can pause them for "x" number of days. Setting the `Status` flag to pause prevents all upcoming wave progressions. 
  - `Set-SPOPortalLaunchWaves -Status Pause - LaunchSiteUrl  https://*.sharepoint.com/sites/NewSite`.
  - This validates that all users are redirected to the old site.

4. Restart the portal launch progression. 
  - `Set-SPOPortalLaunchWaves -Status Restart - LaunchSiteUrl  https://*.sharepoint.com/sites/NewSite`.
  - Validate that the redirection is now restored.

5. Delete a portal launch setup.
  - `Remove-SPOPortalLaunchWaves -LaunchSiteUrl https://*.sharepoint.com/sites/NewSite`.
  - Validate that no redirection happens for all users.

## Commands for redirection to temporary page

Follow these steps if you have no previous site and you want to omit users not in the wave from landing on the new portal page.

To create a temporary page in any of the sites:

1. Create a Portal launch Wave.
  - `New-SPOPortalLaunchWaves  -LaunchSiteUrl "https://*.sharepoint.com/sites/NewSite" -RedirectionType ToTemporaryPage -RedirectUrl "https://*.sharepoint.com/sites/OldSite" -ExpectedNumberOfUsers From10kTo30kUsers -WaveOverrideUsers *@microsoft.com -Waves [{Name:"Wave 1", Groups:["Viewers SG1"], LaunchDateUtc:"2020/10/14"}, {Name:"Wave 2", Groups:["Viewers SG2"], LaunchDateUtc:"2020/10/15"}]' -IsTesting $true`

2. Complete validation.

  - Wait five minutes before continuing, as the action can take up to five minutes to complete.
  - Log with the user who is part of *Viewers SG1* and:
     - Navigate to the new site, and you should be stay on the new site.
     - Navigate to the temp page, and you should be stay on the temp page.
  - Log with the user who is part of *Viewers SG2* and:
     - Navigate to the new site, and you should be redirected to the temp page.
     - Navigate to the temp page, and you should stay on the temp page.

3. Delete a portal launch setup.
  - `Remove-SPOPortalLaunchWaves - LaunchSiteUrl  https://*.sharepoint.com/sites/NewSite`.
  - Validate that no redirection happens for all users.

## Learn more
[Planning your portal launch roll-out plan in SharePoint Online](https://docs.microsoft.com/microsoft-365/Enterprise/Planportallaunchroll-out)