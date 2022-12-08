---
title: "Upgrading from Lync Server 2013"
ms.author: serdars
author: serdarsoysal
manager: serdars
ms.date: 11/10/2021
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.collection:
- Ent_O365
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Find information and resources to upgrade from Lync Server 2013. Support ends April 11, 2023.
---

# Upgrading from Lync Server 2013

Microsoft Lync Server 2013 will reach end of support on **April 11, 2023**. This article provides resources to help you upgrade your existing Lync Server deployment to Microsoft Teams or Skype for Business on-premises.

## What is *end of support*?

Most Microsoft products have a support lifecycle, during which they get new features, bug fixes, security fixes, and so on. After the end-of-support date, the product doesn't stop working, but Microsoft no longer provides:

- Technical support for problems that may occur.

- Bug fixes for issues that may impact the stability and usability of the server.

- Security fixes for vulnerabilities that may make the server vulnerable to security breaches.

- Time zone updates.

That means there will be no further updates, patches, or fixes for the product (including security patches/fixes). Microsoft Support will have fully shifted its support efforts to more recent versions.

## Plan ahead

Check the dates that support ends on the [Product Lifecycle site](/lifecycle/products/microsoft-lync-server-2013). Plan your upgrades or migrations with these dates in mind. Remember that your product *won't stop working* at the date listed. But because your installation will no longer be patched after that date, you'll want to plan a smooth transition to the next version of the product. The table below lists the options available to you.

|End of support product|Supported|Recommended|
|---|---|---|
|Lync Server 2013|Upgrade to Skype for Business Server 2015 or 2019|Upgrade to Microsoft Teams

## What's next?

We recommend upgrading to Microsoft Teams. Microsoft Teams extends the capabilities of Lync Server, bringing together chat, meetings, calling, collaboration, app integration, and file storage into a single interface. Teams helps streamline the way users get things done, improving user satisfaction and accelerating business outcomes. We’re continually expanding Teams’ capabilities to enable you to communicate and collaborate in new ways, break down organizational and geographical barriers, and drive efficiency in process and decision making.

If you can't upgrade to Microsoft Teams, you can upgrade to Skype for Business Server 2015 or 2019. A key planning consideration to know is that both of these products will reach end of support on October 14, 2025. For more information, see the following support lifecycle pages:

- [Skype for Business Server 2015 support lifecycle information](/lifecycle/products/skype-for-business-server-2015)
- [Skype for Business Server 2019 support lifecycle information](/lifecycle/products/skype-for-business-server-2019)

### Upgrade to Microsoft Teams

We have detailed guidance on upgrading to Microsoft Teams from your on-premises deployment. First, let's cover some key technical requirements. You will need to establish hybrid connectivity, which will enable you to move your users to Teams. [Plan hybrid connectivity](/SkypeForBusiness/hybrid/plan-hybrid-connectivity) gives an overview of setting up a hybrid environment. Even though the article is focused on Skype for Business, all the concepts apply to Lync Server 2013 as well. See the [server version requirements](/SkypeForBusiness/hybrid/plan-hybrid-connectivity#server-version-requirements) section for Lync Server 2013-specific details.

You also need to ensure that your Lync Server 2013 deployment is fully up to date. We publish a [list of all the latest updates for Lync Server 2013](https://support.microsoft.com/topic/updates-for-lync-server-2013-a2a042ac-79f0-2665-7453-0a541fb25164) However, the following update is a pre-requisite for an upgrade to Microsoft Teams:

- [September 2021 cumulative update 5.0.8308.1149 for Lync Server 2013, Core Components](https://support.microsoft.com/topic/september-2021-cumulative-update-5-0-8308-1149-for-lync-server-2013-core-components-6755903a-fc9a-44d2-b835-2a6d01f14043): This update replaces the Live ID authentication with OAuth authentication protocol for the `Move-CSUser` cmdlet, which is used for moving on-premises users to Microsoft Teams.

Even though the user experience in Microsoft Teams is far richer and superior to Lync, it is also dramatically different. Therefore, you'll also need to prepare your organization and your users to ensure a rapid adoption of Microsoft Teams. We have a wealth of information available on how to prepare your organization, plan your upgrade to Teams, and ensure a successful rollout.

**We recommend that you start at our [Teams upgrade portal](/MicrosoftTeams/upgrade-skype-teams)** where you can find technical information, training resources, links to Ignite sessions, available help resources, case studies and more.

:::image type="content" source="../media/teams-upgrade-portal.png" alt-text="Screenshot of the Teams upgrade portal":::

### Upgrade to Skype for Business Server

The path to Skype for Business Server is going to be different depending on the version you choose to upgrade to. Skype for Business Server 2015 supports an in-place upgrade from Lync Server 2013. On the other hand, in order to upgrade to Skype for Business Server 2019, you first will need to introduce Skype for Business Server 2019 to your Lync Server 2013 installation via adding one or more new servers, and then transfer operations to the new 2019 servers you've added.

One important point to consider is that the current support phase for each product: Skype for Business 2019 is in mainstream support and Skype for Business 2015 is currently in extended support.  Therefore, we recommend upgrading to Skype for Business Server 2019. To learn more about the difference between mainstream and extended support, see [Fixed Lifecycle Policy](/lifecycle/policies/fixed).

See the following resources for detailed information about each upgrade scenario.

- [Upgrade to Skype for Business Server 2019](/skypeforbusiness/migration/migration-to-skype-for-business-server-2019)
- [Upgrade to Skype for Business Server 2015](/skypeforbusiness/deploy/upgrade-to-skype-for-business-server)
