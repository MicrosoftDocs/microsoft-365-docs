---
title: "How sensitivity labels work in Office apps"
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
description: "With sensitivity labels, you can classify and help protect your sensitive content, while making sure that your people’s productivity and ability to collaborate isn’t hindered. You can use sensitivity labels to enforce protection settings such as encryption or watermarks on labeled content."
---

# How sensitivity labels work in Office apps

## What prerequisites are there to use sensitivity labels in Office applications?

### Common requirements 

- Unified sensitivity labels must be [configured and published in the Security and Compliance Center](https://aka.ms/managemip)
- Users must be signed in to Office with their work account.
- Users must have at least one of the following licenses assigned:
    - [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans) or above
    - [Office 365 E3](https://www.microsoft.com/microsoft-365/business/office-365-enterprise-e3-business-software) or above
    - [Azure Information Protection Premium P1](https://azure.microsoft.com/pricing/details/information-protection/) or above

### Additional requirements for Office for Windows 

- The Azure Information Protection client must not be running in Office. See also: [Can sensitivity labels run alongside the Azure Information Protection client in Office for Windows?](#can-sensitivity-labels-run-alongside-the-azure-information-protection-client-in-office-for-windows).

### Additional requirements for Outlook on all platforms 

- In your label configuration, if you turn on content marking, you must be using Exchange Online for that content marking to be inserted in transit.

## What sensitivity label capabilities are supported in Office today? 

<table border="0" cellspacing="0" cellpadding="0">
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
<td><font size="-1"><a href="https://support.office.com/en-us/article/apply-sensitivity-labels-to-your-documents-and-email-within-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9">Manually apply, change, or remove label</a>

<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><b>Yes</b>

<tr>
<td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Apply a default label</a>

<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><b>Yes</b>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require a justification for changing a label</a><sup>1</sup>

<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><b>Yes</b>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Provide help link to a custom help page</a>

<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><b>Yes</b>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-sensitivity-labels-can-do">Mark the content</a>

<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><b>Yes</b>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/en-us/microsoft-365/compliance/encryption-sensitivity-labels#assign-permissions-now">Assign pre-defined permissions</a>

<td><font size="-1"><b>Yes</b><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.21.0+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">2.21+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1"><b>Yes</b><br><font size="-1">16.0.11231+</font>
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">Coming soon<sup>3</sup>
<td><b>Yes</b>

<tr><td><font size="-1"><a href="https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#let-users-assign-permissions">Let users assign permissions</a>

<td><font size="-1"><b>Yes</b><sup>2</sup><br><font size="-1">1910+</font>
<td><font size="-1"><b>Yes</b><sup>2</sup><br><font size="-1">16.21.0+</font>
<td><font size="-1">TBD
<td><font size="-1">Rolling out<br><font size="-1">4.7.1+</font>
<td><font size="-1">TBD
<td><font size="-1">Rolling out<br><font size="-1">4.0.39+</font>
<td><font size="-1">TBD
<td><b>Yes</b>

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

<br><sup>1</sup>If configured, users are prompted to justify label downgrades. However, the justification data is not made available for administrators yet. It will become available when the “send label analytics data for administrators” capability is supported.
<br><sup>2</sup>Let users assign permissions is currently only available in Outlook for Windows and Mac. Availability for Word, Excel, and PowerPoint is TBD.
<br><sup>3</sup>Expected Q4 of calendar year 2019.

## When do content marks or encryption get applied after content is given a sensitivity label?

| Application | Content marking | Encryption
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After the email is sent by Exchange Online | Immediately |
| Outlook on the web, iOS, and Android | After the email is sent by Exchange Online | After the email is sent by Exchange Online |

## Can sensitivity labels run alongside the Azure Information Protection client in Office for Windows?

No. Sensitivity labels are turned off if the Azure Information Protection client is loaded in Office for Windows.

If you have the Azure Information Protection client installed, but you want to use sensitivity labels instead, you can:

1. Configure the **Use the Sensitivity feature in Office to apply and view sensitivity labels** Group Policy setting, which can be found under **User Configuration/Administrative Templates/Microsoft Office 2016/Security Settings**.

  >Note: this setting can be deployed via traditional group policy deployment mechanisms, or by the [Office cloud policy service](https://docs.microsoft.com/DeployOffice/overview-office-cloud-policy-service). 
 
  Alternatively, you can uninstall or [disable](https://support.office.com/article/view-manage-and-install-add-ins-in-office-programs-16278816-1948-4028-91e5-76dca5380f8d) the Azure Information Protection client. 

2. Restart all Office applications.

## Will sensitivity labels be supported in non-subscription versions of Office like Office 2016 or Office 2019?

No. Sensitivity labels will only be supported in the Office 365 subscription and will not be supported in any non-subscription version. However, the Azure Information Protection unified labeling client may be used in the [versions of Office listed here](https://docs.microsoft.com/azure/information-protection/requirements#applications).

## I previously deployed protection templates before setting up sensitivity labels. Where did they go?

Administrator-defined [protection templates](https://docs.microsoft.com/azure/information-protection/configure-policy-templates) are hidden from the Office user experience when sensitivity labels are enabled because they are redundant with sensitivity labels that have encryption enabled. 

## Can a file or email have more than one classification?

No. Users can select just one label at a time for each document or email.

## When an email is labeled, do any attachments automatically get the same labeling?

No. When you label an email message that has attachments, those attachments do not inherit the same label. The attachments remain either without a label or retain a separately applied label. However, if the label for the email applies protection, that protection is applied to Office attachments.

## Additional resources

[Frequently asked questions about classification and labeling in Azure Information Protection](https://docs.microsoft.com/azure/information-protection/faqs-infoprotect)<br>
[Apply sensitivity labels to your documents and email within Office](https://support.office.com/article/apply-sensitivity-labels-to-your-documents-and-email-within-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
