---
title: Azure Active Directory tenant
description:  This topic describes changes made to your AAD account when you enroll in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
---

# Azure Active Directory tenant

To enroll in Microsoft Managed Desktop, you must already have an Azure Active Directory account and be a global administrator for that account. This topic briefly summarizes the changes that Microsoft Managed Desktop will make to that account once you enroll. For much more detail about the specific permissions, API calls, and accounts, see [SOMETHING] in the Microsoft Managed Desktop Reference section.

As soon as you complete the onboarding flow in the Microsoft Managed Desktop Admin Portal, these changes occur:

- The Microsoft Managed Desktop app is assigned permissions to take actions on the environment in the context of the user. For more information, see Onboarding phase: API permissions and API calls.
- Four Azure Active Directory (AAD) accounts are created in order to support administration and validation within your tenant. For more information, see Modern Workplace accounts
- Two more accounts are created in order to support managing Microsoft Defender Advanced Threat Protection. For more information, see Microsoft Defender Advanced Threat Protection accounts.
- Four new Azure Active Directory Groups are created: Test, First, Fast, and Broad. We don’t assign users to the groups at this point, but we use them to manage updates and changes.
- Update policies for these new groups are created.
- A security baseline is created, but left unassigned. For more information, see Windows Security Baselines.

Data transmitted from your account is stored in Azure SQL databases in the Microsoft tenant hosted in the USA. Data is stored and handled in accordance the policies described in {Microsoft Azure security}. 