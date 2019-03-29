---
title: "Configure conditional access policies"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about device states in Microsoft 365 Business."
---

# Configure conditional access policies for Microsoft 365 for Democracy


nice picture of conditional access policy set
Table with these policies and notes. Link policies to bookmarks later in article
- Require MFA for all users
- Require approved apps
- Block clients that don't support modern authentication
- Require Outlook mobile
- Configure app protection policies (one policy per platform--iOS, Android)

Configuration for these is in this article (subset): [Common identity and device access policies](https://docs.microsoft.com/en-us/microsoft-365/enterprise/identity-access-policies)

## Create a conditional access exclusion group
add your admin account to this group, but don't add the 2nd admin account that you created

A recommended practice is to create an Azure AD group for conditional access exclusion. Add this group to all of your conditional access rules under "Exclude". This gives you a method to provide access to a user while you troubleshoot access issues. This is recommended as a temporary solution only. Monitor this group for changes and be sure the exclusion group is being used only as intended.

--provide an example of why this would be helpful. for example, if your candidate is on the road and can't access mail using MFA, you can temporarily add them to this group while you troubleshoot issues. This should be temporary only.

--how to create this group

After you verify that the 2nd admin account can access resources and that you can access collab tools using your user account, you can remove your admin account from this group.
 

## Require MFA for all users
This rule is slighly diff than the reference article because we're requiring MFA for all sign ins, not based on sign in risk

Add the exclusion group

## Require approved apps

## Bock clients that don't support modern authentication
Also add to this section the instructions for enabling modern auth in 

## Require Outlook mobile

## Configure app protection policies
These are configured automatically by the setup wizard (if you selected this option). 
RECONCILE WHAT'S DIFF BETWEEN WIZARD AND RECOMMENDED POLICIES IN THE REFERENCE ARTICLE
  