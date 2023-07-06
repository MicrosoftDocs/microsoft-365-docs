---
title: "Minimum versions for sensitivity labels in Microsoft 365 Apps"
f1.keywords:
- NOCSH
ms.author: alejandros
author: alejandrosMSFT
ms.reviewer: cabailey
manager: laurawi
ms.date: 04/20/2023
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- purview-compliance
- tier3
search.appverid: 
- MOE150
description: Identify the minimum versions of Office apps that support specific capabilities for sensitivity labels from Microsoft Purview Information Protection.
---

# Minimum versions for sensitivity labels in Office apps

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

The capabilities tables on this page supplement [Manage sensitivity labels in Office apps](sensitivity-labels-office-apps.md) by listing the minimum Office version that introduced specific capabilities for sensitivity labels built in to Office apps. Or, if the label capability is in public preview or under review for a future release.

New versions of Office apps are made available at different times for different update channels. For Windows, you'll get the new capabilities earlier when you are on the Current Channel or Monthly Enterprise Channel, rather than Semi-Annual Enterprise Channel. The minimum version numbers can also be different from one update channel to the next. For more information, see [Overview of update channels for Microsoft 365 Apps](/deployoffice/overview-update-channels) and [Update history for Microsoft 365 Apps](/officeupdates/update-history-microsoft365-apps-by-date).

