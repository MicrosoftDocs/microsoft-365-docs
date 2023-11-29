---
title: "Remove a domain"
f1.keywords:
- NOCSH
ms.author: nkagole
author: nataliekagole
manager: scotv
ms.date: 09/22/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- Adm_O365_Setup
ms.custom:
  - AdminSurgePortfolio
  - AdminTemplateSet
  - business_assist
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
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

You can also use PowerShell to move users to another domain. See [Update-MgUser](/powershell/module/microsoft.graph.users/update-mguser) for more information. To set the default domain, use [Update-MgDomain](/powershell/module/microsoft.graph.identity.directorymanagement/update-mgdomain).

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

> [!NOTE]
> If you are removing a custom domain, see [remove a custom domain](#remove-a-custom-domain) before proceeding.

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834818" target="_blank">Domains</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Setup** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2007048" target="_blank">Domains</a> page.

::: moniker-end

2. On the **Domains** page, select the domain that you want to remove.

3. In the right pane, select **Remove**.

4. Follow any additional prompts, and then select **Close**.




### Remove a custom domain

If you are canceling your subscription and you use a custom domain, there are a few extra steps that you must do before you can cancel your subscription. 

#### Change your domain nameserver records (if needed)

If you set up a custom domain, you added DNS records so the domain would work with Microsoft 365 services. Before you remove your domain, be sure to update the DNS records, such as your domain MX record, at your DNS host.

For example, change the MX record at your DNS host. Email sent to your domain stops coming to your Microsoft address and goes to your new email provider instead. (An MX record determines where email for your domain is sent.)

- If your nameserver (NS) records [are pointing to Microsoft 365 nameservers](../../admin/setup/add-domain.md), changes to your MX record don't take effect until you change your NS records to point to your new DNS host (see Step 2).

- Before you update the MX record, let your users know the date you plan to switch their email, and the new email provider you plan to use. Also, if your users want to move their existing Microsoft email to the new provider, they must take extra steps.

- On the day you change the MX record, make sure to [save your data](/microsoft-365/commerce/subscriptions/cancel-your-subscription#save-your-data) and [uninstall Microsoft 365 if needed](/microsoft-365/commerce/subscriptions/cancel-your-subscription#uninstall-office-optional).

#### Update your domain MX and other DNS records (if you're using a custom domain)

If you switched your nameserver (NS) records to Microsoft 365 when you set up your domain, you must set up or update your MX record and other DNS records at the DNS host you plan to use, and then change your NS record to that DNS host.

If you didn't switch NS records when you set up your domain, when you change the MX record, your mail starts going to the new address right away.

To change your NS records, see [Change nameservers to set up Microsoft 365 with any domain registrar](../../admin/get-help-with-domains/change-nameservers-at-any-domain-registrar.md).



## How long does it take for a domain to be removed?

It can take as little as five minutes for Microsoft 365 to remove a domain if it's not referenced in a lot of places such as security groups, distribution lists, users, aliases, shared mailboxes, resource mailboxes, and Microsoft 365 groups. If there are many references that use the domain it can take several hours (a day) for the domain to be removed.

If you have hundreds or thousands of users, use PowerShell to query for all users and then move them to another domain. Otherwise, it's possible for a handful of users to be missed in the UI, and then when you go to remove the domain, you won't be able to and you won't know why. See [Update-MgUser](/powershell/module/microsoft.graph.users/update-mguser) for more information. To set the default domain, use [Update-MgDomain](/powershell/module/microsoft.graph.identity.directorymanagement/update-mgdomain).

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
