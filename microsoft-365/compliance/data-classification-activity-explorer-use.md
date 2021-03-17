---
title: "Use activity explorer"
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
description: "Learn how to use activity explorer to investigate labeling events for the most common scenarios."
---

# Use activity explorer

### Sensitivity labeling activities in Activity explorer

|Activity  |Source  |available or not available| Note  |
|---------|---------|---------|---------|
|label applied| Word, Excel, PowerPoint|yes | captured at time of save
|     |Outlook| yes |from Win 32 |
|     |SharePoint online, OneDrive|yes | |
|     |Exchange        |yes         | |
|     |Azure Information Protection (AIP) unified client |yes |- the AIP *new label* event is mapped to *label applied* in activity explorer</br> - captured at time of occurrence        |
|     |MIP SDK         |yes|- the AIP *new label* event is mapped to *label applied* in activity explorer </br>- captured at time of occurrence |
|     |RMS service         |no         | |
|     |Power BI desktop and web        | no| accessible in the Microsoft 365 audit logs         |
|     |Microsoft Cloud App Security         |no|         |
|Row10     |         |         |
|Row11     |         |         |
|Row12     |         |         |
|label changed     |         |         |
|Row14     |         |         |
|Row15     |         |         |
|Row16     |         |         |
|Row17     |         |         |
|Row18     |         |         |
|Row19     |         |         |
|Row20     |         |         |


[data classification overview](data-classification-overview.md)

[content explorer](data-classification-content-explorer.md)

[data loss prevention policies](data-loss-prevention-policies.md)

## See also
- [Learn about sensitivity labels](sensitivity-labels.md)
- [Learn about retention policies and retention labels](retention.md)
- [Sensitive information type entity definitions](sensitive-information-type-entity-definitions.md)

