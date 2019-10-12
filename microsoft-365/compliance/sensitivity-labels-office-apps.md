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
description: "Learn about how users work with sensitivity labels in Office apps for Windows and Office apps for the web."
---

# Sensitivity labels in Office apps

Read this article to find out:

- Requirements for your environment before you apply sensitivity labels to email, files, and attachments.
- What happens when you combine sensitivity labels with other Microsoft security and compliance technologies that work with Office apps.
- How people in your organization can use sensitivity labels when they work with Office apps for Windows and Office apps for the web.
- Where to go to get people in your organization started with sensitivity labels.

## Requirements for sensitivity labels for Office for Windows

The Azure Information Protection client must not be running in Office. For information, see [Use sensitivity labels alongside the Azure Information Protection client in Office for Windows](#use-sensitivity-labels-alongside-the-azure-information-protection-client-in-office-for-windows).

## Requirements for sensitivity labels for Outlook on all platforms

In your label configuration, if you turn on content marking, you must be using Exchange Online for that content marking to be inserted in transit.

## Subscription and licensing requirements for sensitivity labels

- Users must have at least one of the following licenses assigned:
  - [Microsoft 365 E5](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above
  - [Office 365 E3](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e3-business-software) or above
  - [Azure Information Protection Premium P1](https://azure.microsoft.com/pricing/details/information-protection/) or above

Office 365 only supports sensitivity labels with a subscription and not with a non-subscription version such as Office 2016 or Office 2019. However, you can use the Azure Information Protection unified labeling client in the [versions of Office listed here](https://docs.microsoft.com/azure/information-protection/requirements#applications).

## Use sensitivity labels alongside the Azure Information Protection client in Office for Windows

To use sensitivity labels if you have the Azure Information Protection client installed:

1. Do either of the following:
   - Configure the **Use the Sensitivity feature in Office to apply and view sensitivity labels** Group Policy setting. Find this setting under **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**.

    You can deploy this setting through traditional group policy deployment mechanisms, or by using the [Office cloud policy service](https://docs.microsoft.com/DeployOffice/overview-office-cloud-policy-service).

   - Uninstall or [disable](https://support.office.com/article/view-manage-and-install-add-ins-in-office-programs-16278816-1948-4028-91e5-76dca5380f8d) the Azure Information Protection client.

2. Restart all Office applications.

## Protection templates and sensitivity labels

Administrator-defined [protection templates](https://docs.microsoft.com/azure/information-protection/configure-policy-templates) are hidden from the Office user experience when sensitivity labels are enabled because they are redundant with sensitivity labels that have encryption enabled.

## Apply classifications to files, emails, and attachments

Users can apply just one label at a time for each document or email.

When you label an email message that has attachments, those attachments do not inherit the same label. The attachments remain either without a label or retain a separately applied label. However, if the label for the email applies protection, that protection is applied to Office attachments.

## Apply classifications to groups and sites

> [!WARNING]
> @KC identify duplicate info with this and try to work in that this is a limit not a how to. Same with previous section.

## When Office 365 applies marks and encryption to content

Office 365 applies content marks or encryption with a sensitivity label differently depending on the application you use.

| Application | Content marking | Encryption
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After Exchange Online sends the email | Immediately |
| Outlook on the web, iOS, and Android | After Exchange Online sends the email | After Exchange Online sends the email |

## Additional resources

[Frequently asked questions about classification and labeling in Azure Information Protection](https://docs.microsoft.com/azure/information-protection/faqs-infoprotect)

[Apply sensitivity labels to your documents and email within Office](https://support.office.com/article/apply-sensitivity-labels-to-your-documents-and-email-within-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
