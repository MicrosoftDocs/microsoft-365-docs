---
title: "Protect files in teams with sensitivity labels"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 10/31/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
- Ent_Solutions
ms.assetid: 5b9c8e41-25d2-436d-89bb-9aecb9ec2b80
description: "Summary: Apply sensitivity labels to protect files in a highly confidential team."
---

# Protect files in teams with sensitivity labels


Unlike a sensitivity label for highly regulated data that anyone can apply to any file, a highly confidential team needs its own label or sublabel so that assigned files:

- Are individually encrypted.
- Contain custom permissions so that only members of the team can open it.

To accomplish this additional level of security for files stored in the underlying SharePoint site of a team, you must configure a customized sensitivity label that is either its own label or a sublabel of the general label for highly regulated data. Only team members will see the customized label or sublabel in their list of labels.

Use a sensitivity label when you need a small number of labels for both global use and individual private teams. 

Use a sensitivity sublabel when you have a large number of labels or want to organize labels for highly confidential teams under the highly regulated label.

Use [these instructions](https://docs.microsoft.com/microsoft-365/compliance/encryption-sensitivity-labels) to configure a separate label or a sublabel with the following settings:

- The name of the label or sublabel contains the name of the team
- Encryption is enabled
- The Office 365 group for the team has Co-Author permissions

After creating, publish the new label or sublabel for your users, who can then apply them to files either locally before uploading them to the team or later once the file is stored in the team.

Here is the configuration of the highly confidential team that uses sensitivity labels for file encryption and permissions.

![Baseline-level protection for a public team.](../media/highly-confidential-team-dlp-sensitivity-labels.png)


## See Also

[Secure files in Microsoft Teams](secure-files-in-teams.md)
  
[Cloud adoption and hybrid solutions](https://docs.microsoft.com/office365/enterprise/cloud-adoption-and-hybrid-solutions)
