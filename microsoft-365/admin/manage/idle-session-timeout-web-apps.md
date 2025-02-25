---
title: "Idle session timeout for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 10/01/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier3
- scotvorg
- Adm_TOC
description: "Set how long user's session will last in Microsoft 365 before they're timed out."
---

# Idle session timeout for Microsoft 365

> [!IMPORTANT]
> Idle session timeout isn't available for Microsoft 365 operated by 21Vianet.

Use idle session timeout to configure a policy on how long users are inactive in your organization before they're signed out of Microsoft 365 web apps. This helps protect sensitive company data and adds another layer of security for end users who work on non-company or shared devices.

When a user reaches the idle timeout session you've set, they'll get a notification that they're about to be signed out. They have to select to stay signed in or they'll be automatically signed out of all Microsoft 365 web apps.

> [!IMPORTANT]
> Idle session timeout doesn't affect your Microsoft 365 desktop and mobile apps.

## Turn on Idle session timeout

You must be a member of the Security admin, Application admin, or Cloud Application admin roles to see the idle session timeout setting.  The Global admin role is required for initial activation of Idle Session Timeout.  All other noted roles can deactivate and/or modify timeout duration settings.

1. In the Microsoft 365 admin center, select **Org Settings** **->**  [Security & privacy](https://go.microsoft.com/fwlink/p/?linkid=2072756) tab and select **Idle session timeout**.

2. On the **Idle Session Timeout** select the toggle to turn it on. You can choose a default setting or choose your own custom time. It'll take a few minutes before idle session is turned on in your organization.

> [!NOTE]
> If you've set up idle session timeout policies for [Outlook web app](https://support.microsoft.com/topic/description-of-the-activity-based-authentication-timeout-for-owa-in-office-365-0c101e1b-020e-69c1-a0b0-26532d60c0a4) and [SharePoint](/sharepoint/sign-out-inactive-users), turning on idle session timeout in the Microsoft 365 admin center will override the Outlook web app and SharePoint settings.

Idle session timeout is one of the many security measures in Microsoft 365. To learn about other security tasks in Microsoft 365, see [Top security tasks in Microsoft 365](../../security/top-security-tasks-for-remote-work.md).  

## What users will see

When a user has been inactive in Microsoft 365 web apps for the time period you chose, they'll see the following prompt. They have to select **Stay signed in** or they'll be signed out.

:::image type="content" source="../../media/idle-session-timeout.png" lightbox="../../media/idle-session-timeout.png" alt-text="Screenshot: Prompt letting you know that your session is about to expire. Select Stay signed in so you don't get signed out of Microsoft 365 web apps":::

## Details about idle session timeout

- The following Microsoft 365 web apps are supported. More web apps will be added soon.

    - Outlook Web App

    - OneDrive

    - SharePoint
 
    - Microsoft Fabric

    - Microsoft365.com and other start pages

    - Microsoft 365 web apps (Word, Excel, PowerPoint)

    - Microsoft 365 Admin Center

    - M365 Defender Portal

    - Microsoft Purview Compliance Portal
    
- Activity refers to any client-side user interaction happening in the context of the web app. For example, mouse clicks and keyboard presses.  

- Idle session timeout works on a per-browser session basis. A user’s activity on Microsoft Edge is treated differently than their activity in other browsers such as Google Chrome. Users will be signed out from all tabs corresponding to their account within that browser session.

- Once you turn on idle session timeout, it applies to your entire organization and can't be scoped to specific users, organizational units, or groups. Use [Microsoft Entra Conditional Access](/azure/active-directory/conditional-access/) policies for different users and groups to access SharePoint and Exchange Online.

- Users must be inactive on all Microsoft 365 web app tabs for the configured duration. If the user is active on one tab (say OWA) while being inactive on another tab (say SPO), they'll be considered active and won't be signed out.  

- Users won’t get signed out in these cases.
    - If they get single sign-on (SSO) into the web app from the device joined account.
    - If they selected **Stay signed in** at the time of sign-in. For more info on hiding this option for your organization, see [Add branding to your organization's sign-in page](/azure/active-directory/fundamentals/customize-branding).
    - If they're on a managed device (one that is compliant or joined to a domain) and using a supported browser like Microsoft Edge or Google Chrome (with the [Microsoft Single Sign On](https://chrome.google.com/webstore/detail/windows-accounts/ppnbnpeolgkicgegkbkbjmhlideopiji)) extension.

## Trigger idle session timeout only on unmanaged devices

By default, the idle session timeout feature triggers on all device types if the other conditions are met. For this feature to trigger only on an unmanaged device, an eligible Microsoft Entra ID P1 or P2 subscription is required. You'll also need to add a Conditional Access policy in the Microsoft Entra admin center.

## Idle session timeout on unmanaged devices  

For idle session timeout to get triggered only on unmanaged devices, you'll need to add a Conditional Access policy in the Microsoft Entra admin center.

1. On the **Conditional Access | Policies** page of the Microsoft Entra admin center, select **New policy** and enter a name for the policy.

2. Select **Users or workload identities**, and then select **All users**.

3. Select **Cloud apps or actions**, **Select apps**, and search for **Office 365**. Select **Office 365**, and then **Select**.  

4. Select **Conditions**, **Client apps**, **Configure to Yes**, **Browser**, and then select **Done**.

5. Select **Session**, **Use app enforced restrictions**, and then **Select**.

6. Turn on the policy and select **Create**.

## Frequently asked questions

### Are there any browsers or browser scenarios in which idle session timeout feature doesn't work?  

Idle session timeout isn't supported when third party cookies are disabled in the browser. Users won't see any sign-out prompts. We recommend keeping tracking prevention setting to [Balanced (Default)](/microsoft-edge/web-platform/tracking-prevention) for Microsoft Edge, and third-party cookies enabled in your other browsers. Microsoft 365 web apps and services stopped supporting Internet Explorer 11 on August 17, 2021.

### How should I prepare if my organization is already using existing Outlook web app and SharePoint idle timeout policies?  

If you're already using existing Outlook web app and SharePoint idle timeout policies, you can still turn on idle session timeout feature. When you turn on the idle timeout policy, it takes precedence over the existing Outlook web app and SharePoint Online policies. We're planning to deprecate the existing Outlook web app and SharePoint policies in the near future. To better prepare your organization, we recommend you turn on idle session timeout.

### What happens if I'm inactive on an included Microsoft 365 web app, but active on a Microsoft web app or SaaS web app that doesn't have idle session time out turned on?  

The following Microsoft 365 web apps are supported.

- Outlook Web App

- OneDrive

- SharePoint

- Microsoft Fabric

- Microsoft365.com and other start pages

- Microsoft 365 web apps (Word, Excel, PowerPoint)

- Microsoft 365 admin center

- M365 Defender Portal

- Microsoft Purview Compliance Portal

If you're working on a different web app with the same account, the activity in that web app won't be applied to the idle session timeout.

### I'm active in Azure portal, but I'm logged out of other M365 Apps for inactivity.  Why am I logged out?

Azure portal supports a similar inactivity feature, but is supported by Azure portal only. 

> [!Note]
> When initially activated within the Azure portal, the timeout duration by default inherits from M365 admin center Idle Session Timeout Setting. However, the timeout policy for the Azure portal can be explicitly configured within the portal itself.  For more information, see [Azure portal: Signing-Out + Notification](/azure/azure-portal/set-preferences#signing-out--notifications).

### I want to make changes to the idle session timeout policy or delete it. How can I do that?

Update the policy:

1. In the Microsoft 365 admin center, select **Settings** > **Org settings**, go to the **Security & Privacy** tab and select **Idle session timeout**.

2. In the dropdown menu, select a different timeout value and then **Save**.  

Delete the policy:

1. In the Microsoft 365 admin center, select **Settings** > **Org settings**, go to the **Security & Privacy** tab and select **Idle session timeout**.

2. Uncheck **Turn on to set the period of inactivity for users to be signed off of Microsoft 365 web apps** and select **Save**.
