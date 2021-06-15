---
title: "Customize the theme for your organization"
f1.keywords:
- CSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- okr_smb
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 8275da91-7a48-4591-94ab-3123a3f79530
description: "Learn to change the default theme for the top of the navigation bar in Microsoft 365 and customize it to match your company logo or color."
---

# Customize the Microsoft 365 theme for your organization

As the admin of your organization, you can create multiple themes for the people in your organization, and select which themes apply to different members of your organization. The organization theme is what appears in the top navigation bar for people in your organization.

You can add or update a default theme that applies to everyone within your org. You can also create up to four additional group themes that can be assigned to multiple Microsoft 365 groups.
  
## Add or update your organization's theme

1. In the admin center, go to the **Settings** \> **Org Settings** page, and then choose the **Organization profile** tab.

2. On the **Organization profile** tab, select **Custom themes**.

All themes can be customized using the following tabs.

|**Tab**|**What can you do?**|
|:-----|:-----|
|[General](#general-modify-a-theme) <br/> |Modify a theme name and assign to up to five groups (if applicable).  <br/> |
|[Logos](#logos-specify-your-theme-logos) <br/> |Add your theme logo, including the Office dark theme and mobile options.  <br/> |
|[Colors](#colors-choose-theme-colors) <br/> |Customize a color scheme by specifying navigation bar, accent, text, and icon colors. <br/> |

## General: Modify a theme

Your experience on the General tab depends on whether you're adding or modifying the default theme or a group theme.

### Update the default theme

The default theme is the first theme displayed.  

1. If you previously customized a theme for your organization, select **Default Theme** and use one of your saved customizations, or, select **Add theme**.
2. On the **General** page, you can prevent users from overriding their theme and show the user’s display name.
3. Select **Save** to save your changes.  

> [!IMPORTANT]
> The default theme is unique, it can't be renamed and applies to everyone within your organization. To delete the default theme, you have to delete all other themes first.

:::image type="content" source="../../media/default-theme-general.png" alt-text="Screenshot: General tab showing the default theme for your organization":::

### Create a group theme

You can create up to four additional group themes.

1. On the **General** page, enter a name for your theme.

2. Under **Groups**, you can select up to 5 Microsoft 365 Groups that can see your group theme, instead of using the default theme. You can also prevent users from overriding their theme and show the user's display name.

3. Select **Save**.

:::image type="content" source="../../media/default-theme-general-users.png" alt-text="Screenshot: General tab showing the default theme for a group of users in your organization":::

## Logos: Specify your theme logos

On the **Logos** page, you can you can add your logos, and specify the URL where users will navigate to, when they select the logo.

- **Default logo**: Add a URL location that points to your logo. Make sure that the URL uses HTTPS. If you are uploading a logo, make sure it is less than 10kb. Your default logo can be in the JPG, PNG, GIF, or SVG format. For SVG images, they will be resized to fit 24 pixels vertically. JPG, PNG, GIF images will be scaled to fit 200 x 48 pixels.
- **Alternate logo**: Add a URL location that points to your logo. Your alternate logo should be optimized for use in Office dark themes. Same requirements as the default logo.
- **On-click link**: Add a URL location that points to your logo. You can use your logo as a link to any company resource, for example, your company's website.

Select **Save** to save your changes.

You can remove your logos at any time. Just return to the **Logos** page and select **Remove**.

> [!NOTE]
> By default, we first show logo selections that most organizations use. The upload option is only applicable to default themes and not group themes.
  
## Colors: Choose theme colors

On the **Colors** page, you can set the default colors and choose which logo should be used.

- **Navigation bar color**: Select a color to use for the background of the navigation bar. The navigation bar appears at the top on every page.
- **Text and icon color**: Select a color to use for the text and icons on the top navigation bar.
- **Accent color**: Pick one that shows up well on a white or light background. The accent color is used to color some links and buttons that show up on a white or light background. For example, the accent color is used to color elements in a user's inbox and on their Office.com portal page.
- **Reset color**: Select this link to reset colors to the default colors.
- **Which logo should be used?**: Select default logos or any other logos you've created yourself.

:::image type="content" source="../../media/default-theme-colors.png" alt-text="Screenshot: Colors tab showing default theme colors for your organization":::

## Frequently asked questions

### My organization already has a theme for all employees. How will this change?

The default theme will continue to be shown to all employees. Adding a new group theme will only be made available to the Microsoft 365 groups associated with that theme.

### Why don’t I see group themes in the Admin Center?

Only global admins can customize company themes. Global readers have read-only access.

### How many different themes can I set up for my organization?  

Up to five themes can be created. A default theme and four group themes.  

### Can I use security groups or distribution groups instead of Microsoft 365 Groups?

No, new group themes must be mapped to one or more Microsoft 365 groups and not security groups or distribution groups.

> [!NOTE]
> You can convert [distribution groups to Microsoft 365 groups](../manage/upgrade-distribution-lists.md) in Outlook.

### Can I manually assign a theme independent of Microsoft 365 Groups?  

No, new group themes must be mapped to one or more Microsoft 365 groups. Users who are members of the Microsoft 365 group will get the theme applied to their group. You can [create and add new members to a Microsoft 365 Group](../create-groups/create-groups.md) by going to the **Settings** > **Groups** in the admin center.

### What happens if a user is assigned to multiple group themes?  

Users who are assigned to multiple group themes will be shown the default theme.  

### Why can’t I delete the default theme?  

The default theme can only be deleted once all group themes are deleted. Make sure you delete all group themes before you try to delete the group theme.

### Why am I receiving an error message every time I upload a logo URL.  

Make sure the logo you’re using is specified as a publicly addressable URL. Follow these steps for [uploading logos to Azure Blob Storage](/azure/storage/blobs/storage-upload-process-images?tabs=dotnet) or the [Office 365 Content Delivery Network with SharePoint Online](../../enterprise/use-microsoft-365-cdn-with-spo.md).

### Why am I receiving the message “Doesn’t meet minimum color contrast ratio of 4.5:1”?

The recommended contrast ratio between text, icon or button color and background color is 4.5:1. You can override this recommendation and still save your theme as this is not a requirement.

### If I define a theme, which places in Microsoft 365 will this be used?

Any theme appears in the top navigation bar for everyone in the organization as part of the Microsoft 365 suite header.  
  
## Related content

[Add custom tiles to the My apps page and app launcher](../manage/customize-the-app-launcher.md) (article)\
[Overview of Microsoft 365 Groups for administrators](../create-groups/office-365-groups.md) (article)
