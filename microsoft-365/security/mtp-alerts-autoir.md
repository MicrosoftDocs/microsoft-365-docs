---
title: Set up alerts that trigger automated investigation and remediation in Microsoft Threat Protection 
description: Learn how to configure alerts that trigger automated investigation and remediation capabilities in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation
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

# Set up alerts that trigger automated investigation and remediation in Microsoft Threat Protection

**Applies to**:
- Microsoft 365

## Set up alerts to trigger automated investigations

Certain [alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies) can trigger automated investigations and remediation. 

**Example**: Set up a threat protection alert for email messages that contain malware detected after the messages are delivered 

To review (and if necessary, add) alert policies, follow these steps:

1. In the Microsoft 365 security center ([https://security.microsoft.com/homepage](https://security.microsoft.com/homepage)), in the navigation pane on the left side, choose **Policies**.

2. Under **Alert**, choose **Office 365 alert**. This takes you to the Office 365 Security & Compliance Center.

3. In the navigation pane on the left side, choose **Alerts** > **Alert policies**.

4. Review the list of existing policies, especially your [default alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies?#default-alert-policies). Some default policies are set up to trigger AIR automatically through one or more security playbooks.

5. If necessary, add an alert policy. (Choose **+ New alert policy**.) To get help with this, see [Alert policies](https://docs.microsoft.com/office365/securitycompliance/alert-policies).

## Next steps

- [Manage actions related to automated investigation and remediation in Microsoft 365](mtp-autoir-actions.md)