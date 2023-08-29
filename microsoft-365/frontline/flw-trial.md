---
title: Manage the Frontline Trial in Teams
author: lana-chin
ms.author: v-chinlana
manager: serdars
ms.reviewer: samanro
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up a 90-day Teams for frontline workers trial for your organization.
ms.localizationpriority: high
ms.collection: 
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/28/2022

---

# Manage the Frontline Trial in Teams

> [!NOTE]
> This trial experience is coming soon. You can check when this is available to your organization by looking for a message in the [Message center](https://go.microsoft.com/fwlink/p/?linkid=2070717) in your Microsoft 365 Admin center.

The Microsoft Teams Frontline Trial experience lets users in your organization who are in Teams initiate a Teams experience for their entire frontline team, as long as the other members are in Azure Active Directory (Azure AD). You can disable this feature for users in your organization by using the [AllowSelfServicePurchase PowerShell module](/microsoft-365/commerce/subscriptions/allowselfservicepurchase-powershell).

## What services are included

The trial includes everything in the [Microsoft 365 F3 license](https://www.microsoft.com/microsoft-365/enterprise/f3) with the following exceptions:

- The Frontline Trial includes Exchange Foundation rather than Exchange Kiosk. Users may be missing other Teams functionalities due to this change.

## Eligibility

> [!NOTE]
> You can check if your organization is part of the trial pilot by looking for an announcement in the [Message center](https://go.microsoft.com/fwlink/p/?linkid=2070717) in your Microsoft 365 Admin center. Your organization will need to be a part of the trial pilot for users to initiate or participate in a trial. This offer isn't available for GCC, GCC High, DoD, or EDU customers.

The Frontline Trial can accommodate a maximum of 300 users per trial.

Users can start a frontline trial for their team if they:

- Have an active license that gives them access to Teams.
- Haven't previously started a frontline worker trial.

> [!IMPORTANT]
> If the user who initiated the trial leaves your organization before the trial ends, you as admin will need to monitor the trial, check in with the team to see who's benefiting from these features, and decide which users you'll need to upgrade to a paid license.

Users can participate in a frontline worker trial if they have a managed Azure Active Directory domain email address.

Users can participate if they've previously started a trial, but can't initiate another trial.

> [!NOTE]
> Users without existing access to Teams can only be added to the trial team at the time of team creation. Existing Teams users can still be added to the trial after the team has been created.

## Set up the trial

Eligible users can start a Frontline Trial by signing into the Tasks app in Teams from the desktop or [web app](https://teams.microsoft.com/_#/apps/com.microsoft.teamspace.tab.planner/sections/mytasks). At this time, starting a Frontline Trial through mobile is not supported. When a trial is initiated, the entire team will be assigned the Frontline Trial license automatically. Users with existing paid licenses that give them access to Teams will also be assigned trial licenses, but will maintain the functionality of their existing licenses throughout the trial, and will keep their existing paid licenses after the trial ends. The user who started the trial will receive email notifications throughout the course of the trial.

## Manage the frontline trials experience

Admins can prevent end users from starting the Frontline Trial within their organization by using the **AllowSelfServicePurchase** PowerShell module. This is only for trial licenses. [Learn how to use the AllowSelfServicePurchase PowerShell module](/microsoft-365/commerce/subscriptions/allowselfservicepurchase-powershell).

### Manage Teams for users who have the Frontline Trial license

You can manage users who have the Frontline Trial license just like you manage users who have a regular paid license. For more information, see [Manage Teams settings for your organization](/microsoftteams/manage-teams-overview).

### Remove a trial license

You can remove the Frontline Trial license through PowerShell or your Microsoft 365 admin center.

[Learn how to remove with PowerShell](/office365/enterprise/powershell/remove-licenses-from-user-accounts-with-office-365-powershell).

[Learn how to remove in the admin center](/microsoft-365/admin/add-users/delete-a-user).

## Upgrade users from Frontline Trial

Users may reach out to you to ask for licenses when the trial is ending. You'll need admin privileges to upgrade your users.

### When to upgrade

Near the end of the 90-day trial, you'll need to check with your users to see who needs to continue with a paid license. Make sure to do this before the Frontline Trial subscription expires to avoid any disruption to the users' experiences.

> [!IMPORTANT]
> If the Frontline Trial license ends and a user isn't immediately assigned a license that includes Teams, they lose access to Teams. After 30 days, their data (files, messages, and more) is deleted. The user still exists in Azure Active Directory. If a new license is assigned to the user to enable Teams functionality within the 30-day period, all their content in Teams will still exist.

### Choose an upgrade path

> [!TIP]
> The Frontline Trial is based on the [Microsoft 365 F3 license](https://www.microsoft.com/microsoft-365/enterprise/f3).

Depending on the subscriptions your organization currently has, there are three ways to upgrade from a Frontline Trial to a paid license:

- **Upgrade an existing Microsoft 365 subscription.** Use this option if your organization has subscriptions to other Office products that don’t include Teams. For more information, see [Upgrade to a different plan](/microsoft-365/commerce/subscriptions/upgrade-to-different-plan). To see active users for an existing subscription, go to **Users >** [Active users](https://go.microsoft.com/fwlink/p/?linkid=834822) in the Microsoft 365 admin center.

- **Add users to an existing Microsoft 365 subscription.** Use this option if your organization doesn’t have enough paid Teams licenses to cover your frontline team. For more information, see [Buy or remove licenses](/microsoft-365/commerce/licenses/buy-licenses). To add users to an existing subscription that already has enough available licenses, see [Move users to a different subscription](/microsoft-365/commerce/subscriptions/move-users-different-subscription). To see active users for an existing subscription, go to **Users >** [Active users](https://go.microsoft.com/fwlink/p/?linkid=834822) in the Microsoft 365 admin center.

- **Buy a new Microsoft 365 subscription.** Use this option if your organization doesn’t have any existing subscriptions to Office products, or if your organization wants to buy a subscription that’s different from their existing subscription to cover frontline users. For more information, see [Microsoft 365 for frontline workers](https://www.microsoft.com/microsoft-365/enterprise/frontline).

If you’re not sure which Microsoft 365 subscription to upgrade to, see [Microsoft 365 for frontline workers](https://www.microsoft.com/microsoft-365/enterprise/frontline). If you need additional help choosing a subscription, or if your organization needs more than 300 licenses, contact your [Microsoft partner](https://www.microsoft.com/solution-providers/home) or Microsoft account representative.

### Assign paid licenses

To assign your newly acquired licenses, see [Assign licenses to users](/microsoft-365/admin/manage/assign-licenses-to-users).  

After you assign the new licenses, unassign the Teams Exploratory licenses. See [Unassign licenses from users](/microsoft-365/admin/manage/remove-licenses-from-users), for more information.

## FAQ

**How long does the trial last** <br>
The Frontline Trial lasts for 90 days.

**What should administrators do at the end of the 90-day Frontline Trial experience?** <br>
At the end of the 90-day trial, you'll need to check with your users to see who needs to continue with a paid license. Then you'll need to [Upgrade your users](#upgrade-users-from-frontline-trial).

**What happens if the user who started the trial leaves your organization?** <br>
You as admin will need to monitor the trial for the rest of the 90-day period, and upgrade to paid licenses for users who need them when the trial ends.

**What is the data retention policy?** <br>
You can learn about data retention from the [Microsoft 365 subscription information](/microsoft-365/commerce/subscriptions/what-if-my-subscription-expires?).

**What if a user encounters an error when starting the Frontline Trial?** <br>
Make sure that your organization, the user starting the trial, and the users being added to the trial meet the [eligibility criteria](#eligibility).