---
title: "Turn the profile video feature on or off for all users in your Microsoft 365 organization"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 03/13/2023
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- scotvorg
- Adm_O365
ms.custom: campaignIDs-batch1
ROBOTS: NOINDEX, NOFOLLOW
description: "Turn the profile video feature on or off for all users in your Microsoft 365 organization."
---

# Turn the profile video feature on or off for all users in your Microsoft 365 organization

As the Microsoft 365 administrator, you can turn the profile video feature on or off for users in your organization. Profile videos are 30-second videos that appear on profile cards in Microsoft 365 productivity apps such as Outlook.

## Use the Microsoft 365 Admin Center to turn profile videos on or off

By default, profile video creation is turned on in Microsoft 365 organizations.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a>.

2. In the left nav, go to **Settings** -> **Org Settings**.

3. On the **Services** tab, select **Profile video**.

4. Select or deselect the **Allow your organization to use profile video**.

    :::image type="content" source="../../media/profile-video.png" alt-text="Screenshot: Profile video":::

## Use the Microsoft Graph API to turn profile videos on or off

The requests below are done with the [Microsoft Graph API](/graph/graph-explorer/graph-explorer-overview).

1. Make a GET request to the following endpoint to get the Organization ID: https://graph.microsoft.com/beta/organization.

2. Retrieve “id” field from the response payload. This is your organization ID, referred to as **my-org-id**.

3. Make a GET request to the following endpoint to get the current state of profile video admin setting: https://graph.microsoft.com/beta/organization/my-org-id/settings/profileVideo The response should look like this:

```http
{ "@odata.context": "https://graph.microsoft.com/beta/$metadata#organization('**my-org-id**')/settings/profileVideo/$entity",

"isEnabledInOrganization": false

}
```

The **isEnabledInOrganization** field will be set to either true or false. True means profile video capabilities are on and false means users can't make profile videos.

4. Make a PATCH request to the following endpoint to update state of profile video admin setting, https://graph.microsoft.com/beta/organization/my-org-id/settings/profileVideo, with the following request body:

```http

{

"isEnabledInOrganization": true

}
```

In the request body, populate the value for **isEnabledInOrganization** to either true or false, depending on whether you’d like to turn profile videos on or off.

5. Send the request. If it's successful, you should receive a 200 HTTP response code, and the response payload should confirm that your feature has been turned on or off. To validate, you can rerun the steps in the section “Get current state profile video admin toggle” to get the updated value.

> [!IMPORTANT]
> It may take up to 12 hours before changes take effect for users.

## Frequently asked questions

* **Where are profile videos stored?**

  Profile videos are stored in a user’s OneDrive for Business, in the **Apps\Microsoft People Cards Service\Live Persona Card** folder. 

* **Can users control who can see their profile video?**

  Yes, users can view and change who can view their profile video by following these steps. Open their OneDrive for Business in a web browser and navigate to the following folder: **Apps\Microsoft People Cards Service\Live Persona Card**. Select the **...** button in **Profile Video.webm**” to open the overflow menu and select **Manage Access**. Add and remove users and groups that they would like to share this video with.

* **Can I turn off profile videos for individual users?**

  No, you can't turn off profile videos for individual users at this time.

* **Can I turn off profile videos based on location?**

  No, you can't turn off profile videos based on location at this time.

* **Does disabling profile videos also result in the deletion of the profile video file in OneDrive for Business?**

  No, turning off profile videos won't delete a user's profile video file.

* **Who can view profile videos?**

  Profile videos are available to everyone at your work or school. Profile videos aren't viewable by people outside of your organization.

* **Can deleted profile videos be recovered?**

  No, if a user deletes their profile video it can't be recovered. 
