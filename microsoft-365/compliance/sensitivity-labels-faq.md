---
title: "Sensitivity labels FAQ"
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

# MIP in Office - FAQ for admins

## What prerequisites are there to use the Sensitivity feature in Office applications?

### Common requirements 

1. Unified sensitivity labels must be [configured and published in Security and Compliance Center](https://aka.ms/managemip) (and, to do so, your tenant must be in the public cloud for now – this should be documented as part of the core documentation though) 
2. Users must be signed in to Office with their work account. 
3. Users must have an Office 365 E3 or above license assigned. 

### Additional requirements for Office for Windows 

4. The Azure Information Protection client must not be running in Office. See also: How do I configure whether Azure Information Protection client or the built-in Sensitivity feature should be turned on 

### Additional requirements for Outlook on all platforms 

5. In your label configuration, if you turn on content marking, you must be using Exchange Online for that content marking to be inserted in transit. 

### Additional requirements for Outlook for iOS and Android 

6. In your label configuration, if you turn on encryption, you must be using Exchange Online for that encryption to be applied in transit.

## What sensitivity label capabilities are supported in Office today? 

<table border="1">
<tr><td>Capability<td colspan="2">Windows<td colspan="2">Mac<td colspan="2">iOS<td colspan="2">Android<td colspan="2">Web</tr>
<tr><td><td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook</tr>
<tr><td>Manually apply, change, or remove label<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Apply a default label</a><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require a justification for changing a label</a><sup>1</sup><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Provide help link to a custom help page</a><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-sensitivity-labels-can-do">Mark the content</a><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td>Assign pre-defined permissions<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#let-users-assign-permissions">Let users assign permissions</a><td>TBD<td><img src="images\check_grn.png">(Version 1910+)<td>TBD<td><img src="images\check_grn.png">(Version 16.21.0+)<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019
<tr><td>Send <a href="https://docs.microsoft.com/microsoft-365/compliance/label-analytics">label analytics</a> data for administrators<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td>Require users to apply a label to their email and documents<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically">Apply a sensitivity label to content automatically</a><td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
</table>

<br><sup>1</sup>If configured, users are prompted to justify label downgrades. However, the justification data is not made available for administrators yet. It will become available when the “send label analytics data for administrators” capability is supported. 

Table with smaller font to hopefully avoid scrolling

<div style='font-size:9.0pt'>

<table border="1">
<tr><td>Capability<td colspan="2">Windows<td colspan="2">Mac<td colspan="2">iOS<td colspan="2">Android<td colspan="2">Web</tr>
<tr><td><td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook<td>Word, Excel, PowerPoint<td>Outlook</tr>
<tr><td>Manually apply, change, or remove label<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Apply a default label</a><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require a justification for changing a label</a><sup>1</sup><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Provide help link to a custom help page</a><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-sensitivity-labels-can-do">Mark the content</a><td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td>Assign pre-defined permissions<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 1910+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 16.21.0+)<td><img src="images\check_grn.png">(Version 2.21+)<td>Coming October 2019<td><img src="images\check_grn.png">(Version 16.0.11231+)<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#let-users-assign-permissions">Let users assign permissions</a><td>TBD<td><img src="images\check_grn.png">(Version 1910+)<td>TBD<td><img src="images\check_grn.png">(Version 16.21.0+)<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019
<tr><td>Send <a href="https://docs.microsoft.com/microsoft-365/compliance/label-analytics">label analytics</a> data for administrators<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td>Require users to apply a label to their email and documents<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically">Apply a sensitivity label to content automatically</a><td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
</table>

</div>

Testing table with Office icons and parens removed

<table border="1">
<tr><td>Capability<td colspan="2">Windows<td colspan="2">Mac<td colspan="2">iOS<td colspan="2">Android<td colspan="2">Web</tr>
<tr><td><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"></tr>
<tr><td>Manually apply, change, or remove label<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Apply a default label</a><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require a justification for changing a label</a><sup>1</sup><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Provide help link to a custom help page</a><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-sensitivity-labels-can-do">Mark the content</a><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td>Assign pre-defined permissions<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#let-users-assign-permissions">Let users assign permissions</a><td>TBD<td><img src="images\check_grn.png">1910+<td>TBD<td><img src="images\check_grn.png">16.21.0+<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019
<tr><td>Send <a href="https://docs.microsoft.com/microsoft-365/compliance/label-analytics">label analytics</a> data for administrators<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td>Require users to apply a label to their email and documents<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically">Apply a sensitivity label to content automatically</a><td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
</table>

Testing table with Office vector icons

<table border="1">
<tr><td>Capability<td colspan="2">Windows<td colspan="2">Mac<td colspan="2">iOS<td colspan="2">Android<td colspan="2">Web</tr>
<tr><td><td><img src="images\logo_word.svg" alt="Word" title="Word" /><img src="images\logo_excel.svg"><img src="images\logo_powerpoint.svg"><td><img src="images\logo_powerpoint.svg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"><td><img src="images\word.jpg"><img src="images\excel.jpg"><img src="images\powerpoint.jpg"><td><img src="images\outlook.jpg"></tr>
<tr><td>Manually apply, change, or remove label<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Apply a default label</a><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Require a justification for changing a label</a><sup>1</sup><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-label-policies-can-do">Provide help link to a custom help page</a><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/sensitivity-labels#what-sensitivity-labels-can-do">Mark the content</a><td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td>Assign pre-defined permissions<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">1910+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">16.21.0+<td><img src="images\check_grn.png">(2.21+<td>Coming October 2019<td><img src="images\check_grn.png">16.0.11231+<td>Coming October 2019<td>Coming Q4 of calendar year 2019<td>Coming October 2019
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels#let-users-assign-permissions">Let users assign permissions</a><td>TBD<td><img src="images\check_grn.png">1910+<td>TBD<td><img src="images\check_grn.png">16.21.0+<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019<td>TBD<td>Coming October 2019
<tr><td>Send <a href="https://docs.microsoft.com/microsoft-365/compliance/label-analytics">label analytics</a> data for administrators<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td>Require users to apply a label to their email and documents<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
<tr><td><a href="https://docs.microsoft.com/microsoft-365/compliance/apply-sensitivity-label-automatically">Apply a sensitivity label to content automatically</a><td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD<td>TBD
</table>

<img src="images/whatsnew.png" alt="Read what's new in Windows 10" title="Whats new" />

## When do content marks or encryption get applied after content is given a sensitivity label?

| Application | Content marking | Encryption
| --- | --- | --- |
| Word, Excel, PowerPoint on all platforms | Immediately | Immediately |
| Outlook for PC and Mac | After the email is sent by Exchange Online | Immediately |
| Word, Excel, PowerPoint on all platforms | After the email is sent by Exchange Online | After the email is sent by Exchange Online |

## Can the built-in Sensitivity feature run alongside the Azure Information Protection client in Office for Windows?

No. The built-in Sensitivity feature is turned off if the Azure Information Protection client is loaded in Office for Windows. See also: [below question] 

## How do I configure whether the Azure Information Protection client or the built-in Sensitivity feature should be enabled in Office for Windows? 

If you have the Azure Information Protection client installed, but you want to use the built-in Sensitivity feature instead, you can: 

1. Configure the Use the Sensitivity feature in Office to apply and view sensitivity labels Group Policy setting, which can be found under User Configuration\Administrative Templates\Microsoft Office 2016\Security Settings.  
Note: this setting can be deployed via traditional group policy deployment mechanisms, or by the Office cloud policy service. 
 
 Alternatively, you can uninstall or disable the Azure Information Protection client. 

2. Restart all Office applications. 

## If I share labeled content with someone outside my tenant, will they see my tenant’s sensitivity label?

No. [elaborate] 

## Will the built-in Sensitivity feature be supported in non-subscription versions of Office like Office 2016 or Office 2019?

No. The Sensitivity feature will only be supported in the Office 365 subscription and will not be supported in any non-subscription version. However, the Azure Information Protection unified labeling client may be used in non-subscription versions of Office. 

## I previously deployed protection templates before setting up Sensitivity labels. Where did they go?

Administrator-defined protection templates are hidden from the Office user experience when Sensitivity labels are enabled because they are redundant with Sensitivity labels that have encryption enabled. 

## Can a file or email have more than one classification?

Users can select just one label at a time for each document or email, which often results in just one classification. However, if users select a sublabel, this actually applies two labels at the same time; a primary label and a secondary label. By using sublabels, a file can have two classifications that denote a parent\child relationship for an additional level of control. 

For example, the label Confidential might contain sublabels such as Legal and Finance. You can apply different classification visual markings and different Rights Management templates to these sublabels. A user cannot select the Confidential label by itself; only one of its sublabels, such as Legal. As a result, the label that they see set is Confidential \ Legal. The metadata for that file includes one custom text property for Confidential, one custom text property for Legal, and another that contains both values (Confidential Legal). 

When you use sublabels, don't configure visual markings, protection, and conditions at the primary label. When you use sublevels, configure these setting on the sublabel only. If you configure these settings on the primary label and its sublabel, the settings at the sublabel take precedence. 

## When an email is labeled, do any attachments automatically get the same labeling?

No. When you label an email message that has attachments, those attachments do not inherit the same label. The attachments remain either without a label or retain a separately applied label. However, if the label for the email applies protection, that protection is applied to Office attachments.