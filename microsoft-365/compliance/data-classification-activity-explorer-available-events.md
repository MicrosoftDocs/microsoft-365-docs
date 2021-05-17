---
title: "Activities reported in Activity explorer"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: "listing of activities that are available in activity explorer."
---

# Activities that are available in Activity explorer

## Sensitivity label applied

This event is generated each time an unlabeled document is labeled or an email is sent with a sensitivity label. 

- It is captured at the time of save in Office native applications and web applications. 
- It is captured at the time of occurrence in Azure Information protection add-ins. 
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter.   


|Source  |Reported in activity explorer | Note  |
|---------|---------|---------|
| Word, Excel, PowerPoint|yes |
|Outlook| yes |from Win 32 |
|SharePoint online, OneDrive|yes | |
|Exchange        |yes         | |
|Azure Information Protection (AIP) unified client and AIP unified scanner |yes |the AIP *new label* action is mapped to *label applied* in activity explorer   |
|Microsoft information protection (MIP) SDK         |yes|the AIP *new label* action is mapped to *label applied* in activity explorer|
|Rights Management Service (RMS)         |not applicable         | |
|Power BI desktop and web        | no| accessible in the Microsoft 365 audit logs         |
|Microsoft Cloud App Security (MCAS)         |no|         |

## Sensitivity label changed

This event is generated each time a sensitivity label is updated on the document or email.

- For the AIP Unified client, Unified Scanner and MIP SDK sources, the AIP *upgrade label* and *downgrade label* action maps to activity explorer *label changed*

- It is captured at the point of save in Office native applications and web applications. 
- It is captured at the time of occurrence in Azure Information protection unified client add-ins and scanner enforcements
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter. The *justification* text is also captured except for SharePoint Online and OneDrive.
- Sensitivity labeling done in Office native apps on Outlook collects the last action that was generated before file save/email send actions. For example, if the user changes label on an email multiple times before sending, the last label found on the email when it is sent is captured in the audit log and then reported in activity explorer. 


|Source  |Reported in activity explorer|Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         |
|Outlook         |yes         |Win 32|
|SharePoint Online, OneDrive         |yes         |
|Exchange         |yes         |
|AIP unified client         |yes         |
|AIP unified scanner         |yes         |
|MIP SDK         |yes         |
|RMS service         |not applicable         |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |no         |         |

## Sensitivity label removed

This event is generated each time a sensitivity label is removed from a file or document.

- This event is captured at the time of save in Office native applications and web applications.
- It is captured at the time of occurrence in Azure Information protection add-ins. 
- Sensitivity labeling, with Office native MIP label, on Outlook collects the last labeling event that was generated before file save/email send actions.

|Source  |Reported in activity explorer | Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         |
|Outlook         |yes         |Win 32|
|SharePoint Online, OneDrive         |yes         |
|Exchange         |yes         |
|AIP unified client         |yes         |the AIP *remove label* action is mapped to the *label removed* action in activity explorer|
|AIP unified scanner         |yes         |the AIP *remove label* action is mapped to the *label removed* action in activity explorer |
|MIP SDK         |yes         |the AIP *remove label* action is mapped to the *label removed* action in activity explorer |
|RMS service         |not applicable         |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |no         |         |
 

## Sensitivity label file read

This event is generated each time a sensitivity labeled or protected document is opened.

|Source  |Reported in activity explorer | Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         |
|Outlook         |no         |
|SharePoint Online, OneDrive         |no         |
|Exchange         |no         |
|AIP unified client         |yes         |the AIP *access* action is mapped to the *file read* action in activity explorer|
|AIP unified scanner         |yes         |the AIP *access* action is mapped to the *file read* action in activity explorer|
|MIP SDK         |yes         |the AIP *access* action is mapped to the *file read* action in activity explorer|
|RMS service         |yes         |the *access* action is mapped to the *file read* action in activity explorer |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |no         |         |


## Files discovered

This event is generated each time files are discovered when AIP Scanner is used for scanning sensitive data in various locations and finds files.

|Source  |Reported in activity explorer | Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |not applicable         |
|Outlook         |not applicable         |
|SharePoint Online, OneDrive         |not applicable         |
|Exchange         |not applicable         |
|AIP unified client         |not applicable       |
|AIP unified scanner         |yes         |the AIP *discover* action is mapped to the *files discovered* action in activity explorer|
|MIP SDK         |yes         |the AIP *discover* action is mapped to the *file discovered* action in activity explorer|
|RMS service         |not applicable         |
|Power BI desktop and Web         |not applicable         |
|MCAS     |not applicable         |         |


