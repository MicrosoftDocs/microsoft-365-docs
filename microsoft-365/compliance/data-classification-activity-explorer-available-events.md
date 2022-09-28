---
title: "Labeling actions reported in Activity explorer"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid: 
- MOE150
- MET150
description: "A list of labeling activities that are available in Activity explorer."
---

# Labeling activities that are available in Activity explorer

## Sensitivity label applied

This event is generated each time an unlabeled document is labeled or an email is sent with a sensitivity label.

- It is captured at the time of save in Office native applications and web applications.
- It is captured at the time of occurrence for the Azure Information Protection (AIP) unified labeling client.
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter.

|Source  |Reported in Activity explorer | Note  |
|---------|---------|---------|
| Word, Excel, PowerPoint|Yes |
|Outlook| Yes | |
|SharePoint online, OneDrive|Yes | |
|Exchange        |Yes         | |
|Azure Information Protection (AIP) unified client and AIP unified scanner |Yes |The AIP *new label* action is mapped to *label applied* in Activity explorer   |
|Microsoft Information Protection (MIP) SDK         |Yes|The AIP *new label* action is mapped to *label applied* in Activity explorer|
|Rights Management Service (RMS)         |Not applicable         | |
|Power BI desktop and web        | No| Accessible in the Microsoft 365 audit logs         |
|Microsoft Defender for Cloud Apps         |No|         |

## Sensitivity label changed

This event is generated each time a sensitivity label is updated on the document or email.

- For the AIP unified client, AIP unified scanner and MIP SDK sources, the AIP *upgrade label* and *downgrade label* action maps to Activity explorer *label changed*

- It is captured at the point of save in Office native applications and web applications.
- It is captured at the time of occurrence for the AIP unified labeling client and scanner enforcements
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter. The *justification* text is also captured except for SharePoint Online and OneDrive.
- Sensitivity labeling done in Office native apps on Outlook collects the last action that was generated before file save/email send actions. For example, if the user changes label on an email multiple times before sending, the last label found on the email when it is sent is captured in the audit log and then reported in Activity explorer.

|Source  |Reported in Activity explorer|Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |Yes         |
|Outlook         |Yes         |
|SharePoint Online, OneDrive         |Yes         |
|Exchange         |Yes         |
|AIP unified client         |Yes         |
|AIP unified scanner         |Yes         |
|MIP SDK         |Yes         |
|RMS service         |Not applicable         |
|Power BI desktop and Web         |No         |Accessible in the Microsoft 365 audit logs |
|Microsoft Defender for Cloud Apps     |No         |         |

## Sensitivity label removed

This event is generated each time a sensitivity label is removed from a file or document.

- This event is captured at the time of save in Office native applications and web applications.
- It is captured at the time of occurrence for the Azure Information Protection (AIP) unified labeling client.
- Sensitivity labeling, with Office built-in labels, on Outlook collects the last labeling event that was generated before file save/email send actions.

|Source  |Reported in Activity explorer | Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |Yes         |
|Outlook         |Yes         ||
|SharePoint Online, OneDrive         |Yes         |
|Exchange         |Yes         |
|AIP unified client         |Yes         |The AIP *remove label* action is mapped to the *label removed* action in Activity explorer|
|AIP unified scanner         |Yes         |The AIP *remove label* action is mapped to the *label removed* action in Activity explorer |
|MIP SDK         |Yes         |The AIP *remove label* action is mapped to the *label removed* action in Activity explorer |
|RMS service         |Not applicable         |
|Power BI desktop and Web         |No         |Accessible in the Microsoft 365 audit logs |
|Microsoft Defender for Cloud Apps     |No         |         |

## Sensitivity label file read

This event is generated each time a sensitivity labeled or protected document is opened.

|Source  |Reported in Activity explorer | Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |Yes         |
|Outlook         |No         |
|SharePoint Online, OneDrive         |No         |
|Exchange         |No         |
|AIP unified client         |Yes         |The AIP *access* action is mapped to the *file read* action in Activity explorer|
|AIP unified scanner         |Yes         |The AIP *access* action is mapped to the *file read* action in Activity explorer|
|MIP SDK         |Yes         |The AIP *access* action is mapped to the *file read* action in Activity explorer|
|RMS service         |Yes         |The *access* action is mapped to the *file read* action in Activity explorer |
|Power BI desktop and Web         |No         |Accessible in the Microsoft 365 audit logs |
|Microsoft Defender for Cloud Apps     |No         |         |

## Files discovered

This event is generated each time files are discovered when the AIP scanner is used for scanning sensitive data in various locations and finds files.

|Source  |Reported in Activity explorer | Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |Not applicable         |
|Outlook         |Not applicable         |
|SharePoint Online, OneDrive         |Not applicable         |
|Exchange         |Not applicable         |
|AIP unified client         |Not applicable       |
|AIP unified scanner         |Yes         |The AIP *discover* action is mapped to the *files discovered* action in Activity explorer|
|MIP SDK         |Yes         |The AIP *discover* action is mapped to the *file discovered* action in Activity explorer|
|RMS service         |Not applicable         |
|Power BI desktop and Web         |Not applicable         |
|Microsoft Defender for Cloud Apps     |Not applicable         |         |

