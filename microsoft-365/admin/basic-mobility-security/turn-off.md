---
title: "Turn off Basic Mobility and Security"
f1.keywords: NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection:
- Tier3
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom: 
- AdminSurgePortfolio
- basic-mobility-security
description: "Remove groups or policies to turn off Basic Mobility and Security."
---

# Turn off Basic Mobility and Security

To effectively turn-off Basic Mobility and Security, you remove groups of people defined by security groups from the device management policies, or remove the policies themselves.

- Remove groups of users by removing user security groups from the device policies you've created.

- Disable Basic Mobility and Security for everyone by removing all Basic Mobility and Security device policies.

These options remove Basic Mobility and Security enforcement for devices in your organization. Unfortunately, you can't simply "unprovision" Basic Mobility and Security after you've set it up.

> [!IMPORTANT]
> Be aware of the impact on users' devices when you remove user security groups from policies or remove the policies themselves. For example, email profiles and cached emails might be removed, depending on the device. For more info, see [What happens when you delete a policy or remove a user from the policy?](../../admin/basic-mobility-security/create-device-security-policies.md)

## Remove user security groups from Basic Mobility and Security device policies

1. In your browser type: [https://compliance.microsoft.com/basicmobilityandsecurity](https://compliance.microsoft.com/basicmobilityandsecurity).

2. Select a device policy, and select **Edit policy**.

3. On the **Deployment** page, select **Remove**.

4. Under **Groups**, select a security group.

5. Select **Remove**, and select **Save**.

## Remove Basic Mobility and Security device policies

1. In your browser type: [https://compliance.microsoft.com/basicmobilityandsecurity](https://compliance.microsoft.com/basicmobilityandsecurity).

2. Select a device policy, and then select **Delete policy**.

3. In the Warning dialog box, select **Yes**.

> [!NOTE]
> For more steps to unblock devices if your organization devices are still in a blocked state, see the blog post [Removing access control from Basic Mobility and Security for Microsoft 365](https://techcommunity.microsoft.com/t5/intune-customer-success/removing-access-control-from-basic-mobility-and-security-for/ba-p/279934).
