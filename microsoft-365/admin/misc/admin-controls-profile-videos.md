---
title: "Admin settings for profile videos in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
ms.date: 03/13/2023
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Adm_O365

description: "Turn the profile video feature on or off for all users in your Microsoft 365 organization."
---

# Turn the profile video feature on or off for all users in your Microsoft 365 organization

As the Microsoft 365 administrator, you can turn the profile video feature on or off for users in your organization. Profile videos are 30-second videos that appear on profile cards in Microsoft 365 apps such as Outlook for Windows desktop and Outlook on the web. For more information on how users in your organization can add profile videos, see .

## Use the Microsoft 365 Admin Center to turn profile videos on or off

By default, profile video creation is turned on in Microsoft 365 organizations.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.microsoft.com</a>.

2. In the left nav, go to to **Settings** -> **Org Settings**.

3. On the **Services & add-ins** tab, find and select profile video in the list

4. Check/uncheck the “Allow your organization to use profile video” toggle.

## Using the Microsoft Graph API to turn profile videos on or off

For ease of use, all requests here were done with Graph Explorer: Graph Explorer | Try Microsoft Graph APIs - Microsoft Graph.

1. Make a GET request to the following endpoint to get the Organization ID: https://graph.microsoft.com/beta/organization

2. Retrieve “id” field from the response payload. This is your organization ID, referred to as **my-org-id**.

3. Make a GET request to the following endpoint to get the current state of profile video admin setting: https://graph.microsoft.com/beta/organization/my-org-id/settings/profileVideo. The response should look like this:

{ "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('<my-org-id>')/settings/profileVideo/$entity",

"isEnabledInOrganization": false

}

The “isEnabledInOrganization” field will be set to either true or false. True means profile video capabilities are on and false means users can't make profile videos.

4. Make a PATCH request to the following endpoint to update state of profile video admin setting: https://graph.microsoft.com/beta/organization/my-org-id/settings/profileVideo with the following request body:

{

"isEnabledInOrganization": true

}

In the request body, populate the value for “isEnabledInOrganization” to either true or false, depending on whether you’d like to turn on or off profile videos.

5. Send the request. If it's successful, you should receive a 200 HTTP response code, and the response payload should confirm that your feature has been turned on or off. To validate, you can rerun the steps in the section “Get current state profile video admin toggle” to get the updated value.

> [!IMPORTANT]
> Due to caching and replication, it may take up to 12 hours before these setting changes take effect for users.

## Frequently asked questions

* **Are profile videos set to default as On or Off?**
    
  Profile videos are set to “ON” by default. Users in your org will see the feature in the profile card. However, administrators can turn off profile videos at the org level. When you turn off the setting, no one in your organization can create profile videos.

* **Where are profile videos stored?**
    
  Profile videos are stored in a user’s OneDrive for Business in the "Apps\Microsoft People Cards Service\Live Persona Card" folder.

* **Can users control who can see their profile video?**
    
  Yes, users can view and change the visibility of their profile video by following the steps: navigate to their OneDrive for Business in the web browser , navigate to the following path: "Apps\Microsoft People Cards Service\Live Persona Card" folder, click on the “...” button in “Profile Video.webm” to open the overflow menu, click “Manage Access”, and add and remove users and groups that they would like to share this video with.

* **Can I disable profile videos on a user level?**
    
  No, this feature cannot be controlled on a user level at this time.

* **Can I disable profile videos on a geographic level?**
    
  No, this feature cannot be controlled on a geographic level at this time.

* **How long does it take between when I disable profile videos on a tenant-level and when it no longer shows up?**
    
  When the profile video feature is turned off, it can take up to 12 hours for it to become disabled.

* **Does disabling profile videos also result in the deletion of the profile video file in OneDrive for Business?**
    
  No, disabling the feature at a tenant level will not result in deletion of profile video files.

* **Who can view profile videos?**
    
  Profile videos are available to everyone in your organization and/or school. Profile videos are not viewable by people outside of your organization.

* **Can deleted profile videos be recovered?**
    
  No, if a user deletes their profile video, it cannot be recovered