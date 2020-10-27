---
title: Quarantine tags
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer:
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Admins can learn how to use quarantine tags to control what users are able to do to their quarantined messages."
---

# Quarantine tags

Quarantine tags in Exchange Online Protection (EOP) allow admins to control what users are able to do to their quarantined messages.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Quarantine tags** page, open <https://protection.office.com/quarantineTags>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- To view, create, modify, or remove quarantine tags, you need to be a member of one of the following role groups:
  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

## Step 1: Create quarantine tags

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** and then select **Quarantine tags**.

2. On the **Quarantine tags** page, select **Add custom tag**.

3. The **New tag** wizard opens. On the **Tag name** page, enter a brief but unique name in the **Tag name** field. You'll need to identify and select the tag by name in upcoming steps. When you're finished, click **Next**.

4. On the **Recipient message access** page, select one of the following values:
   - **No access**
   - **Limited access**
   - **Full access**
   - **Set specific access (Advanced)**: If you select this value, configure the following additional settings:
     - **Select release action preference**: Select one of the following values:
       - **No release action**: This is the default value.
       - **Allow recipients to release a message from quarantine**
       - **Allow recipients to request a message to be released from quarantine**
     - **Select additional actions recipients can take on quarantined messages**: Select some, all, or none of the following values:
       - **Delete**
       - **Preview**
       - **Allow sender**
       - **Block sender**

   When you're finished, click **Next**.

5. On the **Summary** page that appears, review your settings. You can click **Edit** on each setting to modify it.

   When you're finished, click **Submit**.

6. Click **Done** on the confirmation page that appears.

## Step 2: Assign a quarantine tag to supported "Quarantine the message" actions

In supported policies or rules that have **Quarantine the message** as an available action, you can assign a quarantine tag to that action:

- **Anti-spam policies**: Instructions for configuring anti-spam policies are described in [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)

  