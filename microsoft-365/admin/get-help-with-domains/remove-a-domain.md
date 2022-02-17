---
title: "Remove a domain"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
- business_assist
search.appverid:
- BCS160
- MET150
- MOE150
- GEA150
ms.assetid: f09696b2-8c29-4588-a08b-b333da19810c
description: "Learn how to remove an old domain from Microsoft 365 and move users and groups to another domain or cancel your subscription."
---

# Remove a domain

 **[Check the Domains FAQ](../setup/domains-faq.yml)** if you don't find what you're looking for.

Are you removing your domain because you want to add it to a different Microsoft 365 subscription plan? Or do you just want to cancel your subscription? You can [change your plan or subscription](../../commerce/subscriptions/switch-to-a-different-plan.md) or [cancel your subscription](../../commerce/subscriptions/cancel-your-subscription.md).

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

### Step 1: Move users to another domain

#### Move users

::: moniker range="o365-worldwide"

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.

::: moniker-end

::: moniker range="o365-21vianet"

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>.

::: moniker-end

2. Select **Users** > **Active users**.

3. Select the boxes next to the names of all the users you want to move.

4. At the top of the page, and then choose **Change domains**.

5. In the **Change domains** pane, select a different domain.

You'll need to do this for yourself, too, if you're on the domain that you want to remove. When you edit the domain for your account, you'll have to log out and log back in using the new domain you chose to continue.

#### Move yourself

::: moniker range="o365-worldwide"

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.

::: moniker-end

::: moniker range="o365-21vianet"

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>.

::: moniker-end

2. Go to **Users** \> **Active Users**, and select your account from the list.

3. On the **Account** tab, select **Manage username**, and then choose a different domain.

4. At the top, select your account name, then select **Sign Out**.

5. Sign in with the new domain and your same password.

You can also use PowerShell to move users to another domain. See [Set-MsolUserPrincipalName](/powershell/module/msonline/set-msoluserprincipalname) for more information. To set the default domain, use [Set-MsolDomain](/powershell/module/msonline/set-msoldomain).

### Step 2: Move groups to another domain

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Groups** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Groups</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>,  go to the **Groups** > **Groups** page.

::: moniker-end

2. Select the group name, and then on the **General** tab under **Email address, Primary**, select **Edit**.

3. Use the drop-down list to choose another domain.

4. Select **Save**, then **Close**. Repeat this process for any groups or distribution lists associated with the domain that you want to remove.

### Step 3: Remove the old domain

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Setup** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end

2. On the **Domains** page, select the domain that you want to remove.

3. In the right pane, select **Remove**.

4. Follow any additional prompts, and then select **Close**.

## How long does it take for a domain to be removed?

It can take as little as 5 minutes for Microsoft 365 to remove a domain if it's not referenced in a lot of places such as security groups, distribution lists, users, and Microsoft 365 groups. If there are many references that use the domain it can take several hours (a day) for the domain to be removed.

If you have hundreds or thousands of users, use PowerShell to query for all users and then move them to another domain. Otherwise, it's possible for a handful of users to be missed in the UI, and then when you go to remove the domain, you won't be able to and you won't know why. See [Set-MsolUserPrincipalName](/powershell/module/msonline/set-msoluserprincipalname) for more information. To set the default domain, use [Set-MsolDomain](/powershell/module/msonline/set-msoldomain).

## Still need help?

::: moniker range="o365-worldwide"

> [!NOTE]
> You can't remove the [".onmicrosoft.com"](../setup/domains-faq.yml) domain from your account. When you remove a domain, user accounts will revert back to the ".onmicrosoft.com" address as the Primary SMTP/UserprincipalName.

Still not working? Your domain might need to be manually removed. [Give us a call](../../business-video/get-help-support.md) and we'll help you take care of it!

::: moniker-end

::: moniker range="o365-21vianet"

> [!NOTE]
> You can't remove the [".partner.onmschina.cn"](../setup/domains-faq.yml) domain from your account. When you remove a domain, user accounts will revert back to the ".partner.onmschina.cn" address as the Primary SMTP/UserprincipalName.

Still not working? Your domain might need to be manually removed. [Give us a call](../../business-video/get-help-support.md?view=o365-21vianet&preserve-view=true) and we'll help you take care of it!

::: moniker-end

## Related content

[Domains FAQ](../setup/domains-faq.yml) (article)

[Switch to a different Microsoft 365 for business plan](../../commerce/subscriptions/switch-to-a-different-plan.md) (article)

[Cancel your subscription](../../commerce/subscriptions/cancel-your-subscription.md) (article)
