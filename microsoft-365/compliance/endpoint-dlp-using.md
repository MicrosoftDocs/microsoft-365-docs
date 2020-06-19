---
title: "Using  Endpoint data loss prevention (preview)"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2020
audience: ITPro
ms.topic: article
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Learn how to configure data loss prevention (DLP) policies to use Microsoft 365 Endpoint data loss prevention (EPDLP) locations."
---

# Using endpoint data loss prevention (preview)

make a table to capture the what it is you want the policy to do or all the values that will need to be entered.

heavily refer out to existing DLP content on how to create a policy

refer out to existing activity explorer content

End user experiences?  maybe this goes over to David Eitelbach

Relnotes references????


## DLP settings

Path exclusions
You may want to exclude certain paths on your endpoint devices from monitoring and alerting because they are too noisy and don’t contain files you are interested in. Files in those locations will not be audited and any files that are created or modified in those locations will not be protected. You can configure path exclusions in Global settings.
Path matching supports the following logic:

1. Begins with – matches every file path that starts with the defined prefix. For example, C:\Windows will match any file under C:\Windows folder and its subfolders.
2. Environment variables – defined paths can contain environment variables, for example, %AppData%\app123
3. Wildcards – defined paths can contain wildcards, for example, C:\Users\*\Desktop will match C:\Users\user1\Desktop, C:\Users\user1\Desktop and also C:\Users\user1\user1\Desktop

Global settings contain several parameters that impact all DLP policies:

1. Path exclusions – file paths defined here will be excluded from Endpoint DLP monitoring and prevention. See path exclusions for more details.
2. Blocked/allowed domains – List of domains that Edge Chromium refers to when enforcing cloud upload. If list mode is set to Block, then the domains in the list are essentially blacklisted and DLP will either generate a warning on upload attempt or block an upload attempt of files to those domain if the file matches the conditions of the enforced policy. If the list mode is set to Allow, then those domains are essentially whitelisted for upload while upload attempts to all domains not on the whitelist will either generate a warning on upload attempt or block an upload attempt if the file matches the conditions of the enforced policy.
3. Unallowed browsers – List of browsers, identified by their process names, that will be blocked from accessing files that match the conditions of an enforced  a DLP policy where Cloud upload is set to either warn or block. When these browsers are blocked from accessing a file, the end users will see a toast notification asking them to open the file through Edge.