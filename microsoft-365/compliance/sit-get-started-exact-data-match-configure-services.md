---
title: "configure services Create exact data match sensitive information type/rule package"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: configure services
ms.custom: seo-marvel-apr2020
---

# configure services
======
[!TIP] A common practice is to combine the use of EDM Sensitive information types and the regular sensitive information types on which they are based in DLP rules, with different thresholds. For example, you could use an EDM sensitive information type that looks for social security numbers and other data, with strict requirements and low tolerance (e.g. one or more matches will cause a DLP alert), while using the regular sensitive information type on which you based your EDM type (e.g. the U.S. Social Security Number built-in sensitive information type) for higher counts (e.g. more than 100 matches), in case sensitive information not recorded in your databases or that’s being used in a way that doesn’t align with your EDM definition for additional evidence is being exfiltrated in large volumes.  

