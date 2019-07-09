---
title: Automatically investigate and remediate issues using Microsoft 365 
description: Automatically remediate issues seen on entities
keywords: automated, investigation, detection, source, threat types, id, tags, machines, duration, filter export
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
---

# Automatically investigate and remediate issues

**Applies to**:
- Microsoft 365

With [automated investigation and remediation](autoir-overview.md) (AIR) capabilities in Microsoft 365, security administrators can set up alerts that trigger investigations automatically, or start an automated investigation from a report in the Microsoft 365 security center. Once an investigation is underway, your security team can monitor progress, approve pending actions, review the results, and remediate security issues. This article describes how to use AIR to automatically investigate and remediate cyber security issues in your organization.

> [!NOTE]
> You must be a global administrator, security administrator, security operator, or security reader to perform the tasks described in this article. To learn more, see [Microsoft 365 security center: roles and permissions](https://docs.microsoft.com/office365/securitycompliance/microsoft-security-and-compliance#required-licenses-and-permissions).

## Set up alerts to trigger automated investigations

Certain [alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies) can trigger automated investigations and remediation. For example, a threat protection alert for any email messages containing malware that are detected after the messages are delivered can start an AIR process. 

To review (and if necessary, add) alert policies, follow these steps:

1. In the Microsoft 365 security center ([https://security.microsoft.com/homepage](https://security.microsoft.com/homepage)), in the navigation pane on the left side, choose **Policies**.

2. Under **Alert**, choose **Office 365 alert**. This takes you to the Office 365 Security & Compliance Center.

3. In the navigation pane on the left side, choose **Alerts** > **Alert policies**.

4. Review the list of existing policies, especially your [default alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies?#default-alert-policies). Some default policies are set up to trigger AIR automatically through one or more security playbooks.

5. If necessary, add an alert policy. (Choose **+ New alert policy**.) To get help with this, see [Alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies).

## Start an automated investigation from a report

WORK IN PROGRESS

## Monitor progress of investigations

WORK IN PROGRESS

## Approve pending actions

WORK IN PROGRESS

## Review the results and take action

## Learn more about Office 365 and Cloud App Security alert policies



## Next steps

[Analyze automated investigations](analyze-autoir.md)

[Learn about the automated investigations dashboard](autoir-dashboard-overview.md)