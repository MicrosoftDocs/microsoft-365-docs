---
title: "Manage Office Scripts settings"
f1.keywords:
- NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.date: 01/09/2025
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
- AdminTemplateSet
- admindeeplinkMAC
search.appverid: MET150
description: "Learn how to manage Office Scripts settings for users in your organization."
---

# Manage Office Scripts settings

[Office Scripts](/office/dev/scripts) allows users to automate tasks by recording, editing, and running scripts in Excel. Office Scripts works with Power Automate, and users run scripts on workbooks by using the Excel Online (Business) connector. Microsoft 365 admins can manage Office Scripts settings from the Microsoft 365 admin center.

> [!NOTE]
> To manage Office Scripts settings, you must be at least an Office Apps admin. For more information, see [About admin roles](../add-users/about-admin-roles.md).

## Manage availability of Office Scripts and sharing of scripts

1. In the Microsoft 365 admin center, go to the **Settings** \> **Org settings** \> **[Services](https://go.microsoft.com/fwlink/p/?linkid=2053743)** tab.

2. Select **Office Scripts**.

3. Office Scripts is turned on by default, and everyone in your organization can access and use the feature and share scripts. To turn off Office Scripts for your organization, clear the **Let users automate their tasks in Excel** checkbox.

4. If you previously turned off Office Scripts for your organization and you want to turn it back on, select **Let users automate their tasks in Excel**, and then specify who can access and use the feature:

    - To allow all users in your organization to access and use Office Scripts, leave **Everyone** (the default) selected.

    - To allow only members of a specific group to access and use Office Scripts, select **Specific group**, and then enter the name or email alias of the group to add it to the allowlist. You may add only one group to the allowlist, and it must be one of the following types:
        - Microsoft 365 group
        - Distribution group
        - Security group
        - Mail-enabled security group

        To learn more about the different types of groups, see [Compare groups](../create-groups/compare-groups.md).

5. To allow users with access to Office Scripts to share their scripts with others in your organization, select **Let users with access to Office Scripts share their scripts with others in the organization**. Sharing scripts outside of an organization isn't allowed.

    > [!NOTE]
    > If you later turn off script sharing for your organization, users will still be able to run previously-shared scripts.

6. Specify which users with access to Office Scripts can share their scripts:

    - To allow all users with access to Office Scripts to share their scripts, leave **Everyone** (the default) selected.

    - To allow only members of a specific group with access to Office Scripts to share their scripts, select **Specific group**, and then enter the name or email alias of the group to add it to the allowlist. You may add only one group to the allowlist, and it must be one of the following types:
        - Microsoft 365 group
        - Distribution group
        - Security group
        - Mail-enabled security group

        To learn more about the different types of groups, see [Compare groups](../create-groups/compare-groups.md).

7. To allow users to run their Office Scripts inside Power Automate flows, select **Let users with access to Office Scripts run their scripts with Power Automate**. This allows users to add flow steps with the [Excel Online (Business) connector](/connectors/excelonlinebusiness) **Run script** option.

    - To allow all users with access to Office Scripts to use their scripts in flows, leave **Everyone** (the default) selected.

    - To allow only members of a specific group with access to Office Scripts to use their scripts in flows, select **Specific group**, and then enter the name or email alias of the group to add it to the allowlist. You may add only one group to the allowlist, and it must be one of the following types:
        - Microsoft 365 group
        - Distribution group
        - Security group
        - Mail-enabled security group

        To learn more about the different types of groups, see [Compare groups](../create-groups/compare-groups.md).

    - To learn more about using Office Scripts with Power Automate, see [Run Office Scripts with Power Automate](/office/dev/scripts/develop/power-automate-integration).

8. Select **Save**.

    It can take up to 48 hours for changes to Office Scripts settings to take effect.

## Manage the availability of Office Scripts in Excel desktop by using Group Policy

Group Policy has a setting to control whether Office Scripts (including the relevant commands on the **Automate** tab) are available for use.

If you enable this policy setting, Office Scripts won't be available for use in the installed Excel app on a desktop. You'll find Office Scripts settings under User Configuration\Administrative Templates\Microsoft Excel 2016\Miscellaneous in the Group Policy Management Console.  

After applying this policy setting, users will still see the **Automate** tab, but the **Office Scripts** and **Automate** options will be greyed out. They can select the **Record Actions** button, but if they do, they'll see the following message: "You don't have access to Office Scripts. Your organization's admin may have turned off this feature, or you don't meet the requirements."

To learn more, see [Use Group Policy to configure update settings for Microsoft 365 Apps](/deployoffice/configure-update-settings-microsoft-365-apps#use-group-policy-to-configure-update-settings-for-microsoft-365-apps).

## Next steps

Because Office Scripts works with Power Automate, we recommend that you review your existing Microsoft Purview Data Loss Prevention (DLP) policies to ensure your organization's data remains protected while users use Office Scripts. For more information, see [Set a policy to help prevent data loss](/power-automate/prevent-data-loss).

## Related content

[Office Scripts technical documentation](/office/dev/scripts/) (link page)\
[Introduction to Office Scripts in Excel](https://support.microsoft.com/office/9fbe283d-adb8-4f13-a75b-a81c6baf163a) (article)\
[Sharing Office Scripts in Excel](https://support.microsoft.com/office/226eddbc-3a44-4540-acfe-fccda3d1122b) (article)\
[Record, edit, and create Office Scripts in Excel](/office/dev/scripts/tutorials/excel-tutorial) (tutorial)
