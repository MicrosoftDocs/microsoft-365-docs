---
title: "Manage Office Scripts settings"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article 
ms.service: o365-administration 
localization_priority: Normal
ms.collection:   
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
description: "Learn how to manage Office Scripts settings for users in your organization."
---

# Manage Office Scripts settings

Office Scripts‎ allows users to automate tasks by recording, editing, and running scripts in ‎Excel‎ on the web. ‎Office Scripts‎ works with Power Automate, and users run scripts on workbooks by using the ‎Excel‎ Online (Business) connector. Admins must turn on Office Scripts in the Microsoft 365 admin center before users can access and use the feature.

## Before you begin

- To manage Office Scripts settings, you must be a Global admin. For more information, see [About admin roles](../add-users/about-admin-roles.md).
- Ensure users in your organization have a license for one of the following:
    - Microsoft 365 Business Standard
    - Microsoft 365 Apps for business
    - Microsoft 365 Apps for enterprise
    - Office 365 E3
    - Office 365 E5
    - Office 365 A3
    - Office 365 A5

## Turn on or turn off Office Scripts for your organization and manage sharing of scripts

1. In the Microsoft 365 admin center, go to the **Settings** \> **Org settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">Services</a> tab.

2. Select **Office Scripts**.

3. To turn on Office Scripts for your organization, select **Let users automate their tasks in Excel on the web**. To turn off Office Scripts for your organization, clear this check box.

4. If you're turning on Office Scripts, indicate who will have access to and be able to use the feature. Do one of the following:

    - To allow all users in your organization to access and use Office Scripts, leave **Everyone** (the default) selected. 

    - To allow only members of certain Azure Active Directory Security groups or Microsoft 365 groups to access and use Office Scripts, select **Specific group**, and then enter the name or email alias of each group to add them to the allow list.

5. To allow users with access to Office Scripts to share their scripts with others in your organization, select **Let users with access to office Scripts share their scripts with others in the organization**. Sharing scripts outside of an organization is not allowed.
 
6. If you allow users to share their scripts, indicate who they're allowed to share them with:
    
    - To allow those with access to Office Scripts to share the scripts they create with all users in your organization, leave **Everyone** (the default) selected.

    - To allow those with access to Office Scripts to share the scripts they create only with members of certain Azure Active Directory Security groups or Microsoft 365 groups, select **Specific group**, and then enter the name or email alias of each group to add them to the allow list.

5. Select **Save**.

    Note that it can take up to 48 hours for changes to Office Script settings to take effect.

## Next steps

We recommend reviewing your existing data loss prevention (DLP) policies to ensure your organization's data remains protected while users use ‎Office Scripts‎. For more information, see [Data loss prevention (DLP) policies](/power-automate/prevent-data-loss).

## Related content

[Office Scripts technical documentation](/office/dev/scripts/) (link page)\
[Introduction to Office Scripts in Excel](https://support.microsoft.com/office/9fbe283d-adb8-4f13-a75b-a81c6baf163a) (article)\
[Sharing Office Scripts in Excel for the Web](https://support.microsoft.com/office/226eddbc-3a44-4540-acfe-fccda3d1122b) (article)\
[Record, edit, and create Office Scripts in Excel on the web](/office/dev/scripts/tutorials/excel-tutorial) (article)