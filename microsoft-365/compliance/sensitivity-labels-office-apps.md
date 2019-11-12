---
title: "Sensitivity labels in Office apps"
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 11/01/2019
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

# Sensitivity labels in Office apps

This article describes:

- Requirements for your environment before you apply sensitivity labels to email, files, and attachments.
- Which sensitivity label capabilities are supported by each Office app.
- What happens when you combine sensitivity labels with other Microsoft security and compliance technologies that work with Office apps.
- How people in your organization can use sensitivity labels when they work with Office apps for Windows and Office apps for the web.
- Where to go to get people in your organization started with sensitivity labels.

## Subscription and licensing requirements for sensitivity labels

Users must have at least one of the following licenses assigned:

- [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above

- [Office 365 E3](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e3-business-software) or above

- [Azure Information Protection Premium P1](https://azure.microsoft.com/pricing/details/information-protection/) or above

The Office built-in labeling client supports sensitivity labels with a subscription version of Office. The client doesn't support standalone versions, for example, Office 2016 or Office 2019.

To use automatic or recommended sensitivity labeling, your users need one of the following licenses:

- [Microsoft 365 E5](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above

- [Office 365 E5](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e5-business-software) or above

- [Azure Information Protection Premium P2](https://azure.microsoft.com/pricing/details/information-protection/) or above

## Support for sensitivity label capabilities in Word, Excel, and PowerPoint

For each capability, the following table lists the minimum version you need for that app. TBD means that you can't use that capability on that platform.

|Capability                                                                                                        |Windows Desktop |Mac Desktop |iOS    |Android      |Web                                                         |
|------------------------------------------------------------------------------------------------------------------|----------------|------------|-------|-------------|------------------------------------------------------------|
|[Manually apply, change, or remove label](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | TBD                                                        |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)                     | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Mark the content](sensitivity-labels.md#what-label-policies-can-do)                                              | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | 1910+          | 16.21+     | 2.21+ | 16.0.11231+ | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|[Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | 1910+          | 16.21+     | TBD   | TBD         | TBD                                                        |
|[View label usage with label analytics](label-analytics.md) and send data for administrators                      | TBD            | TBD        | TBD   | TBD         | TBD                                                        |
|[Require users to apply a label to their email and documents](sensitivity-labels.md#what-label-policies-can-do)   | TBD            | TBD        | TBD   | TBD         | TBD                                                        |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)                    | Preview: In roll-out to [Office Insider](https://office.com/insider)                                  | TBD | TBD | TBD | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|Support [AutoSave](https://support.office.com/article/6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) and [coauthoring](https://support.office.com/article/ee1509b4-1f6e-401e-b04a-782d26f564a4) on labeled and protected documents | TBD | TBD | TBD | TBD | [Preview](sensitivity-labels-sharepoint-onedrive-files.md) |
|

## Support for sensitivity label capabilities in Outlook

For each capability, the following table lists the minimum version you need for that app. TBD means that you can't use that capability on that platform.

|Capability                                                                                                        |Outlook on Windows Desktop |Outlook on Mac Desktop  |Outlook on iOS |Outlook on Android |Outlook on the web |
|------------------------------------------------------------------------------------------------------------------|---------------------------|------------------------|---------------|-------------------|-------------------|
|[Manually apply, change, or remove label](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[Require a justification to change a label](sensitivity-labels.md#what-label-policies-can-do)                     | 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[Mark the content](sensitivity-labels.md#what-label-policies-can-do)                                              | 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | 1910+                     | 16.21+                 | 4.71+         | 4.0.39+           | Yes               |
|[View label usage with label analytics](label-analytics.md) and send data for administrators                      | TBD                       | TBD                    | TBD           | TBD               | TBD               |
|[Require users to apply a label to their email and documents](sensitivity-labels.md#what-label-policies-can-do)   | TBD                       | TBD                    | TBD           | TBD               | TBD               |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)                    | TBD                       | TBD                    | TBD           | TBD               | Preview: In roll-out to [Targeted release](https://docs.microsoft.com/office365/admin/manage/release-options-in-office-365?view=o365-worldwide) |
|

## About the Office built-in labeling client

The Office built-in labeling client downloads labels and policy settings from the following admin centers:

- Office 365 Security & Compliance Center

- Microsoft 365 security center

- Microsoft 365 compliance center

The Office built-in labeling client is enabled automatically for users who have one or more [label policy published](sensitivity-labels.md#what-label-policies-can-do) to them.

To use the built-in labeling client in Office on Windows, you can't run the Azure Information Protection add-in at the same time in Office. You can either temporarily or permanently uninstall the Azure Information Protection client, or you can leave it installed and configure Office to prevent it from running.

1. Complete one of these options:

    **For multiple computers:** Configure the **Use the Sensitivity feature in Office to apply and view sensitivity labels** Group Policy setting. Find this setting under **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**. Deploy this setting through group policy, or by using the [Office cloud policy service](https://docs.microsoft.com/DeployOffice/overview-office-cloud-policy-service).

    **For a single computer:** See "view, manage, and install add-ins in Office programs," and [permanently disable or remove](https://support.office.com/article/16278816-1948-4028-91e5-76dca5380f8d) the Azure Information Protection add-in on a single computer.

2. Restart all Office applications.

For more information about client apps for information protection, see [The client side of Azure Information Protection](https://docs.microsoft.com/azure/information-protection/rms-client/use-client).

## Protection templates and sensitivity labels

Administrator-defined [protection templates](https://docs.microsoft.com/azure/information-protection/configure-policy-templates), such as those you define for Office 365 Message Encryption, are hidden from the Office user experience when sensitivity labels are enabled because they are redundant with sensitivity labels that have encryption enabled.

## Apply sensitivity labels to files, emails, and attachments

Users can apply just one label at a time for each document or email.

When you label an email message that has attachments, the attachments don't inherit the label. If the attachments had a label they keep that separately applied label. If the attachments didn't have a label, then the attachments remain without a label. However, if the label for the email applies protection, that protection is applied to Office attachments.

## Sensitivity label compatibility

**With RMS-enlightened apps**. If you open a labeled _and encrypted_ document or email in an [RMS-enlightened application](https://docs.microsoft.com/azure/information-protection/requirements-applications#rms-enlightened-applications) that doesn't support sensitivity labels, the app still enforces encryption and rights management.

**With Azure Information Protection client**. You can view and change sensitivity labels that you apply to documents and emails with the Office built-in labeling client with the Azure Information Protection client, and the other way around.

**With other versions of Office**. Any authorized user can open labeled documents and emails in other versions of Office. However, you can only view or change the label in supported Office versions or in the Azure Information Protection client. Supported Office app versions are listed in the tables in this article.

## Support for SharePoint and OneDrive files protected by sensitivity labels

To use the Office built-in labeling client in Office on the web, the document must be located in a OneDrive for Business or SharePoint Online instance that has opted-in to the [Enable sensitivity labels for Office files in SharePoint and OneDrive](sensitivity-labels-sharepoint-onedrive-files.md).

## When Office 365 applies marks and encryption to content

Office 365 applies content marks or encryption with a sensitivity label differently depending on the application you use.

| Application | Content marking | Encryption |
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After Exchange Online sends the email | Immediately |
| Outlook on the web, iOS, and Android | After Exchange Online sends the email | After Exchange Online sends the email |
|

## More resources

[Frequently asked questions about classification and labeling in Azure Information Protection](https://docs.microsoft.com/azure/information-protection/faqs-infoprotect)

[Apply sensitivity labels to your documents and email within Office](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
