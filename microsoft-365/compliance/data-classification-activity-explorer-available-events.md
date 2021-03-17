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

# Labeling events available in Activity explorer

### Sensitivity labeling activities in Activity explorer

|Activity  |Source  |available or not available| Note  |
|---------|---------|---------|---------|
|label applied| Word, Excel, PowerPoint|yes | captured at time of save
|     |Outlook| yes |- from Win 32</br>- captured at time of save |
|     |SharePoint online, OneDrive|yes | |
|     |Exchange        |yes         | |
|     |Azure Information Protection (AIP) unified client |yes |- the AIP *new label* event is mapped to *label applied* in activity explorer</br> - captured at time of occurrence        |
|     |MIP SDK         |yes|- the AIP *new label* event is mapped to *label applied* in activity explorer </br>- captured at time of occurrence |
|     |RMS service         |not applicable         | |
|     |Power BI desktop and web        | no| accessible in the Microsoft 365 audit logs         |
|     |Microsoft Cloud App Security         |no|         |
|label changed    |Word, Excel, PowerPoint         |yes         |captured at time of save |
|Row11     |Outlook         |yes         |Win 32|
|Row12     |SharePoint Online, OneDrive         |yes         | |
|Row13     |Exchange         |yes         | |
|Row14     |AIP unified client         |yes         |- The AIP *upgrade label* and *downgrade label* events maps to activity explorer *label changed*</br>-captured at time of occurence |
|Row15     |AIP unified scanner         |yes         | |
|Row16     |MIP SDK         |yes         | |
|Row17     |RMS service         |not applicable         | |
|Row18     |Power BI desktop and Web         |no         |accessible in the Microsoft 365 audit logs |
|Row19     |         |         | |
|Row20     |         |         | |


[data classification overview](data-classification-overview.md)

[content explorer](data-classification-content-explorer.md)

[data loss prevention policies](data-loss-prevention-policies.md)

## See also
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

