---
title: "Manage privacy management settings (preview)"
f1.keywords:
- CSH
ms.author: v-jgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- M365-privacy-management
search.appverid: 
- MOE150
- MET150
description: "Learn about the global settings options for privacy management."
---

# Manage privacy management settings (preview)

The global settings options for privacy management can be found under the gear icon in the upper right corner of the main pages. These options allow you to set high-level preferences and customize key properties. This page provides an overview of the main Settings categories.

## Anonymization

This feature enables you to show anonymized versions of usernames within privacy management features to users in certain roles. It will replace identifiable display names with a generic label in order to help mask your users’ identities while reviewing sensitive data. This option does not apply to the subject rights request module.

## User notification emails  

Policies in privacy management allow you to set parameters for evaluating potential privacy risks in your environment. When we detect a policy match, privacy management can send an email to your users with corrective actions to take and a link to privacy training. In Settings, you can enable or disable the email notification capability of privacy management as a whole. You can activate individual notifications, set email frequency, and specify a training URL when you create or edit a policy. If notification capability is turned off in Settings, any policy-level configuration for specific notification mails will be disabled. To learn more about policies, see [Create and manage policies](privacy-management-policies.md).

## Teams collaboration  

Integrate Microsoft Teams capabilities with privacy management to enhance collaboration with stakeholders. Every time a subject rights request is created, an associated team will be created. Users can be added to a team from the request’s Collaborators tab. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

## Data matching  

Use this section to upload data schemas that describe attributes of your data subjects, which will help identify the correct data subject when searching for personal data within your Microsoft 365 environment. Schemas and rule packages are created and uploaded in XML format. Under Personal data upload, you can also submit personal data that matches a provided schema. You can create and upload your own file or choose to upload personal data from Azure. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).

## Data review tags  

Manage the tags you’ll use to mark files retrieved in a subject rights request. In this section, you can edit the names and descriptions for custom tags. You can also edit tag descriptions for the built-in tags provided by the system. Names for system tags cannot be changed. To learn more about subject rights requests, see [Manage subject rights requests](privacy-management-subject-rights-requests.md).
