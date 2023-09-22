---
title: Secure email recommended policies
description: Describes the policies for Microsoft recommendations about how to apply email policies and configurations.
ms.author: dansimp
author: dansimp
manager: Laurawi
ms.service: microsoft-365-security
ms.topic: conceptual
audience: Admin
f1.keywords: 
  - NOCSH
ms.reviewer: martincoetzer
ms.custom: 
  - it-pro
  - goldenconfig
ms.collection: 
  - M365-identity-device-management
  - m365-security
  - remotework
  - m365solution-identitydevice
  - m365solution-scenario
  - zerotrust-solution
  - highpri
  - tier1
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# Policy recommendations for securing email

This article describes how to implement the recommended Zero Trust identity and device access policies to protect organizational email and email clients that support modern authentication and conditional access. This guidance builds on the [Common identity and device access policies](identity-access-policies.md) and also includes a few additional recommendations.

These recommendations are based on three different tiers of security and protection that can be applied based on the granularity of your needs: **starting point**, **enterprise**, and **specialized security**. You can learn more about these security tiers, and the recommended client operating systems, referenced by these recommendations in the [recommended security policies and configurations introduction](microsoft-365-policies-configurations.md).

These recommendations require your users to use modern email clients, including Outlook for iOS and Android on mobile devices. Outlook for iOS and Android provide support for the best features of Office 365. These mobile Outlook apps are also architected with security capabilities that support mobile use and work together with other Microsoft cloud security capabilities. For more information, see [Outlook for iOS and Android FAQ](/exchange/clients-and-mobile-in-exchange-online/outlook-for-ios-and-android/outlook-for-ios-and-android-faq).

## Update common policies to include email

To protect email, the following diagram illustrates which policies to update from the common identity and device access policies.

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-access-ruleset-mail.png" alt-text="The summary of policy updates for protecting access to Microsoft Exchange" lightbox="../../media/microsoft-365-policies-configurations/identity-access-ruleset-mail.png":::

Note the addition of a new policy for Exchange Online to block ActiveSync clients. This forces the use of Outlook mobile.

If you included Exchange Online and Outlook in the scope of the policies when you set them up, you only need to create the new policy to block ActiveSync clients. Review the policies listed in the following table and either make the recommended additions, or confirm that these are already included. Each policy links to the associated configuration instructions in [Common identity and device access policies](identity-access-policies.md).

|Protection level|Policies|More information|
|---|---|---|
|**Starting point**|[Require MFA when sign-in risk is *medium* or *high*](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include Exchange Online in the assignment of cloud apps|
||[Block clients that don't support modern authentication](identity-access-policies.md#block-clients-that-dont-support-multifactor-authentication)|Include Exchange Online in the assignment of cloud apps|
||[Apply APP data protection policies](identity-access-policies.md#app-protection-policies)|Be sure Outlook is included in the list of apps. Be sure to update the policy for each platform (iOS, Android, Windows)|
||[Require approved apps and APP protection](identity-access-policies.md#require-approved-apps-and-app-protection-policies)|Include Exchange Online in the list of cloud apps|
||[Block ActiveSync clients](#block-activesync-clients)|Add this new policy|
|**Enterprise**|[Require MFA when sign-in risk is *low*, *medium* or *high*](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include Exchange Online in the assignment of cloud apps|
||[Require compliant PCs *and* mobile devices](identity-access-policies.md#require-compliant-pcs-and-mobile-devices)|Include Exchange Online in the list of cloud apps|
|**Specialized security**|[*Always* require MFA](identity-access-policies.md#require-mfa-based-on-sign-in-risk)|Include Exchange Online in the assignment of cloud apps|

## Block ActiveSync clients

Exchange ActiveSync can be used to synchronize messaging and calendaring data on desktop and mobile devices.

For mobile devices, modern authentication-capable Exchange ActiveSync clients that do not support Intune app protection policies (or supported clients that are not defined in the app protection policy) and Exchange ActiveSync clients that use basic authentication are blocked based on the Conditional Access policy created in [Require approved apps and APP protection](identity-access-policies.md#require-approved-apps-and-app-protection-policies).

To block Exchange ActiveSync using basic authentication on other devices, follow the steps in [Block Exchange ActiveSync on all devices](/azure/active-directory/conditional-access/howto-policy-approved-app-or-app-protection#block-exchange-activesync-on-all-devices), which prevents Exchange ActiveSync clients using basic authentication on non-mobile devices from connecting to Exchange Online.

## Limit access to Exchange Online from Outlook on the web

You can restrict the ability for users to download attachments from Outlook on the web on unmanaged devices. Users on these devices can view and edit these files using Office Online without leaking and storing the files on the device. You can also block users from seeing attachments on an unmanaged device.

Here are the steps:

1. [Connect to Exchange Online PowerShell](/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).
2. If you don't already have an OWA mailbox policy, create one with the [New-OwaMailboxPolicy](/powershell/module/exchange/new-owamailboxpolicy) cmdlet.
3. If you want to allow viewing of attachments but no downloading, use this command:

   ```powershell
   Set-OwaMailboxPolicy -Identity Default -ConditionalAccessPolicy ReadOnly
   ```

4. If you want to block attachments, use this command:

   ```powershell
   Set-OwaMailboxPolicy -Identity Default -ConditionalAccessPolicy ReadOnlyPlusAttachmentsBlocked
   ```

5. In the Azure portal, create a new Conditional Access policy with these settings:

   **Assignments** \> **Users and groups**: Select appropriate users and groups to include and exclude.

   **Assignments** \> **Cloud apps or actions** \> **Cloud apps** \> **Include** \> **Select apps**: Select **Office 365 Exchange Online**

   **Access controls** \> **Session**: Select **Use app enforced restrictions**

## Require that iOS and Android devices must use Outlook

To ensure that users of iOS and Android devices can only access work or school content using Outlook for iOS and Android, you need a Conditional Access policy that targets those potential users.

See the steps to configure this policy in [Manage messaging collaboration access by using Outlook for iOS and Android](/mem/intune/apps/app-configuration-policies-outlook#apply-conditional-access).

## Set up message encryption

With Microsoft Purview Message Encryption, which leverages the protection features in Azure Information Protection, your organization can easily share protected email with anyone on any device. Users can send and receive protected messages with other Microsoft 365 organizations as well as non-customers using Outlook.com, Gmail, and other email services.

For more information, see [Set up new Office 365 Message Encryption capabilities](/purview/set-up-new-message-encryption-capabilities).

## Next steps

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png" alt-text="The Policies for Microsoft 365 cloud apps" lightbox="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png":::

Configure Conditional Access policies for:

- [Microsoft Teams](teams-access-policies.md)
- [SharePoint](sharepoint-file-access-policies.md)
