---
title: "Add custom tiles to the app launcher"
f1.keywords:
- CSH
ms.author: twerner
author: twernermsft
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: 1136115a-75af-4497-b693-640c4ce70bc6
description: "Create quick links to your email, documents, apps, SharePoint sites, external sites, and other resources by adding custom tiles to the app launcher."
---

# Add custom tiles to the app launcher

You can add your own custom tiles to Apps that point to SharePoint sites, external sites, legacy apps, and more. The custom tile appears under the Apps section in Microsoft 365. Once your users launch the app, it's added automatically to the list of app launcher apps for access. This makes it easy to find the relevant sites, apps, and resources to do your job.  

## Add a custom tile for Apps

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>. 

1. Go to **Settings** > **Org settings**, and choose the **Organization profile** tab. 

1. Choose **Custom tiles for Apps** > **Add a custom tile**. 

1. Enter a tile name for the new tile. The name appears in the tile. 

1. Enter a URL of website for the tile. This is the location where you want your users to go when they select the tile on the app launcher. Use HTTPS in the URL.

    > [!TIP] 
>If you're creating a tile for a SharePoint site, navigate to that site, copy the URL, and paste it here. The URL of your default team site looks like this: `https://<company_name>.sharepoint.com`.

1. Enter a URL of the image for the tile. The image appears on the My apps page and app launcher.

    > [!TIP]
>The image should be 60x60 pixels and be available to everyone in your organization without requiring authentication. 

1. Enter a description for the tile. You see this when you select the tile on the My apps page and select **App details**.

1. Select **Save changes** to create the custom tile.

Your custom tile will appear within the next 24 hours in the app launcher on the **All** tab for you and your users. 

Your custom tile will appear within the next 24 hours in Microsoft 365 Apps for you and your users. 

> [!NOTE]
> If you don't see the custom tile created in the previous steps, make sure you have an Exchange Online mailbox assigned to you and you've signed into your mailbox at least once. These steps are required for custom tiles in Microsoft 365. 

## Edit or delete a custom tile

1. In the admin center, go to the **Settings** > **Org Settings** > **Organization profile** tab. 

1. On the Organization profile page, go to **Custom tiles for Apps**, select the three dots next to your Custom tile, and select **Edit custom tile**. 

1. Update the **Tile name**, **URL**, **Description**, or **Image URL** for the custom tile (For steps, see [Add a custom tile to Apps](#add-a-custom-tile-for-apps)). 

1. Select **Update** > **Close**. 

To delete a custom tile, from the Custom tiles window, select the tile, and select **Remove tile** > **Delete**. 
  
## Next steps

 To customize the look and feel of Microsoft 365 to match your organization's brand, see [Customize the Microsoft 365 theme](../setup/customize-your-organization-theme.md).

## Related content

[Pin apps to your users' app launcher](pin-apps-to-app-launcher.md) (article)\
[Upgrade your Microsoft 365 for business users to the latest version](../setup/upgrade-users-to-latest-office-client.md) (article)\
[Manage add-ins in the admin center](../manage/manage-addins-in-the-admin-center.md) (article)
