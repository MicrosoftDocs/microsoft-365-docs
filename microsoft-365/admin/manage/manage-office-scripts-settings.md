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

[Office Scripts](https://docs.microsoft.com/en-us/office/dev/scripts)‎ allows users to automate tasks by recording, editing, and running scripts in ‎Excel‎ on the web. ‎Office Scripts‎ works with Power Automate, and users run scripts on workbooks by using the ‎Excel‎ Online (Business) connector. Microsoft 365 admins can manage Office Scripts settings from the Microsoft 365 admin center.

## Before you begin

- To manage Office Scripts settings, you must be a Global admin. For more information, see [About admin roles](../add-users/about-admin-roles.md).

- Ensure users in your organization have a valid license for a Microsoft 365 or Office 365 commercial or EDU plan that includes access to Office desktop apps, such as one of the following plans:

    - Microsoft 365 Business Standard
    - Microsoft 365 Apps for business
    - Microsoft 365 Apps for enterprise
    - Office 365 E3
    - Office 365 E5
    - Office 365 A3
    - Office 365 A5

## Manage availability of Office Scripts and sharing of scripts

1. In the Microsoft 365 admin center, go to the **Settings** \> **Org settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">Services</a> tab.

2. Select **Office Scripts**.

3. Office Scripts is turned on by default, and everyone in your organization can access and use the feature and share scripts. To turn off Office Scripts for your organization, clear the **Let users automate their tasks in Excel on the web** check box.

4. If you previously turned off Office Scripts for your organization and you want to turn it back on, select **Let users automate their tasks in Excel on the web**, and then specify who can access and use the feature:

    - To allow all users in your organization to access and use Office Scripts, leave **Everyone** (the default) selected.

    - To allow only members of a specific group to access and use Office Scripts, select **Specific group**, and then enter the name or email alias of the group to add it to the allow list. You may add only one group to the allow list, and it must be one of the following types:
        - Microsoft 365 group
        - Distribution group
        - Security group
        - Mail-enabled security group
    
        To learn more about the different types of groups, see [Compare groups](../create-groups/compare-groups.md).

5. To allow users with access to Office Scripts to share their scripts with others in your organization, select **Let users with access to Office Scripts share their scripts with others in the organization**. Sharing scripts outside of an organization is not allowed.
 
    > [!NOTE]
    > If you later turn off script sharing for your organization, users will still be able to run previously-shared scripts.
 
6. Specify which users with access to Office Scripts can share their scripts:
    
    - To allow all users with access to Office Scripts to share their scripts, leave **Everyone** (the default) selected.

    - To allow only members of a specific group with access to Office Scripts to share their scripts, select **Specific group**, and then enter the name or email alias of the group to add it to the allow list. You may add only one group to the allow list, and it must be one of the following types:
        - Microsoft 365 group
        - Distribution group
        - Security group
        - Mail-enabled security group
    
        To learn more about the different types of groups, see [Compare groups](../create-groups/compare-groups.md).

7. To allow users to run their Office Scripts inside Power Automate flows, select **Let users with access to Office Scripts run their scripts with Power Automate**. This allows users to add flow steps with the [Excel Online (Business) Connector's](/connectors/excelonlinebusiness) **Run script** option.

    - To allow all users with access to Office Scripts to use their scripts in flows, leave **Everyone** (the default) selected.

    - To allow only members of a specific group with access to Office Scripts to use their scripts in flows, select **Specific group**, and then enter the name or email alias of the group to add it to the allow list. You may add only one group to the allow list, and it must be one of the following types:
        - Microsoft 365 group
        - Distribution group
        - Security group
        - Mail-enabled security group

        To learn more about the different types of groups, see [Compare groups](../create-groups/compare-groups.md).

    - To learn more about using Office Scripts with Power Automate, including how your data loss prevention policies may be impacted, see [Run Office Scripts with Power Automate](/office/dev/scripts/develop/power-automate-integration).

8. Select **Save**.

    It can take up to 48 hours for changes to Office Scripts settings to take effect.

## Next steps

Because Office Scripts works with Power Automate, we recommend that you review your existing data loss prevention (DLP) policies to ensure your organization's data remains protected while users use ‎Office Scripts‎. For more information, see [Data loss prevention (DLP) policies](/power-automate/prevent-data-loss).

## Related content

[Office Scripts technical documentation](/office/dev/scripts/) (link page)\
[Introduction to Office Scripts in Excel](https://support.microsoft.com/office/9fbe283d-adb8-4f13-a75b-a81c6baf163a) (article)\
[Sharing Office Scripts in Excel for the Web](https://support.microsoft.com/office/226eddbc-3a44-4540-acfe-fccda3d1122b) (article)\
[Record, edit, and create Office Scripts in Excel on the web](/office/dev/scripts/tutorials/excel-tutorial) (article)
