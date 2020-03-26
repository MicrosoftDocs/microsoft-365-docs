---
title: "Use sensitivity labels in Office apps"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn about how users work with sensitivity labels in Office apps for the desktop, Office apps for mobile, and Office apps for the web. Find out which apps support sensitivity labels."
---

# Use sensitivity labels in Office apps

When you have [published](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy) sensitivity labels from the Microsoft 365 compliance center or equivalent labeling center, they start to appear in Office apps for users to classify and protect data as it's created or edited.

Use the information in this article to help you successfully manage sensitivity labels in Office apps. For example, identify the minimum versions of apps you need to support built-in labeling, and understand interactions with the Azure Information Protection unified labeling client and compatibility with other apps and services.

## Subscription and licensing requirements for sensitivity labels

Users must have at least one of the following licenses assigned:

- [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above

- [Office 365 E3](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e3-business-software) or above

- [Azure Information Protection Premium P1](https://azure.microsoft.com/pricing/details/information-protection/) or above

The Office built-in labeling client supports sensitivity labels with a subscription edition of Office. This labeling client doesn't support standalone editions of Office, such as Office 2016 or Office 2019. To use sensitivity labels with these editions of Office on Windows computers, install the Azure Information Protection unified labeling client.

To use automatic or recommended sensitivity labeling, your users need one of the following licenses:

- [Microsoft 365 E5](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above

- [Office 365 E5](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e5-business-software) or above

- [Azure Information Protection Premium P2](https://azure.microsoft.com/pricing/details/information-protection/)

## Support for sensitivity label capabilities in apps

For each capability, the following tables list the minimum version you need for that app to support sensitivity labels using built-in labeling. Or, if the label capability is in public preview or under review for a future release.

New versions of the apps are made available at different times for different update channels. For more information, including how to configure your update channel so that you can test a new labeling capability that you're interested in, see [Overview of update channels for Office 365 ProPlus](https://docs.microsoft.com/DeployOffice/overview-of-update-channels-for-office-365-proplus). New capabilities that are in private preview are not included in the table but you might be able to join these previews by nominating your organization for the [Microsoft Information Protection private preview program](https://aka.ms/mip-preview).

Additional capabilities are available when you install the Azure Information Protection unified labeling client, which runs on Windows computers only. For these details, see [Compare the labeling clients for Windows computers](https://docs.microsoft.com/azure/information-protection/rms-client/use-client#compare-the-labeling-clients-for-windows-computers).

### Sensitivity label capabilities in Word, Excel, and PowerPoint

For iOS and Android: Where these have a minimum version listed, the sensitivity label capability is also supported with the [Office app](https://www.microsoft.com/en-us/microsoft-365/blog/2020/02/19/new-office-app-android-ios-available/).

|Capability                                                                                                        |Windows Desktop |Mac Desktop |iOS    |Android      |Web                                                         |
|------------------------------------------------------------------------------------------------------------------|----------------|------------|-------|-------------|------------------------------------------------------------|
|[Manually apply, change, or remove label](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | Under review                                                        |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)                     | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Mark the content](sensitivity-labels.md#what-sensitivity-labels-can-do)                                              | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | Preview: In [Monthly Channel (Targeted)](https://docs.microsoft.com/DeployOffice/overview-of-update-channels-for-office-365-proplus#monthly-channel-for-office-365-proplus)            | Preview: In [Office Insider](https://office.com/insider)        | Under review   | Under review         | Under review                                                        |
|[View label usage with label analytics](label-analytics.md) and send data for administrators                      | Under review            | Under review        | Under review   | Under review         | Under review                                                        |
|[Require users to apply a label to their email and documents](sensitivity-labels.md#what-label-policies-can-do)   | Under review            | Under review        | Under review   | Under review         | Under review                                                        |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)                    | Preview: In [Office Insider](https://office.com/insider)                                  | Under review | Under review | Under review | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|Support [AutoSave](https://support.office.com/article/6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) and [coauthoring](https://support.office.com/article/ee1509b4-1f6e-401e-b04a-782d26f564a4) on labeled and protected documents | Under review | Under review | Under review | Under review | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|

### Sensitivity label capabilities in Outlook

|Capability                                                                                                        |Outlook on Windows Desktop |Outlook on Mac Desktop  |Outlook on iOS |Outlook on Android |Outlook on the web |
|------------------------------------------------------------------------------------------------------------------|---------------------------|------------------------|---------------|-------------------|-------------------|
|[Manually apply, change, or remove label](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)                     | 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Mark the content](sensitivity-labels.md#what-label-policies-can-do)                                              | 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | 1910+                     | 16.21+                 | 4.7.1+         | 4.0.39+           | Yes               |
|[View label usage with label analytics](label-analytics.md) and send data for administrators                      | Under review                       | Under review                    | Under review           | Under review               | Under review               |
|[Require users to apply a label to their email and documents](sensitivity-labels.md#what-label-policies-can-do)   | Under review                       | Under review                    | Under review           | Under review               | Under review               |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)                    | Preview: Rolling out to [Office Insider](https://office.com/insider)                       | Under review                    | Under review           | Under review               | Yes |
|

## Office built-in labeling client and other labeling solutions

The Office built-in labeling client downloads sensitivity labels and sensitivity label policy settings from the following admin centers:

- Microsoft 365 compliance center
- Microsoft 365 security center
- Office 365 Security & Compliance Center

To use the Office built-in labeling client, you must have one or more [label policies published](create-sensitivity-labels.md#publish-sensitivity-labels-by-creating-a-label-policy) to users from one of the listed admin centers and a [supported version of Office](#support-for-sensitivity-label-capabilities-in-apps).

If both of these conditions are met but you need to disable the Office built-in labeling client, use the following Group Policy setting:

1. Navigate to **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**

2. Set **Use the Sensitivity feature in Office to apply and view sensitivity labels** to **0**. 
 
Deploy this setting by using Group Policy, or by using the [Office cloud policy service](https://docs.microsoft.com/DeployOffice/overview-office-cloud-policy-service). The setting takes affect when Office apps restart.

### Office built-in labeling client and the Azure Information Protection client

If users have one of the Azure Information Protection clients installed ([unified labeling client](https://docs.microsoft.com/azure/information-protection/rms-client/aip-clientv2) or [classic client](https://docs.microsoft.com/azure/information-protection/rms-client/aip-client)), by default, the built-in labeling client is turned off in their Office apps. 

To use built-in labeling rather than the Azure Information Protection client for Office apps, use the Group Policy setting in the previous section. Alternatively, disable or uninstall the Office add-in, **Azure Information Protection**. This method is particularly suitable for a single computer, and ad-hoc testing. For instructions, see [View, manage, and install add-ins in Office programs](https://support.office.com/article/16278816-1948-4028-91e5-76dca5380f8d). 

When you disable or uninstall this Office add-in, the Azure Information Protection client remains installed so that you can continue to label files outside your Office apps. For example, by using File Explorer, or PowerShell.

For information about which features are supported by the Azure Information Protection clients and the Office built-in labeling client, see [Choose which labeling client to use for Windows computers](https://docs.microsoft.com/azure/information-protection/rms-client/use-client#choose-which-labeling-client-to-use-for-windows-computers) from the Azure Information Protection documentation.

## Protection templates and sensitivity labels

Administrator-defined [protection templates](https://docs.microsoft.com/azure/information-protection/configure-policy-templates), such as those you define for Office 365 Message Encryption, aren't visible in Office apps when you're using built-in labeling. This simplified experience reflects that there's no need to select a protection template, because the same settings are included with sensitivity labels that have encryption enabled.

If you need to convert existing protection templates to labels, use the Azure portal and the following instructions: [To convert templates to labels](https://docs.microsoft.com/azure/information-protection/configure-policy-templates#to-convert-templates-to-labels).

## Information Rights Management (IRM) options and sensitivity labels

Sensitivity labels that you configure to apply encryption remove the complexity from users to specify their own encryption settings. In many Office apps, these individual encryption settings can still be manually configured by users by using Information Rights Management (IRM) options. For example, for Windows apps:

- For a document:  **File** > **Info** > **Protect Document** > **Restrict Access**
- for an email: From the **Options** tab > **Encrypt** 
  
When users initially label a document or email, they can always override your label configuration settings with their own encryption settings. For example:

- A user applies the **Confidential \ All Employees** label to a document and this label is configured to apply encryption settings for all users in the organization. This user then manually configures the IRM settings to restrict access to a user outside your organization. The end result is a document that's labeled **Confidential \ All Employees** and encrypted, but users in your organization can't open it as expected.

- A user applies the **Confidential \ Recipients Only** label to an email and this email is configured to apply the encryption setting of **Do Not Forward**. This user then manually configures the IRM settings so that the email is unrestricted. The end result is the email can be forwarded by recipients, despite having the **Confidential \ Recipients Only** label.

- A user applies the **General** label to a document, and this label isn't configured to apply encryption. This user then manually configures the IRM settings to restrict access to the document. The end result is a document that's labeled **General** but that also applies encryption so that some users can't open it as expected.

If the document or email is already labeled, a user can do any of these actions if the content isn't already encrypted, or they have the [usage right](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#usage-rights-and-descriptions) Export or Full Control. 

For a more consistent label experience with meaningful reporting, provide appropriate labels and guidance for users to apply only labels to protect documents. For example:

- For exception cases where users must assign their own permissions, provide labels that [let users assign their own permissions](encryption-sensitivity-labels.md#let-users-assign-permissions). 

- Instead of users manually removing encryption after selecting a label that applies encryption, provide a sublabel alternative when users need a label with the same classification, but no encryption. Such as:
    - **Confidential \ All Employees**
    - **Confidential \ Anyone (no encryption)**

> [!NOTE]
> If users manually remove encryption from a labeled document that's stored in SharePoint or OneDrive and you've [enabled sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md), the label encryption will be automatically restored the next time the document is accessed or downloaded. 

## Apply sensitivity labels to files, emails, and attachments

Users can apply just one label at a time for each document or email.

When you label an email message that has attachments, the attachments don't inherit the label with one exception:

- The attachment is an Office document with a label that doesn't apply encryption, and the label you apply to the email message applies encryption. In this case, the emailed Office document inherits the email's label with its encryption settings.

Otherwise: 

- If the attachments have a label, they keep their originally applied label.
- If the attachments are encrypted without a label, the encryption remains but they aren't labeled.
- If the attachments don't have a label, they remain unlabeled.

## Sensitivity label compatibility

**With RMS-enlightened apps**: If you open a labeled and encrypted document or email in an [RMS-enlightened application](https://docs.microsoft.com/azure/information-protection/requirements-applications#rms-enlightened-applications) that doesn't support sensitivity labels, the app still enforces encryption and rights management.

**With the Azure Information Protection client**: You can view and change sensitivity labels that you apply to documents and emails with the Office built-in labeling client by using the Azure Information Protection client, and the other way around.

**With other versions of Office**: Any authorized user can open labeled documents and emails in other versions of Office. However, you can only view or change the label in supported Office versions or by using the Azure Information Protection client. Supported Office app versions are listed in the [previous section](#support-for-sensitivity-label-capabilities-in-apps).

## Support for SharePoint and OneDrive files protected by sensitivity labels

To use the Office built-in labeling client with Office on the web for documents in OneDrive for Business or SharePoint Online, make sure you've opted-in to the preview to [enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

## When Office 365 applies content marking and encryption

Office 365 applies content marking and encryption with a sensitivity label differently, depending on the app you use.

| App | Content marking | Encryption |
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After Exchange Online sends the email | Immediately |
| Outlook on the web, iOS, and Android | After Exchange Online sends the email | After Exchange Online sends the email |
|

## End-user documentation

- [Apply sensitivity labels to your documents and email within Office](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)

- [Known issues when you apply sensitivity labels to your Office files](https://support.office.com/article/known-issues-when-you-apply-sensitivity-labels-to-your-office-files-b169d687-2bbd-4e21-a440-7da1b2743edc)
