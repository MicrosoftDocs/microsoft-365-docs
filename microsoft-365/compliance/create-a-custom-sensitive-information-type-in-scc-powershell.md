---
title: "Create a custom sensitive information type in Security & Compliance Center PowerShell"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn how to create and import a custom sensitive information type for DLP in the Security & Compliance Center."
---

# Create a custom sensitive information type in using PowerShell

This topic shows you how to use PowerShell to create an XML *rule package* file that defines your own custom [sensitive information types](sensitive-information-type-entity-definitions.md). You need to know how to create a regular expression. As an example, this topic creates a custom sensitive information type that identifies an employee ID. You can use this example XML as a starting point for your own XML file. If you are new to sensitive information types, see [Learn about sensitive information types](sensitive-information-type-learn-about.md).

After you've created a well-formed XML file, you can upload it to Microsoft 365 by using Microsoft 365 PowerShell. Then you're ready to use your custom sensitive information type in your policies and test that it's detecting the sensitive information as you intended.

> [!NOTE]
> If you don't need the fine grained control that PowerShell provides, you can create custom sensitive information types in the Compliance center. For more information, see [Create a custom sensitive information type](create-a-custom-sensitive-information-types.md).