New capabilities that are in private preview are not included in the tables but you might be able to join these previews by nominating your organization for the [Microsoft Information Protection private preview program](https://aka.ms/mip-preview).

> [!TIP]
> When you compare the minimum versions in the tables with the versions you have, remember the common practice of release versions to omit leading zeros.
> 
> For example, you have version 4.2128.0 and read that 4.7.1+ is the minimum version. For easier comparison, read 4.7.1 (no leading zeros) as 4.**0007**.1 (and not 4.**7000**.1). Your version of 4.2128.0 is higher than 4.0007.1, so your version is supported.

## Sensitivity label capabilities in Word, Excel, and PowerPoint

The numbers listed are the minimum Office application versions required for each capability. 

> [!NOTE]
> For Windows and the Semi-Annual Enterprise Channel, the minimum supported version numbers might not yet be released. [Learn more](/officeupdates/update-history-microsoft365-apps-by-date#supported-versions)

|Capability |Windows |Mac |iOS |Android |Web |
|-----------|-------:|----|----|--------|----|
|[AIP add-in disabled by default](sensitivity-labels-aip.md#how-to-configure-newer-versions-of-office-to-enable-the-aip-add-in)|Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2303+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Not relevant  |Not relevant |Not relevant|Not relevant |
|[Manually apply, change, or remove label](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)|Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ | 2.21+ | 16.0.11231+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Multi-language support](create-sensitivity-labels.md#additional-label-settings-with-security--compliance-powershell)|Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+|2.21+ |16.0.11231+ |Under review |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do) to new documents |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |2.21+ |16.0.11231+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md)|
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do) to existing documents |Current Channel: 2208+ <br /><br> Monthly Enterprise Channel: 2207+  <br /><br> Semi-Annual Enterprise Channel: 2302+ |16.63+ |Under review |Under review |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+  <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |2.21+ |16.0.11231+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |2.21+ | 16.0.11231+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Mark the content](sensitivity-labels.md#what-sensitivity-labels-can-do) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |2.21+ |16.0.11231+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Dynamic markings with variables](sensitivity-labels-office-apps.md#dynamic-markings-with-variables) |Current Channel: 2010+ <br /><br> Monthly Enterprise Channel: 2010+ <br /><br> Semi-Annual Enterprise Channel: 2102+ |16.42+ |2.42+ |16.0.13328+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |2.21+ |16.0.11231+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Let users assign permissions: <br /> - Prompt users for custom permissions (users and groups)](encryption-sensitivity-labels.md#let-users-assign-permissions) |Current Channel: 2004+ <br /><br> Monthly Enterprise Channel: 2004+ <br /><br> Semi-Annual Enterprise Channel: 2008+ |16.35+  |Under review | Under review | [Preview: Rolling out](sensitivity-labels-sharepoint-onedrive-files.md#support-for-labels-configured-for-user-defined-permissions) |
|[Let users assign permissions: <br /> - Prompt users for custom permissions (users, groups, and organizations)](encryption-sensitivity-labels.md#support-for-organization-wide-custom-permissions)|Current Channel: 2212+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+|Under review|Under review|Under review| [Preview: Rolling out](sensitivity-labels-sharepoint-onedrive-files.md#support-for-labels-configured-for-user-defined-permissions)|
|[Audit label-related user activity](sensitivity-labels-office-apps.md#auditing-labeling-activities): <br /> - Excludes encryption details |Current Channel: 2011+ <br /><br> Monthly Enterprise Channel: 2011+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.43+ |2.46+ |16.0.13628+ |Yes |
|[Audit label-related user activity](sensitivity-labels-office-apps.md#auditing-labeling-activities): <br /> - Includes encryption details |Current Channel: 2301+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |16.70+ |2.70+ |16.0.16130+ |Under review |
|[Require users to apply a label to their email and documents](sensitivity-labels-office-apps.md#require-users-to-apply-a-label-to-their-email-and-documents) |Current Channel: 2101+ <br /><br> Monthly Enterprise Channel: 2101+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.45+ |2.47+ |16.0.13628+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Apply a sensitivity label to files automatically](apply-sensitivity-label-automatically.md) <br /> - Using sensitive info types                    |Current Channel: 2009+ <br /><br> Monthly Enterprise Channel: 2009+ <br /><br> Semi-Annual Enterprise Channel: 2102+ |16.44+ |Under review | Under review |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Apply a sensitivity label to files automatically](apply-sensitivity-label-automatically.md) <br /> - Using trainable classifiers |Current Channel: 2105+ <br /><br> Monthly Enterprise Channel: 2105+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.49+ |Under review |Under review |Under review |
|[Support co-authoring and AutoSave](sensitivity-labels-coauthoring.md) for labeled and encrypted documents |Current Channel: 2107+ <br /><br> Monthly Enterprise Channel: 2107+ <br /><br> Semi-Annual Enterprise Channel: 2202+ |16.51+ |2.58+ |16.0.14931+ |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[PDF support](sensitivity-labels-office-apps.md#pdf-support)|Current Channel: 2208+ <br /><br> Monthly Enterprise Channel: 2209+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Under review |Under review |Under review |[Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) and [display label color](sensitivity-labels-office-apps.md#label-colors) |Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2303+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Under review |Under review |Under review |Under review |
|[Default sublabel for parent label](sensitivity-labels-office-apps.md#specify-a-default-sublabel-for-a-parent-label)|Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Under review |Under review |Under review |Under review |
|[Scope labels to files or emails](sensitivity-labels-office-apps.md#scope-labels-to-just-files-or-emails) |Current Channel: 2301+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel:2302+ |16.69+ |Preview: Rolling out to [Beta Channel](https://insider.office.com/join/ios) |Preview: Rolling out to [Beta Channel](https://insider.office.com/join/android)| [Yes - opt-in](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Double Key Encryption (DKE)](encryption-sensitivity-labels.md#double-key-encryption) |Preview: [Current Channel (Preview)](https://office.com/insider) |Under review |Under review |Under review| Under review |

## Sensitivity label capabilities in Outlook

The numbers listed are the minimum Office application versions required for each capability. 

> [!NOTE]
> For Windows and the Semi-Annual Enterprise Channel, the minimum supported version numbers might not yet be released. [Learn more](/officeupdates/update-history-microsoft365-apps-by-date#supported-versions)

|Capability |Outlook for Windows |Outlook for Mac |Outlook on iOS |Outlook on Android |Outlook on the web |
|-----------|-------------------:|----------------|---------------|-------------------|-------------------|
|[AIP add-in disabled by default](sensitivity-labels-aip.md#how-to-configure-newer-versions-of-office-to-enable-the-aip-add-in)|Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2303+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Not relevant  |Not relevant |Not relevant|Not relevant |
|Manually apply, change, or remove label <br /> - [Files and emails](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)|Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ | 4.7.1+ | 4.0.39+ | Yes |
|Manually apply, change, or remove label <br /> - [Calendar items](sensitivity-labels-meetings.md)| Current Channel: Rolling out to 2302+ |16.70+ <sup>\*</sup> |Under review |Under review |Yes |
|[Multi-language support](create-sensitivity-labels.md#additional-label-settings-with-security--compliance-powershell)|Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ | Yes |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)|Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes |
|[Mark the content](sensitivity-labels.md#what-sensitivity-labels-can-do) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes |
|[Dynamic markings with variables](sensitivity-labels-office-apps.md#dynamic-markings-with-variables) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes|
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes |
|[Let users assign permissions: <br /> - Do Not Forward](encryption-sensitivity-labels.md#let-users-assign-permissions) |Current Channel: 1910+ <br /><br> Monthly Enterprise Channel: 1910+ <br /><br> Semi-Annual Enterprise Channel: 2002+ |16.21+ |4.7.1+ |4.0.39+ |Yes |
|[Let users assign permissions: <br /> - Encrypt-Only](encryption-sensitivity-labels.md#let-users-assign-permissions) |Current Channel: 2011+ <br /><br> Monthly Enterprise Channel: 2011+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.48+ <sup>\*</sup> |4.2112.0+ |4.2112.0+ |Yes |
|[Require users to apply a label to their email and documents](sensitivity-labels-office-apps.md#require-users-to-apply-a-label-to-their-email-and-documents) |Current Channel: 2101+ <br /><br> Monthly Enterprise Channel: 2101+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.43+ <sup>\*</sup> |4.2111+ |4.2111+ |Yes |
|[Audit label-related user activity](sensitivity-labels-office-apps.md#auditing-labeling-activities): <br /> - Excludes encryption details | Current Channel: 2011+ <br /><br> Monthly Enterprise Channel: 2011+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.51+ <sup>\*</sup> |4.2126+ |4.2126+ |Yes |
|[Audit label-related user activity](sensitivity-labels-office-apps.md#auditing-labeling-activities): <br /> - Includes encryption details | Current Channel: 2301+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |16.70+ <sup>\*</sup> |4.2309+|4.2309+ |Under review |
|[Apply a sensitivity label to emails automatically](apply-sensitivity-label-automatically.md) <br /> - Using sensitive info types |Current Channel: 2009+ <br /><br> Monthly Enterprise Channel: 2009+ <br /><br> Semi-Annual Enterprise Channel: 2102+ |16.44+ <sup>\*</sup> |Under review |Under review |Yes |
|[Apply a sensitivity label to emails automatically](apply-sensitivity-label-automatically.md) <br /> - Using trainable classifiers |Current Channel: 2105+ <br /><br> Monthly Enterprise Channel: 2105+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.49+ |Under review |Under review |Yes |
|[Different settings for default label and mandatory labeling](sensitivity-labels-office-apps.md#outlook-specific-options-for-default-label-and-mandatory-labeling) |Current Channel: 2105+ <br /><br> Monthly Enterprise Channel: 2105+ <br /><br> Semi-Annual Enterprise Channel: 2108+ |16.43+ <sup>\*</sup> |4.2111+ |4.2111+ |Yes |
|[PDF support](sensitivity-labels-office-apps.md#pdf-support) |Current Channel: 2205+ <br /><br> Monthly Enterprise Channel: 2205+ <br /><br> Semi-Annual Enterprise Channel: 2302+| Under review |Under review |Under review |Under review |
|[Apply S/MIME protection](sensitivity-labels-office-apps.md#configure-a-label-to-apply-smime-protection-in-outlook) |Current Channel: 2211+ <br /><br> Monthly Enterprise Channel: 2211+ <br /><br> Semi-Annual Enterprise Channel: 2302+ | 16.61+ <sup>\*</sup> |4.2226+ |4.2203+ |Yes |
|[Sensitivity bar](sensitivity-labels-office-apps.md#sensitivity-bar) |Current Channel: 2302+<br /><br> Monthly Enterprise Channel: 2303+ <br /><br> Semi-Annual Enterprise Channel: 2302+  |Under review |4.2326.0+ |4.2316.0+ |Under review |
|[Display label color](sensitivity-labels-office-apps.md#label-colors) |Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2303+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Preview: [Current Channel (Preview)](https://office.com/insider) <sup>\*</sup> |4.2316.0+ |4.2316.0+ |Under review |
|[Default sublabel for parent label](sensitivity-labels-office-apps.md#specify-a-default-sublabel-for-a-parent-label)|Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Under review |Under review |Under review |Under review |
|[Scope labels to files or emails](sensitivity-labels-office-apps.md#scope-labels-to-just-files-or-emails) |Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Rolling out: 16.70+ <sup>\*</sup> | Rolling out: 4.2309+ |Rolling out: 4.2309+ |Yes |
|[Preventing oversharing as DLP policy tip](dlp-create-deploy-policy.md#scenario-2-show-policy-tip-as-oversharing-popup)|Current Channel: 2305+ <br /><br> Monthly Enterprise Channel: 2307+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Under review |Under review |Under review |Under review |
|[Label inheritance from email attachments](sensitivity-labels-office-apps.md#configure-label-inheritance-from-email-attachments) |Current Channel: 2302+ <br /><br> Monthly Enterprise Channel: 2302+ <br /><br> Semi-Annual Enterprise Channel: 2302+ |Under review |Under review |Under review |Under review |
|[Double Key Encryption (DKE)](encryption-sensitivity-labels.md#double-key-encryption) |Preview: [Current Channel (Preview)](https://office.com/insider) |Under review |Under review |Under review| Under review |

**Footnotes:**

<sup>\*</sup>
Requires the [new Outlook for Mac](https://support.microsoft.com/office/the-new-outlook-for-mac-6283be54-e74d-434e-babb-b70cefc77439)

## Future releases

Use the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=Microsoft%20Information%20Protection&searchterms=label) for details about new labeling capabilities that are planned for future releases.
