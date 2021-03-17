---
title: "Labeling actions available in Activity explorer"
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
description: "listing of labeling actions that are available in activity explorer."
---

# Labeling activities that are available in Activity explorer

## Sensitivity labeling activities in Activity explorer

### Label applied

This event is generated each time an unlabeled document is labeled or an email is sent with a label. 

- It is captured at the point of save in Office native applications and web applications. 
- It is captured at the time of occurrence in Azure Information protection add-ins. 
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter. The *justification* text is also captured.   


|Source  |available or not available| Note  |
|---------|---------|---------|
| Word, Excel, PowerPoint|yes |
|Outlook| yes |from Win 32 |
|SharePoint online, OneDrive|yes | |
|Exchange        |yes         | |
|Azure Information Protection (AIP) unified client |yes |the AIP *new label* action is mapped to *label applied* in activity explorer   |
|Microsoft information protection (MIP) SDK         |yes|the AIP *new label* action is mapped to *label applied* in activity explorer|
|Right Managment Service (RMS)         |not applicable         | |
|Power BI desktop and web        | no| accessible in the Microsoft 365 audit logs         |
|Microsoft Cloud App Security (MCAS)         |no|         |

### Label changed

This event is generated each time a label is updated on the document or email.

- For the AIP Unified client, Unified Scanner and MIP SDK sources, the AIP *upgrade label* and *downgrade label* action maps to activity explorer *label changed*

- It is captured at the point of save in Office native applications and web applications. 
- It is captured at the time of occurrence in Azure Information protection unified client add-ins and scanner enforcements
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter. The *justification* text is also captured except for SharePoint Online and OneDrive.
- Sensitivity labeling done in Office native apps on Outlook collects the last action that was generated before file save/email send actions. For example, if the user changes label on an email multiple times before sending, the last label found on the email when it is sent will be captured in the activity explorer and audit logs. 



|Source  |available or not available| Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         | |
|Outlook         |yes         |Win 32|
|SharePoint Online, OneDrive         |yes         | |
|Exchange         |yes         | |
|AIP unified client         |yes         ||
|AIP unified scanner         |yes         | |
|MIP SDK         |yes         | |
|RMS service         |not applicable         | |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |         |         | |

### Label removed

This event is generated each time a label is removed from a file or document.

- This event is captured at the time of save in Office native applications and web applications.
- It is captured at the time of occurrence in Azure Information protection add-ins. 
- Sensitivity labeling, with Office native MIP label, on Outlook collects the last labeling event that was generated before file save/email send actions.

|Source  |available or not available| Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         | |
|Outlook         |yes         |Win 32|
|SharePoint Online, OneDrive         |yes         | |
|Exchange         |yes         | |
|AIP unified client         |yes         |the AIP *remove label* action is mapped to the *label removed* action in activity explorer|
|AIP unified scanner         |yes         |the AIP *remove label* action is mapped to the *label removed* action in activity explorer |
|MIP SDK         |yes         |the AIP *remove label* action is mapped to the *label removed* action in activity explorer |
|RMS service         |not applicable         | |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |no         |         | |
 

### File read
This event is generated each time a labeled or protected document is opened. There are also 'File read’ activities from Endpoint DLP that is covered below in section 12. <!-- add link to endpoint dlp table-->

|Source  |available or not available| Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |yes         | |
|Outlook         |no         ||
|SharePoint Online, OneDrive         |no         | |
|Exchange         |no         | |
|AIP unified client         |yes         |the AIP *access* action is mapped to the *file read* action in activity explorer|
|AIP unified scanner         |yes         |the AIP *access* action is mapped to the *file read* action in activity explorer|
|MIP SDK         |yes         |the *access* action is mapped to the *file read* action in activity explorer|
|RMS service         |not applicable         |the *access* action is mapped to the *file read* action in activity explorer |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |no         |         | |


### Files discovered

This event is generated each time files are discovered when AIP Scanner is used for scanning sensitive data in various locations and finds files.

|Source  |available or not available| Note  |
|---------|---------|---------| 
|Word, Excel, PowerPoint         |not applicable         | |
|Outlook         |not applicable         ||
|SharePoint Online, OneDrive         |not applicable         | |
|Exchange         |not applicable         | |
|AIP unified client         |not applicable       |the AIP *access* action is mapped to the *file read* action in activity explorer|
|AIP unified scanner         |yes         |the AIP *discover* action is mapped to the *files discovered* action in activity explorer|
|MIP SDK         |yes         |the *discover* action is mapped to the *file discovered* action in activity explorer|
|RMS service         |not applicable         |the *access* action is mapped to the *file read* action in activity explorer |
|Power BI desktop and Web         |not applicable         |accessible in the Microsoft 365 audit logs |
|MCAS     |not applicable         |         | |


[data classification overview](data-classification-overview.md)

[content explorer](data-classification-content-explorer.md)

[data loss prevention policies](data-loss-prevention-policies.md)

## See also
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

