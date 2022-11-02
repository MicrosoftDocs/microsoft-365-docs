---
title: "Migrate the Azure Information Protection (AIP) add-in to Microsoft Purview Information Protection built-in labeling for Office apps"
f1.keywords:
- CSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- purview-compliance
- tier1
search.appverid: 
- MOE150
- MET150
description: For Office 365 apps, understand the migration of the Azure Information Protection (AIP) add-in to built-in labeling to protect sensitive data.
---

# Migrate the Azure Information Protection (AIP) add-in to built-in labeling for Office apps

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

When you use [sensitivity labels](sensitivity-labels.md) in Microsoft 365 Apps on Windows computers, we recommend you use you labeling that's built into Office apps, even if you have the [Azure Information Protection (AIP) unified labeling client](/azure/information-protection/rms-client/aip-clientv2) installed. Moving forward, the AIP add-in will be disabled by default in the latest versions of Office apps.

To prepare for this change, use this article to understand the benefits of using built-in labeling, which main features have parity, and how to control the migration from the AIP add-in to the newer labeling experience.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Built-in labeling vs. the AIP client

Built-in labeling forms the cornerstone of a [Microsoft Purview Information Protection deployment](information-protection-solution.md) because this labeling technology extends across platforms (Windows, macOS, iOS, Android, and web), as well as across Microsoft apps and services, and beyond. Built-in labeling is also designed to work with other Microsoft Purview capabilities, such as data classification and Microsoft Purview Data Loss Prevention (DLP).

Because built-in labels don't use an Office add-in, they benefit from more stability and better performance. They also support the latest Microsoft Purview features, such as advanced classifiers.

