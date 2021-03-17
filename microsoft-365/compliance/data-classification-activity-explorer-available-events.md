---
title: "Labeling events available in Activity explorer"
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
description: "listing of labeling events that are available in activity explorer."
---

# Labeling activities that are available in Activity explorer

## Sensitivity labeling activities in Activity explorer

### Label applied
This activity is generated each time an unlabeled document is labeled or an email is sent with a label. 

- It is captured at the point of save in Office native applications and web applications. 
- It is captured at the time of occurrence in Azure Information protection add-ins. 
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter. The *justification* text is also captured.   


|Source  |available or not available| Note  |
|---------|---------|---------|
| Word, Excel, PowerPoint|yes |
|Outlook| yes |from Win 32 |
|SharePoint online, OneDrive|yes | |
|Exchange        |yes         | |
|Azure Information Protection (AIP) unified client |yes |the AIP *new label* event is mapped to *label applied* in activity explorer   |
|Microsoft information protection (MIP) SDK         |yes|the AIP *new label* event is mapped to *label applied* in activity explorer|
|Right Managment Service (RMS)         |not applicable         | |
|Power BI desktop and web        | no| accessible in the Microsoft 365 audit logs         |
|Microsoft Cloud App Security (MCAS)         |no|         |

### Label changed

This event is generated each time a label is updated on the document or email.

- For the AIP Unified client, Unified Scanner and MIP SDK sources, the AIP *upgrade label* and *downgrade label* events maps to activity explorer *label changed*

- It is captured at the point of save in Office native applications and web applications. 
- It is captured at the time of occurrence in Azure Information protection unified client add-ins and scanner enforcements
- Upgrade and downgrade labels actions can also be monitored via the *Label event type* field and filter. The *justification* text is also captured except for SharePoint Online and OneDrive.
- Sensitivity labeling done in Office native apps on Outlook collects the last event that was generated before file save/email send actions. For example, if the user changes label on an email multiple times before sending, the last label found on the email when it is sent will be captured in the activity explorer and audit logs. 



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
|AIP unified client         |yes         ||
|AIP unified scanner         |yes         | |
|MIP SDK         |yes         | |
|RMS service         |not applicable         | |
|Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|MCAS     |         |         | |
 









[data classification overview](data-classification-overview.md)

[content explorer](data-classification-content-explorer.md)

[data loss prevention policies](data-loss-prevention-policies.md)

## See also
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

