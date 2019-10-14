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
- What happens when you combine sensitivity labels with other Microsoft security and compliance technologies that work with Office apps.
- How people in your organization can use sensitivity labels when they work with Office apps for Windows and Office apps for the web.
- Where to go to get people in your organization started with sensitivity labels.

## Requirements for sensitivity labels for Office for Windows

The Azure Information Protection client must not be running in Office. For information, see [Use sensitivity labels alongside the Azure Information Protection client in Office for Windows](#use-sensitivity-labels-alongside-the-azure-information-protection-client-in-office-for-windows).

## Requirements for sensitivity labels for Outlook on all platforms

In your label configuration, if you turn on content marking, you must be using Exchange Online for that content marking to be inserted in transit.

## Subscription and licensing requirements for sensitivity labels

- Users must have at least one of the following licenses assigned:
  - [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above
  - [Office 365 E3](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e3-business-software) or above
  - [Azure Information Protection Premium P1](https://azure.microsoft.com/pricing/details/information-protection/) or above

Office 365 only supports sensitivity labels with a subscription and not with a non-subscription version such as Office 2016 or Office 2019. However, you can use the Azure Information Protection unified labeling client in the [versions of Office listed here](https://docs.microsoft.com/azure/information-protection/requirements#applications).

## What sensitivity label capabilities are supported in Office today?

<table border="1" cellspacing="0" cellpadding="0">
<th><font size="-1">Capability<th><font size="-1">Windows<th><font size="-1">Mac<th colspan="2"><font size="-1">iOS<th colspan="2"><font size="-1">Android<th colspan="2"><font size="-1">Web</tr>
<tr><td>

<td><font size="-1">
Word<br>
Excel<br>
PowerPoint<br>
Outlook


<td><font size="-1">
Word<br>
Excel<br>
PowerPoint<br>
Outlook

<td><font size="-1">
Word<br>
Excel<br>
PowerPoint
<td><font size="-1">
Outlook

<td><font size="-1">
Word<br>
Excel<br>
PowerPoint
<td><font size="-1">
Outlook

<td><font size="-1">
Word<br>
Excel<br>
PowerPoint
<td><font size="-1">
Outlook
</b>
</tr>

<tr>
<td><font size="-1"><a href="https://support.office.com/en-us/article/apply-sensitivity-labels-to-your-documents-and-email-within-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9">Manually apply, change, or remove label</a><td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup><td><font size="-1">Coming soon<sup>3</sup>

<tr>
<td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Apply a default label</a>
<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">If you opt-in to the Public Preview</sup>
<td><font size="-1">Coming soon<sup>3</sup>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require a justification for changing a label</a><sup>1</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Provide help link to a custom help page</a>
<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-sensitivity-labels-can-do">Mark the content</a>
<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font
><td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/en-us/microsoft-365/compliance/encryption-sensitivity-labels#assign-permissions-now">Assign pre-defined permissions</a>
<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>

<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">Coming soon<sup>3</sup>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#let-users-assign-permissions">Let users assign permissions</a>
<td><font size="-1"><b>Yes</b><sup>2</sup><br><font size="-1">1910+</font>

<td><font size="-1"><b>Yes</b><sup>2</sup><br><font size="-1">16.21.0+</font>

<td><font size="-1">TBD
<td><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">TBD<td
><font size="-1">Coming soon<sup>3</sup>
<td><font size="-1">TBD
<td><font size="-1">Coming soon<sup>3</sup>

<tr><td><font size="-1">Send <a href="https://docs.microsoft.com/microsoft-365/compliance/label-analytics">label analytics</a> data for administrators
<td><font size="-1">TBD

<td><font size="-1">TBD

<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD

<tr><td><font size="-1"><a href="https://docs.microsoft.com/en-us/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require users to apply a label to their email and documents</a>
<td><font size="-1">TBD

<td><font size="-1">TBD

<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically">Apply a sensitivity label to content automatically</a>
<td><font size="-1">TBD

<td><font size="-1">TBD

<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
<td><font size="-1">TBD
  
<tr><td><font size="-1">Support <a href="https://support.office.com/article/what-is-autosave-6d6bd723-ebfd-4e40-b5f6-ae6e8088f7a5">AutoSave</a> and <a href="https://support.office.com/article/document-collaboration-and-co-authoring-ee1509b4-1f6e-401e-b04a-782d26f564a4">co-authoring</a> on labeled and protected documents
<td><font size="-1">TBD

<td><font size="-1">TBD

<td><font size="-1">TBD
<td><font size="-1">n/a
<td><font size="-1">TBD
<td><font size="-1">n/a
<td><font size="-1">TBD
<td><font size="-1">n/a
</table>

> WARNING!
> @KC the last row is something that neither aip client can do and it will NEVER be able to. only the office built-in thingie will. not until next year, not scheduled for ignite

<br><sup>1</sup>If configured, users are prompted to justify label downgrades. However, the justification data is not made available for administrators yet. It will become available when the “send label analytics data for administrators” capability is supported.
<br><sup>2</sup>Let users assign permissions is currently only available in Outlook for Windows and Mac. Availability for Word, Excel, and PowerPoint is TBD.
<br><sup>3</sup>Expected Q4 of calendar year 2019.

## Decide which information protection client to use to apply sensitivity labels in Office apps

The AIP client is an add-in for Office that provides *** for applying sensitivity labels. lets you do stuff with sensitivity labels in Office. It was released 3 years ago and it only works in the Windows platform of Office. (carol bailey). MIP sensitivity label platform came out about a year ago.
we want folks to use the S&CC. we don't yet have parity with the AIP client. for Office 365, you can use Azure Portalv1, Azure Portalv2, and S&CC. Azure Portalv2 and S&CC provide access to additional platforms like iOS and Android. (customers need to migrate from v1 to v2 to get the support for that or go straight to S&CC.)

now office on windows has some of this capability built-in. like the built-in sensitivity button. for folks that don't have the EMS SKU this is great. or it's good for folks that don't want to deploy add-ins on top of office. it's faster, etc. we don't expect a ton of aip customers to swap over because of the parity gap.

folks should use the S&CC. in the future, we will have parity, Carol has a table identifying which client to use when. get the link from her. there are two aip clients (aipv1 and unified aip client).

To disable or uninstall the Azure Information Protection client:

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