Up until recently, built-in labeling was turned off by default in Office for Windows apps when the AIP client was installed. This default will no longer be the case for newer versions of Office. You can control the default behavior by using the instructions in the following section, [How to disable the AIP add-in to use built-in labeling for Office apps](#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps). For example, disable the add-in for initial testing on a couple of computers, and then move onto a pilot for a few users. When you're ready, migrate all users to the newer labeling experience.

When you keep the AIP client installed but disabled in Office apps, the other capabilities of the AIP client remain supported:

- Right-click options in File Explorer for users to apply labels to all file types.

- A viewer to display encrypted files for text, images, or PDF documents.

- A PowerShell module to discover sensitive information in files on premises, and apply or remove labels and encryption from these files.

- A scanner to discover sensitive information that's stored in on-premises data stores, and then optionally, label that content.

For more information about these capabilities that extend labeling beyond Office apps, see the [Azure Information Protection unified labeling client administrator guide](/azure/information-protection/rms-client/clientv2-admin-guide) from the AIP documentation.

Independently from labeling, you can continue to use the [AIPService](/powershell/module/aipservice) PowerShell module for tenant-level management of the encryption service. For example, configure super user access when you need to remove encryption for data recovery, track and revoke documents that have been opened by the AIP client, and configure the use license validity period for offline access. For more information, see [Administering protection from Azure Information Protection by using PowerShell](/azure/information-protection/administer-powershell).

> [!NOTE]
> Built-in labels require a subscription edition of Office apps. If you have standalone editions of Office, sometimes called "Office Perpetual", upgrade to Microsoft 365 Apps for Enterprise to benefit from the latest labeling capabilities.

## Benefits of using built-in labeling for Office apps vs. the AIP add-in

The AIP client is in [maintenance mode](https://techcommunity.microsoft.com/t5/security-compliance-and-identity/announcing-aip-unified-labeling-client-maintenance-mode-and/ba-p/3043613) and we don't recommend you use the AIP add-in for Office apps for the following reasons:

- No new labeling features will be supported.
- Add-ins are less stable because they can conflict with other add-ins that can result in Office apps hanging, crashing, or automatically disabling the add-in.
- As an add-in, it runs [more slowly](/deployoffice/fieldnotes/performance-recommendations#office-add-ins), and can be disabled by users to bypass labeling requirements.
- Any bug fixes will require reinstalling the Azure Information Protection client.
- The labeling experience for users is slightly different from built-in labels that users have on their other devices (macOS, iOS, Android), and when they use Office for the web. This difference can increase costs for training and support.
- There are new Office labeling features released that are [only supported by built-in labeling](#features-supported-only-by-built-in-labeling-for-office-apps), and the list is growing all the time.

Use the AIP add-in for your Windows Office apps only if you've already deployed it to users and you need time to migrate them to built-in labeling. Or, if there's a key feature that users need that isn't yet available for their Office update channel.

## Features supported only by built-in labeling for Office apps

> [!NOTE]
> Many new labeling features are in planning or development, so expect the list in this section to grow over time.

Some features are only supported by built-in labeling for Office apps, and won't be supported by the AIP add-in. These include:

- For automatic and recommended labeling:
    - Access to intelligent classification services that include [trainable classifiers](classifier-learn-about.md), [exact data match (EDM)](sit-learn-about-exact-data-match-based-sits.md), and [named entities](named-entities-learn.md)
    - Detection of sensitive information as users enter the text
    - In Word, users can review and remove the identified sensitive content
- [Sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) that is integrated into existing user workflows
- [PDF support](sensitivity-labels-office-apps.md#pdf-support)
- For labels that let users assign permissions, different permissions (Read or Change) can be granted to users or groups
- Encrypt-Only for emails
- Support for account switching
- Users can't disable labeling

Watch a short demo to see some of these features in action:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE58yhH]

To keep informed when new labeling capabilities become available for built-in labeling, see [What's new in Microsoft Purview](whats-new.md) and the **Sensitivity labels** sections.

## How to disable the AIP add-in to use built-in labeling for Office apps

For the latest Office apps, the AIP add-in is disabled by default, so there's nothing for you to configure:

- **Build 16.0.15716.0+**: Currently in [Beta Channel](https://office.com/insider)
- **Current Channel** and **Monthly Enterprise Channel**: Version 2211+ (not yet released)
- **Semi-Annual Channel**: Version 2301+ (not yet released)

If you have one of these versions, and need to use the AIP add-in rather than built-in labeling, you have to [configure a new setting to override the default](#how-to-configure-newer-versions-of-office-to-enable-the-aip-add-in).

> [!IMPORTANT]
> If you’ve previously used the AIP add-in as the default labeling client in Office apps and use Office versions listed in this section, the AIP add-in is automatically disabled and replaced by built-in labeling.

To disable the AIP add-in for older versions, see the next section.

Remember, when the AIP add-in is disabled, you can still use the AIP client to extend labeling beyond Office apps.

### How to configure older versions of Office to disable the AIP add-in

For Office apps older than the versions listed in the previous section, to prevent the AIP add-in from loading in Office apps, use the Group Policy setting **List of managed add-ins** as documented in [No Add-ins loaded due to group policy settings for Office 2013 and Office 2016 programs](https://support.microsoft.com/help/2733070/no-add-ins-loaded-due-to-group-policy-settings-for-office-2013-and-off).

For your Windows Office apps that support built-in labeling, use the configuration for Microsoft Word 2016, Excel 2016, PowerPoint 2016, and Outlook 2016, specify the following programmatic identifiers (ProgID) for the AIP client, and set the option to **0: The add-in is always disabled (blocked)**

|Application  |ProgID  |
|---------|---------|
|Word     |     `MSIP.WordAddin`    |
|Excel     |  `MSIP.ExcelAddin`       |
|PowerPoint     |   `MSIP.PowerPointAddin`      |
|Outlook | `MSIP.OutlookAddin` |
| | | 

Deploy this setting by using Group Policy, or by using the [Cloud Policy service for Microsoft 365](/DeployOffice/overview-office-cloud-policy-service).

> [!IMPORTANT]
> If you use the Group Policy setting **Use the Sensitivity feature in Office to apply and view sensitivity labels** and set this to **1**, there are some situations where the AIP add-in might still load in Office apps. Blocking the add-in from loading in each app prevents this happening.

Alternatively, you can interactively disable or remove the **Microsoft Azure Information Protection** Office Add-in from Word, Excel, PowerPoint, and Outlook. This method is suitable for a single computer, and ad-hoc testing. For instructions, see [View, manage, and install add-ins in Office programs](https://support.office.com/article/16278816-1948-4028-91e5-76dca5380f8d).

Whichever method you choose, the changes take effect when Office apps restart.

If after making these changes the **Sensitivity** button doesn't display on the Office ribbon, check whether sensitivity labeling has been [turned off](sensitivity-labels-office-apps.md#if-you-need-to-turn-off-built-in-labeling-in-office-apps-on-windows) with the **Use the Sensitivity feature in Office to apply and view sensitivity labels** setting. Although this isn't the default configuration for Office apps, an administrator might have explicitly set this configuration by using Group Policy or by directly editing the registry.

### How to configure newer versions of Office to enable the AIP add-in

> [!CAUTION]
> If you've previously set the value of **Use the Sensitivity feature in Office to apply and view sensitivity labels** to **0** (or used the equivalent registry key of **UseOfficeForLabelling**​) to disable built-in labeling because you wanted to use the AIP add-in: Going forward, if you don't configure the new setting that's described in this section, you won't be able to use sensitivity labeling with either the AIP add-in or built-in labeling.

In the [newer versions of Office](#how-to-disable-the-aip-add-in-to-use-built-in-labeling-for-office-apps), the AIP add-in is disabled by default. To enable it, you must configure a new Office setting under **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**:

- **Use the Azure Information Protection add-in for sensitivity labeling**. Set the value to **1**.

This new setting is still rolling out. If you don't see it yet, wait a few more days and try again.

Deploy this setting by using Group Policy, or by using the [Cloud Policy service for Microsoft 365](/DeployOffice/overview-office-cloud-policy-service).

Additional Office settings you might need to configure:

1. The security setting **Use the Sensitivity feature in Office to apply and view sensitivity labels**, must be **0**, or not configured.

2. If the list of managed add-ins block the AIP add-in, as described in the previous section, you'll need to either remove these entries for the AIP add-in, or set their value to **1: The add-in is always enabled.** 

## Feature parity for built-in labeling and the AIP add-in for Office apps

Many of the labeling features supported by the AIP add-in are now supported by built-in labeling. For a more detailed list of available capabilities, minimum versions that might be needed, and configuration information, see [Manage sensitivity labels in Office apps](sensitivity-labels-office-apps.md). To support a specific feature, you might need to change your [Office update channel](/deployoffice/overview-update-channels).
 
More features are planned and in development. If there's a specific feature that you're interested in, check the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=Microsoft%20Information%20Protection&searchterms=label) and consider joining the [Microsoft Information Protection in Office Private Preview](https://aka.ms/MIP/PreviewRing).

Use the following information to help you identify if the features you use with the AIP add-in is currently available with built-in labeling. Features that aren't yet available but in planning or deployment might delay your final migration for users, but you can begin testing the other features now to expedite a later migration.

|AIP add-in feature or capability|Built-in labeling |
|:-------------------------------|:----------------:|
|**Category: General** ||
|Central reporting and auditing|![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels-office-apps.md#auditing-labeling-activities) |
|Government Cloud|![Supported.](../media/yes-icon.png)|
|Admin can disable labeling for all apps|  ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels-office-apps.md#if-you-need-to-turn-off-built-in-labeling-in-office-apps-on-windows)|
|**Category: User Experience** ||
|Labeling button on the ribbon|![Supported.](../media/yes-icon.png)|
|Multilanguage support for label names and tooltips| ![Supported.](../media/yes-icon.png) <br>[Learn more](create-sensitivity-labels.md#example-configuration-to-configure-a-sensitivity-label-for-different-languages) |
|Visibility of labels on a toolbar| [In preview](sensitivity-labels-office-apps.md#sensitivity-bar) |
|Label colors| [In preview](sensitivity-labels-office-apps.md#label-colors) |
|**Category: Labeling actions** ||
|Manual labeling |  ![Supported.](../media/yes-icon.png) <br>[Learn more](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9) |
|Mandatory labeling | ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels.md#what-label-policies-can-do)|
|Default labeling <br> - New and existing items <br> - Separate settings for email|  ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels.md#what-label-policies-can-do) |
|Recommended or automatic |![Supported.](../media/yes-icon.png) <br>[Learn more](apply-sensitivity-label-automatically.md#how-to-configure-auto-labeling-for-office-apps) |
|Downgrade justification |  ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels.md#what-label-policies-can-do)|
| **Category: Visual markings** | |
|Headers, footers, watermark| ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels.md#what-label-policies-can-do)|
|Dynamic markings| ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels-office-apps.md#dynamic-markings-with-variables)|
|Per app visual marking| ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels-office-apps.md#setting-different-visual-markings-for-word-excel-powerpoint-and-outlook)|
| **Category: Encryption** | |
|Admin-defined permissions | ![Supported.](../media/yes-icon.png) <br>[Learn more](encryption-sensitivity-labels.md#assign-permissions-now) |
|User-defined permissions <br> - Do Not Forward for Outlook <br> - User and group custom permissions for Word, Excel, PowerPoint| ![Supported.](../media/yes-icon.png) <br>[Learn more](encryption-sensitivity-labels.md#let-users-assign-permissions)|
|User-defined permissions <br> - Organization-wide custom permissions by specifying domains for Word, Excel, PowerPoint | [In preview](encryption-sensitivity-labels.md#support-for-organization-wide-custom-permissions) |
|Co-authoring and AutoSave | ![Supported.](../media/yes-icon.png) <br>[Learn more](sensitivity-labels-coauthoring.md) |
| | |

Remember to use the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=Microsoft%20Information%20Protection&searchterms=label) to identify and track new features in development.

### Support for PowerShell advanced settings

The AIP client supports many customizations by using [PowerShell advanced settings](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#configuring-advanced-settings-for-the-client-via-powershell). For the advanced settings applicable to Office apps that are also supported by built-in labeling, see the list in [New-Label](/powershell/module/exchange/new-label) or [Set-Label](/powershell/module/exchange/set-label), and [New-LabelPolicy](/powershell/module/exchange/new-labelpolicy) or [Set-LabelPolicy](/powershell/module/exchange/set-labelpolicy).

However, you might find you don't need to use PowerShell to configure the supported settings because they're included in the standard configuration from the Microsoft Purview compliance portal. For example, UI configuration to choose label colors, and turn off mandatory labeling for Outlook.

The following configurations from the AIP add-in that aren't yet supported by built-in labeling include:

- [Label inheritance from email attachments](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#for-email-messages-with-attachments-apply-a-label-that-matches-the-highest-classification-of-those-attachments)
- [S/MIME for Outlook](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#configure-a-label-to-apply-smime-protection-in-outlook)
    - This setting is starting to [roll out in preview for built-in labeling across all platforms](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook)
- [Oversharing popup messages for Outlook](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#implement-pop-up-messages-in-outlook-that-warn-justify-or-block-emails-being-sent)
- [Default sublabel for a parent label](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#specify-a-default-sublabel-for-a-parent-label)
- [Remove external content markings](/azure/information-protection/rms-client/clientv2-admin-guide-customizations#remove-headers-and-footers-from-other-labeling-solution )

## Features not planned to be supported by built-in labeling for Office apps

Although new capabilities for built-in labeling are being added all the time, the AIP Office add-in supports the following capabilities that aren't planned to be available in future releases for built-in labeling:

- Application of labels to Microsoft Office 97-2003 formats, such as .doc files
- Local usage logging to the Windows event log
- Permanently disconnected computers
- Standalone editions of Office (sometimes called "Office Perpetual") rather than subscription-based

## Migration planning for the AIP add-in for Office apps

To smoothly transition to using built-in labeling for Office apps, use the information on this page to prepare a migration plan that includes the following tasks:

- Identify the features that you currently use, and test them with built-in labeling to ensure you understand the configuration and user experience.

- Identify any new features that you want to use, and decide whether to include them in the migration or at a later stage.

- Make sure all dependencies are in place, such as Microsoft 365 Apps for Enterprise is deployed with the correct update channel and the AIP add-in disabled, and the correct [licenses are assigned to users](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-information-protection-sensitivity-labeling).

- Update any internal documentation and training, and prepare your help desk and users for change.

To help you with your migration journey, we recommend the [migration guidance and playbook from Microsoft Purview Customer Experience Engineering (CxE)](https://microsoft.github.io/ComplianceCxE/playbooks/AIP2MIPPlaybook).
