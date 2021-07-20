---
title: "Manage which ‎Office‎ features appear in What's New"
f1.keywords:
- NOCSH
ms.author: danbrown
author: DHB-MSFT
manager: laurawi
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Decide which Office features to show or hide when a user chooses Help > What's New in their Office app on Windows by using the 'What's new in Office' feature in the Microsoft 365 admin center."
---

# Manage which Office‎ features appear in What's New

When an important ‎Office‎ feature is released, users will get a message about it when they choose **Help** > **What's New** in their ‎‎Office‎‎ app on ‎Windows‎.

You can control which of these feature messages your users are shown by using the **What's new in Office** feature in the Microsoft 365 admin center. If you decide to hide a feature message to your users, you can always come back later and decide to show it to them.

> [!NOTE]
> - Hiding a feature message from your users doesn't disable the feature in the Office app.
> - You must be assigned either the Global admin role or the Office apps admin role to use the **What's new in Office** feature.

## Show or hide new features 

1. In the Microsoft 365 admin center, under **Settings**, choose **Org settings**.
2. On the **Services** tab, choose **What's new in Office**.
3. When you click on the feature name, a fly-out panel appears with the following information:
     - A short description of the feature.
     - A link to an article to learn more about the feature.
     - The Office applications that the feature appears in.
     - The first version (release) that the feature is available in for that channel.
4. Choose **Hide from users**. Or, if you previously hid the feature, choose **Show to users**.

You can also select multiple features on the **Manage which ‎Office‎ features appear in What's New** page, and then choose either **Hide** or **Show**.

> [!NOTE]
> - If a feature is available in multiple Office apps, setting the feature to **Hidden** hides the feature message in all of those Office apps.
> - All feature messages are shown to users by default. This is the default status for all features, and the status only changes if you have chosen to hide or show a feature message.
> - You can also get to the **What's new in Office** feature from the Microsoft 365 Apps admin center ([https://config.office.com](https://config.office.com)). The feature is found under **Customization** > **What's New Management**.

## List of features

You can filter which features appear on the **Manage which ‎Office‎ features appear in What's New** page. You can filter by channel, application, or status, or by some combination of them.

New features appear on the page based on the following schedule:

|Channel|Date|Take action|
|:-----|:-----|:-----|
|**Current** <br/> |15th of the month  <br/> |1 - 3 weeks before the monthly release <br/> |
|**Monthly Enterprise** <br/> |First of the month  <br/> |Two weeks before the major release that brings new features |
|**Semi-Annual Enterprise (Preview)** <br/> |Sept 1 and March 1 <br/> | 2 weeks before the major release that brings new features|
|**Semi-Annual Enterprise** <br/> |Jan 1 and July 1 <br/> | 2 weeks before the major release that brings new features<br/> |

For more information about when new versions are released to each update channel, see [Update history for Microsoft 365 Apps (listed by date)](/officeupdates/update-history-microsoft365-apps-by-date).

## Add the "What's new in Office" card to the admin center home page

1. On the Microsoft 365 admin page, choose **Add card** on top of the page
2. Locate **Manage which Office features appear in What's New** in the list and choose it.
3. Once the card is on your home page, you can choose **What's new in Office** to [show or hide the features](#show-or-hide-new-features) for your organization.


## Related articles

[Office What's New management is now generally available](https://techcommunity.microsoft.com/t5/microsoft-365-blog/office-what-s-new-management-is-now-generally-available/ba-p/1179954)
