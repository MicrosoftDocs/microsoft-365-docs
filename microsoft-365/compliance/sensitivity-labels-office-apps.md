---
title: "Sensitivity labels in Office apps"
ms.author: greglin
author: greg-lindsay
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn about how users work with sensitivity labels in Office apps for Windows and Office apps for the web. Find out which apps support sensitivity labels."
---

# Sensitivity labels in Office apps

Read this article to find out:

- Requirements for your environment before you apply sensitivity labels to email, files, and attachments.
- Which sensitivity label capabilities are supported by each Office app.
- What happens when you combine sensitivity labels with other Microsoft security and compliance technologies that work with Office apps.
- How people in your organization can use sensitivity labels when they work with Office apps for Windows and Office apps for the web.
- Where to go to get people in your organization started with sensitivity labels.

## Requirements for sensitivity labels for Outlook on all platforms

In your label configuration, if you turn on content marking, you must be using Exchange Online for that content marking to be inserted in transit.

## Subscription and licensing requirements for sensitivity labels

- Users must have at least one of the following licenses assigned:
  - [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above
  - [Office 365 E3](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e3-business-software) or above
  - [Azure Information Protection Premium P1](https://azure.microsoft.com/pricing/details/information-protection/) or above

Office 365 only supports sensitivity labels with a subscription and not with a non-subscription version such as Office 2016 or Office 2019. However, you can use the Azure Information Protection unified labeling client in the [versions of Office listed here](https://docs.microsoft.com/azure/information-protection/requirements#applications).

## Support for sensitivity label capabilities in Word, Excel, and PowerPoint

> [!WARNING]
> @REVIEWERS - Mike, I need you to vet this line: Where support exists for a capability, the following table provides the minimum build number you need to use sensitivity labels for the app. TBD indicates that we don't yet have support for that capability on that platform. For information about future releases, and upcoming features, see *** MIKE I need a link here.

|Capability                                                                                                        |Windows Desktop |Mac Desktop |iOS    |Android      |Web                |
|------------------------------------------------------------------------------------------------------------------|----------------|------------|-------|-------------|-------------------|
|[Manually apply, change, or remove label](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| 1910+          | 16.21.0+   | 2.21+ | 16.0.11231+ | Evergreen (date?) |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | 1910+          | 16.21.0+   | 2.21+ | 16.0.11231+ | Evergreen (date?) |
|[Require a justification for changing a label](sensitivity-labels.md#what-label-policies-can-do)                  | 1910+          | 16.21.0+   | 2.21+ | 16.0.11231+ | Evergreen (date?) |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | 1910+          | 16.21.0+   | 2.21+ | 16.0.11231+ | Evergreen (date?) |
|[Mark the content](sensitivity-labels.md#what-label-policies-can-do)                                              | 1910+          | 16.21.0+   | 2.21+ | 16.0.11231+ | Evergreen (date?) |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | 1910+          | 16.21.0+   | 2.21+ | 16.0.11231+ | Evergreen (date?) |
|[Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | TBD            | TBD        | TBD   | TBD         | TBD               |
|[View label usage with label analytics](label-analytics.md) and send data for administrators                      | TBD            | TBD        | TBD   | TBD         | TBD               |
|[Require users to apply a label to their email and documents](sensitivity-labels.md#what-label-policies-can-do)   | TBD            | TBD        | TBD   | TBD         | TBD               |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)                    | TBD            | TBD        | TBD   | TBD         | TBD               |
|Support [AutoSave](https://support.office.com/article/6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5) and [co-authoring](https://support.office.com/article/ee1509b4-1f6e-401e-b04a-782d26f564a4) on labeled and protected documents| TBD | TBD | TBD | TBD | TBD |
|

## Support for sensitivity label capabilities in Outlook

> [!WARNING]
> @REVIEWERS - Mike, I need you to vet this line same as above: Where support exists for a capability, the following table provides the minimum build number you need to use sensitivity labels for that type (hard to use 'version' here because of build #) of Outlook. TBD indicates that we don't yet have support for that capability for that *type*(?) of Outlook. For information about future releases, and upcoming features, see *** MIKE I need a link here. Also, Support AutoSave and co-authoring on labeled and protected documents is n/a for Outlook, so it's not in this table.

|Capability                                                                                                        |Outlook on Windows Desktop |Outlook on Mac Desktop  |Outlook on iOS |Outlook on Android |Outlook on the web |
|------------------------------------------------------------------------------------------------------------------|---------------------------|------------------------|---------------|-------------------|-------------------|
|[Manually apply, change, or remove label](https://support.office.com/article/2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)| 1910+                     | 16.21.0+               | TBD           | TBD               | Evergreen (date?) |
|[Apply a default label](sensitivity-labels.md#what-label-policies-can-do)                                         | 1910+                     | 16.21.0+               | TBD           | TBD               | Evergreen (date?) |
|[Require a justification for changing a label](sensitivity-labels.md#what-label-policies-can-do)                  | 1910+                     | 16.21.0+               | TBD           | TBD               | Evergreen (date?) |
|[Provide help link to a custom help page](sensitivity-labels.md#what-label-policies-can-do)                       | 1910+                     | 16.21.0+               | TBD           | TBD               | Evergreen (date?) |
|[Mark the content](sensitivity-labels.md#what-label-policies-can-do)                                              | 1910+                     | 16.21.0+               | TBD           | TBD               | Evergreen (date?) |
|[Assign permissions now](encryption-sensitivity-labels.md#assign-permissions-now)                                 | 1910+                     | 16.21.0+               | TBD           | TBD               | Evergreen (date?) |
|[Let users assign permissions](encryption-sensitivity-labels.md#let-users-assign-permissions)                     | 1910+                     | 16.21.0+               | TBD           | TBD               | TBD               |
|[View label usage with label analytics](label-analytics.md) and send data for administrators                      | TBD                       | TBD                    | TBD           | TBD               | TBD               |
|[Require users to apply a label to their email and documents](sensitivity-labels.md#what-label-policies-can-do)   | TBD                       | TBD                    | TBD           | TBD               | TBD               |
|[Apply a sensitivity label to content automatically](apply-sensitivity-label-automatically.md)                    | TBD                       | TBD                    | TBD           | TBD               | TBD               |
|

> WARNING!
> @KC the last row is something that neither aip client can do and it will NEVER be able to. only the office built-in thingie will. not until next year, not scheduled for ignite

## Decide which information protection client to use to apply sensitivity labels in Office apps

> WARNING!
> The AIP client is an add-in for Office that provides *** for applying sensitivity labels. lets you do stuff with sensitivity labels in Office. It was released 3 years ago and it only works in the Windows platform of Office. (carol bailey). MIP sensitivity label platform came out about a year ago.
we want folks to use the S&CC. we don't yet have parity with the AIP client. for Office 365, you can use Azure Portalv1, Azure Portalv2, and S&CC. Azure Portalv2 and S&CC provide access to additional platforms like iOS and Android. (customers need to migrate from v1 to v2 to get the support for that or go straight to S&CC.) Now office on windows has some of this capability built-in. like the built-in sensitivity button. for folks that don't have the EMS SKU this is great. or it's good for folks that don't want to deploy add-ins on top of office. it's faster, etc. we don't expect a ton of aip customers to swap over because of the parity gap. Folks should use the S&CC. in the future, we will have parity, Carol has a table identifying which client to use when. get the link from her. there are two aip clients (aipv1 and unified aip client or aipv2).

If you have the Azure Information Protection add-in installed on your computer, and you want to use sensitivity labels with Office, you'll need to override the Azure Information Protection add-in. To do this, you can either temporarily or permanently uninstall or disable the add-in.

1. Do either of the following:

    **For multiple computers:** Configure the **Use the Sensitivity feature in Office to apply and view sensitivity labels** Group Policy setting. Find this setting under **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**. Deploy this setting through traditional group policy deployment mechanisms, or by using the [Office cloud policy service](https://docs.microsoft.com/DeployOffice/overview-office-cloud-policy-service).

    **For a single computer:** See View, manage, and install add-ins in Office programs for information about how to [permanently disable or remove](https://support.office.com/article/16278816-1948-4028-91e5-76dca5380f8d) the Azure Information Protection add-in on a single computer.

2. Restart all Office applications.

## Protection templates and sensitivity labels

Administrator-defined [protection templates](https://docs.microsoft.com/azure/information-protection/configure-policy-templates) are hidden from the Office user experience when sensitivity labels are enabled because they are redundant with sensitivity labels that have encryption enabled.

## Apply classifications to files, emails, and attachments

Users can apply just one label at a time for each document or email.

When you label an email message that has attachments, those attachments do not inherit the same label. The attachments remain either without a label or retain a separately applied label. However, if the label for the email applies protection, that protection is applied to Office attachments.

## Apply classifications to groups and sites

> [!WARNING]
> @Sanjoyan what does sensitivity labels for groups and sites look like to end users? Anything to mention here to admins for client side?

## When Office 365 applies marks and encryption to content

Office 365 applies content marks or encryption with a sensitivity label differently depending on the application you use.

| Application | Content marking | Encryption |
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After Exchange Online sends the email | Immediately |
| Outlook on the web, iOS, and Android | After Exchange Online sends the email | After Exchange Online sends the email |
|

## Additional resources

[Frequently asked questions about classification and labeling in Azure Information Protection](https://docs.microsoft.com/azure/information-protection/faqs-infoprotect)

[Apply sensitivity labels to your documents and email within Office](https://support.office.com/article/apply-sensitivity-labels-to-your-documents-and-email-within-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