## Sensitivity label file renamed

This event is generated each time a document with a sensitivity label is renamed. 

|Source  | Reported in activity explorer | Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         |
|Outlook         |not applicable         |
|SharePoint Online, OneDrive         |no        |
|Exchange         |not applicable         |
|AIP unified client         |no         |
|AIP unified scanner         |no         |
|MIP SDK         |no         |
|RMS service         |no      |
|Power BI desktop and Web         |no         |
|MCAS     |no         |         |


## File removed

This event is generated each time the AIP scanner detects that a previously scanned file has been removed.

|Source  |Reported in activity explorer | Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |not applicable         |
|Outlook         |not applicable         |
|SharePoint Online, OneDrive         |not applicable           |
|Exchange         |not applicable         |
|AIP unified client         |not applicable            |
|AIP unified scanner         |yes         |
|MIP SDK         |not applicable            |
|RMS service         |not applicable         |
|Power BI desktop and Web         |not applicable  |
|MCAS     |not applicable        |         |

### Protection applied

This event is generated the first-time protection is added manually to an item that does not have a label.

|Source  |Reported in activity explorer | Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |no         |
|Outlook         |no         |
|SharePoint Online, OneDrive         |not applicable           |
|Exchange         |no       |
|AIP unified client         |yes            |
|AIP unified scanner         |not applicable         |
|MIP SDK         |yes            |
|RMS service         |not applicable         |
|Power BI desktop and Web         |not applicable            |
|MCAS     |not applicable        |         |

## Protection changed

This event is generated each time the protection on an unlabeled document is changed manually.

|Source  |Reported in activity explorer |
|---------|---------| 
|Word, Excel, PowerPoint         |no         |
|Outlook         |no         |
|SharePoint Online, OneDrive         |not applicable           |
|Exchange         |no       |
|AIP unified client         |yes            |
|AIP unified scanner         |not applicable         |
|MIP SDK         |yes            |
|RMS service         |not applicable         |
|Power BI desktop and Web         |not applicable            |
|MCAS     |not applicable        |

## Protection removed

This event is generated each time the protection on an unlabeled document is changed manually.

|Source  |Reported in activity explorer |
|---------|---------| 
|Word, Excel, PowerPoint         |no         |
|Outlook         |no         |
|SharePoint Online, OneDrive         |not applicable           |
|Exchange         |no       |
|AIP unified client         |yes            |
|AIP unified scanner         |not applicable         |
|MIP SDK         |yes            |
|RMS service         |not applicable         |
|Power BI desktop and Web         |not applicable            |
|MCAS     |not applicable        |

## DLP policy matched

This event is generated each time a DLP policy is matched on a document or an email.

|Source  |Reported in activity explorer |
|---------|---------| 
|Exchange         |yes       |
|SharePoint Online|yes          |
|OneDrive |yes|
|Teams |yes   |
|Windows 10 devices         |yes |
|MAC         |no     |
|on-premises         |no|
|MCAS     |no        | 

The events for Windows 10 Devices (Endpoint DLP) are:

- file deleted
- file created
- file copied to clipboard
- file modified
- file read
- file printed
- file renamed
- file copied to network share
- file accessed by unallowed app


## Retention label applied 

This event is generated each time an unlabeled document is labeled or an email is sent with a Retention label.

- It is captured at the time of save for a document and time of sending an email.

|Source  |Reported in activity explorer |
|---------|---------| 
|Exchange         |no       |
|SharePoint Online|yes          |
|OneDrive |yes|

## Retention label changed

This event is generated each time a label is updated on a document or email.

- It is captured at the time of save for a document and time of sending an email.

|Source  |Reported in activity explorer |
|---------|---------| 
|Exchange         |no       |
|SharePoint Online|yes          |
|OneDrive |yes|
 
## Retention label removed

This event is generated each time a label is removed from a file or document.

- It is captured at the time of save for a document and time of sending an email.

|Source  |Reported in activity explorer |
|---------|---------| 
|Exchange         |no       |
|SharePoint Online|yes          |
|OneDrive |yes|


## Known issues
  
- When the recommended label tool tip is shown to an end user, it is not captured. But if the user chooses to apply the recommended label, the label will be shown under the *How applied* field as *Recommended*  

- Justification text is not currently available on sensitivity label downgrade from Sharepoint and OneDrive.  

- Sensitive information types are currently not available for autolabeling activities from Word, Excel, PowerPoint, and Outlook, as well as SharePoint Online, and OneDrive.
