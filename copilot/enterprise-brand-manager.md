---
title: Enterprise brand manager policy setup for official brand kits
f1.keywords:
- NOCSH
ms.author: scotv
author: scotv
manager: scotv
ms.date: 08/21/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
- operations-pod
description: "Learn about policy setup for brand kits and asset libraries in the Microsoft 365 Copilot app to streamline on-brand content creation."
---

# Enterprise brand manager policy setup for official brand kits

Your organization can enable their brand managers to set up and publish organization or official brand kits using the **Create** tab on [microsoft365.com](https://microsoft365.com). These brand kits can contain multiple logos, color palettes, fonts, images, and templates pertaining to a certain brand.

Once published, the brand kit is available to all users in the tenant in the **Create** tab on [microsoft365.com](https://microsoft365.com). They can use these brand kits to generate branded artifacts or manually add brand assets to existing designs and images.

To enable this functionality, admins must configure the Enterprise Brand Manager policy, which involves:

- Defining a mail-enabled security group that includes the brand managers.
- Assigning responsibility to these brand managers for creating, managing, and publishing the official or organizational brand kits.

## Configure Enterprise Brand Manager policy

Use the following instructions to configure Enterprise Brand Manager policy.

**Prerequisite** Create a mail-enabled security group with identified brand managers who will have access and permission to create, publish, and manage brand kits available to all users within the organization.

**Policy setup** Follow these steps to create and enable the Enterprise Brand Manager policy for your organization:

1. Navigate to [Config.office.com](https://config.office.com/) and sign in using an Administrator account.
1. Under Customization, select **Policy Management**.
1. Select your existing tenant level policy with scope set to **Apply to all users** or create a new tenant policy with scope set to **Apply to all users**.
1. Go to the **Policies** tab.
1. Use the search box to search for **Brand Manager**. Select the **Elevated role for Brand Managers** policy.

    :::image type="content" source="media/brand-manager/brand-manager-policy.png" alt-text="Screenshot showing the Policy Management page to configure settings." lightbox="media/brand-manager/brand-manager-policy.png":::

1. Set the policy to **Enabled**. By default, it's set as **Not configured**.
1. In the **Security group email address** field, provide the email address for the brand managers security group for your tenant.

    Once configured, the brand managers will see a publish button in their brand kits to share their brand kits at the organization level. To set up the brand kit, see [Create and manage official brand kits in Microsoft 365 Copilot](https://support.microsoft.com/en-us/topic/create-and-manage-official-brand-kits-in-microsoft-365-copilot-app-6bc8a5a7-5697-466b-9e1f-302a38d44afc).

    :::image type="content" source="media/brand-manager/brand-manager-role.png" alt-text="Screenshot showing the Security group email text box filled with an email.":::

1. Select **Apply**.

> [!NOTE]
> It could take up to 24 hours after a policy is created for brand managers to be able to create and edit and official brand kits.