## Sensitivity label file renamed

This event is generated each time a document with a sensitivity label is renamed.

|Source  | Reported in Activity explorer | Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |Yes         |
|Outlook         |Not applicable         |
|SharePoint Online, OneDrive         |No        |
|Exchange         |Not applicable         |
|AIP unified client         |No         |
|AIP unified scanner         |No         |
|MIP SDK         |No         |
|RMS service         |No      |
|Power BI desktop and Web         |No         |
|Microsoft Defender for Cloud Apps     |No         |         |

## File removed

This event is generated each time the AIP scanner detects that a previously scanned file has been removed.

|Source  |Reported in Activity explorer | Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |Not applicable         |
|Outlook         |Not applicable         |
|SharePoint Online, OneDrive         |Not applicable           |
|Exchange         |Not applicable         |
|AIP unified client         |Not applicable            |
|AIP unified scanner         |Yes         |
|MIP SDK         |Not applicable            |
|RMS service         |Not applicable         |
|Power BI desktop and Web         |Not applicable  |
|Microsoft Defender for Cloud Apps     |Not applicable        |         |

### Protection applied

This event is generated the first-time protection is added manually to an item that does not have a label.

|Source  |Reported in Activity explorer | Note  |
|---------|---------|---------|
|Word, Excel, PowerPoint         |No         |
|Outlook         |No         |
|SharePoint Online, OneDrive         |Not applicable           |
|Exchange         |No       |
|AIP unified client         |Yes            |
|AIP unified scanner         |Not applicable         |
|MIP SDK         |Yes            |
|RMS service         |Not applicable         |
|Power BI desktop and Web         |Not applicable            |
|Microsoft Defender for Cloud Apps     |Not applicable        |         |

## Protection changed

This event is generated each time the protection on an unlabeled document is changed manually.

|Source  |Reported in Activity explorer |
|---------|---------|
|Word, Excel, PowerPoint         |No         |
|Outlook         |No         |
|SharePoint Online, OneDrive         |Not applicable           |
|Exchange         |No       |
|AIP unified client         |Yes            |
|AIP unified scanner         |Not applicable         |
|MIP SDK         |Yes            |
|RMS service         |Not applicable         |
|Power BI desktop and Web         |Not applicable            |
|Microsoft Defender for Cloud Apps     |Not applicable        |

## Protection removed

This event is generated each time the protection on an unlabeled document is changed manually.

|Source  |Reported in Activity explorer |
|---------|---------|
|Word, Excel, PowerPoint         |No         |
|Outlook         |No         |
|SharePoint Online, OneDrive         |Not applicable           |
|Exchange         |No       |
|AIP unified client         |Yes            |
|AIP unified scanner         |Not applicable         |
|MIP SDK         |Yes            |
|RMS service         |Not applicable         |
|Power BI desktop and Web         |Not applicable            |
|Microsoft Defender for Cloud Apps     |Not applicable        |

## DLP policy matched

This event is generated each time a DLP policy is matched on a document or an email.

|Source  |Reported in Activity explorer |
|---------|---------|
|Exchange         |Yes       |
|SharePoint Online|Yes          |
|OneDrive |Yes|
|Teams |Yes   |
|Windows 10 devices         |Yes |
|MAC         |No     |
|On-premises         |No|
|Microsoft Defender for Cloud Apps     |No        |

The events for Windows 10 Devices (Endpoint DLP) are:

- File deleted
- File created
- File copied to clipboard
- File modified
- File read
- File printed
- File renamed
- File copied to network share
- File accessed by unallowed app

## Retention label applied

This event is generated each time an unlabeled document is labeled or an email is sent with a retention label.

- It is captured at the time of save for a document and at time of sending for an email.

|Source  |Reported in Activity explorer |
|---------|---------|
|Exchange         |No       |
|SharePoint Online|Yes          |
|OneDrive |Yes|

## Retention label changed

This event is generated each time a label is updated on a document or email.

- It is captured at the time of save for a document and at time of sending for an email.

|Source  |Reported in Activity explorer |
|---------|---------|
|Exchange         |No       |
|SharePoint Online|Yes          |
|OneDrive |Yes|

## Retention label removed

This event is generated each time a label is removed from a file or document.

- It is captured at the time of save for a document and at time of sending for an email.

|Source  |Reported in Activity explorer |
|---------|---------|
|Exchange         |No       |
|SharePoint Online|Yes          |
|OneDrive |Yes|

## Known issues
  
- When the recommended label tool tip is shown to an end user, it is not captured. But if the user chooses to apply the recommended label, the label will be shown under the *How applied* field as *Recommended*.

- Justification text is not currently available on sensitivity label downgrade from SharePoint and OneDrive.

- Sensitive information types are currently not available for autolabeling activities from Word, Excel, PowerPoint, and Outlook, as well as SharePoint Online, and OneDrive.
