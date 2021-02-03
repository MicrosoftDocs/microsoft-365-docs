---
title: "Create app policies"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
ms.collection: m365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Create app policies."
---

# Create app policies

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

>[!Note]
>REVIEWERS: This content is in progress and not ready for review.
>

You can create app policies from built-in templates that can be customized or you can create a custom app policy.

## Built-in policies

MAPG has three categories of built-in app policy templates.

### App usage


| Template name | Description |
|:-------|:-----|
| Unused apps | Identifies unused apps in your tenant to help reduce risk from unused and stale apps. <br><br> By default, this policy will flag all apps that are marked as unused and can be customized with additional conditions and actions. |
| Increase in app users | Highlights apps with recently increased users to identify apps with that have recently gained a larger footprint in your tenant and may need further investigation. <br><br> By default, this policy will flag all apps that have had a more than a 50% increase in use in the last 7 days and can be customized with additional conditions and actions. |
| New app with high volume data access | This policy will highlight any recently registered apps with high volume data access to ensure those data patterns are expected. <br><br> By default, this policy will flag all apps that have been registered in the last 7 days and have had more than 1 GB in data access over that period. This policy can be customized with additional conditions and actions. |
|||

### App Permissions

| Template name | Description |
|:-------|:-----|
| Overpermissioned apps | Highlights any apps with more granted permissions than are being used by those apps to identify opportunities for potential permission reduction. <br><br> By default, this policy will flag all apps that are marked as overpermissioned and can be customized with additional conditions and actions. |
| New app with high-privilege permissions | Highlights all new apps with high privilege permissions to identify potential high-footprint apps that may need further investigation. <br><br> By default, this policy will flag all apps registered within the last 7 days that have high-scoped permissions. |
| New app with app-only permissions | Highlights all new apps with permissions to access data across the tenant, which are potentially a higher risk set of permissions. <br><br> By default, this policy will flag all apps registered within the last 7 days that have app-only permissions. |
|||

### App certification

| Template name | Description |
|:-------|:-----|
| App certification loss | Highlights all previously certified apps that recently lost their app certification, which allows you to ensure that this status change is expected. <br><br> By default, this policy will flag all apps that are uncertified and have had their app certification changed in the last 7 days. |
| New uncertified app | Highlights new apps that have not been through the app certification process to ensure that they are expected in the tenant. <br><br> By default, this policy will flag all apps that were registered in the last 7 days and are uncertified. |
|||


## Custom app policies




## Configure a user-based policy

## Ceate an app metadata-based policy

Publish metadata-based policies

## Configure access permissions


