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
ms.date: 10/5/2023
---

# Policy recommendations for securing email

This article describes how to implement the recommended Zero Trust identity and device access policies to protect organizational email and email clients that support modern authentication and conditional access. This guidance builds on the [Common identity and device access policies](zero-trust-identity-device-access-policies-common.md) and also includes a few additional recommendations.

These recommendations are based on three different tiers of security and protection that can be applied based on the granularity of your needs: **starting point**, **enterprise**, and **specialized security**. You can learn more about these security tiers and the recommended client operating systems in the [recommended security policies and configurations introduction](zero-trust-identity-device-access-policies-overview.md).

These recommendations require your users to use modern email clients, including Outlook for iOS and Android on mobile devices. Outlook for iOS and Android provide support for the best features of Microsoft 365. These mobile Outlook apps are also architected with security capabilities that support mobile use and work together with other Microsoft cloud security capabilities. For more information, see [Outlook for iOS and Android FAQ](/exchange/clients-and-mobile-in-exchange-online/outlook-for-ios-and-android/outlook-for-ios-and-android-faq).

## Update common policies to include email

To protect email, the following diagram illustrates which policies to update from the common identity and device access policies.

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-access-ruleset-mail.png" alt-text="The summary of policy updates for protecting access to Microsoft Exchange" lightbox="../../media/microsoft-365-policies-configurations/identity-access-ruleset-mail.png":::

Note the addition of a new policy for Exchange Online to block ActiveSync clients. This policy forces the use of Outlook for iOS and Android on mobile devices.

If you included Exchange Online and Outlook in the scope of the policies when you set them up, you only need to create the new policy to block ActiveSync clients. Review the policies listed in the following table and either make the recommended additions, or confirm that these settings are already included. Each policy links to the associated configuration instructions in [Common identity and device access policies](zero-trust-identity-device-access-policies-common.md).

|Protection level|Policies|More information|
|---|---|---|
|**Starting point**|[Require MFA when sign-in risk is *medium* or *high*](zero-trust-identity-device-access-policies-common.md#require-mfa-based-on-sign-in-risk)|Include Exchange Online in the assignment of cloud apps|
||[Block clients that don't support modern authentication](zero-trust-identity-device-access-policies-common.md#block-clients-that-dont-support-multifactor-authentication)|Include Exchange Online in the assignment of cloud apps|
||[Apply APP data protection policies](zero-trust-identity-device-access-policies-common.md#app-protection-policies)|Be sure Outlook is included in the list of apps. Be sure to update the policy for each platform (iOS, Android, Windows)|
||[Require approved apps and APP protection](zero-trust-identity-device-access-policies-common.md#require-approved-apps-and-app-protection-policies)|Include Exchange Online in the list of cloud apps|
||[Block ActiveSync clients](#block-activesync-clients)|Add this new policy|
|**Enterprise**|[Require MFA when sign-in risk is *low*, *medium* or *high*](zero-trust-identity-device-access-policies-common.md#require-mfa-based-on-sign-in-risk)|Include Exchange Online in the assignment of cloud apps|
||[Require compliant PCs *and* mobile devices](zero-trust-identity-device-access-policies-common.md#require-compliant-pcs-and-mobile-devices)|Include Exchange Online in the list of cloud apps|
|**Specialized security**|[*Always* require MFA](zero-trust-identity-device-access-policies-common.md#require-mfa-based-on-sign-in-risk)|Include Exchange Online in the assignment of cloud apps|

## Block ActiveSync clients

Exchange ActiveSync can be used to synchronize messaging and calendaring data on desktop and mobile devices.

For mobile devices, the following clients are blocked based on the Conditional Access policy created in [Require approved apps and APP protection](zero-trust-identity-device-access-policies-common.md#require-approved-apps-and-app-protection-policies):

- Exchange ActiveSync clients that use basic authentication.
- Exchange ActiveSync clients that support modern authentication, but don't support Intune app protection policies.
- Devices that support Intune app protection policies, but aren't defined in the policy.

To block Exchange ActiveSync connections using basic authentication on other types of devices (for example, PCs), follow the steps in [Block Exchange ActiveSync on all devices](/azure/active-directory/conditional-access/howto-policy-approved-app-or-app-protection#block-exchange-activesync-on-all-devices).

## Limit access to Exchange Online from Outlook on the web

You can restrict the ability for users to download attachments from Outlook on the web on unmanaged devices. Users on these devices can view and edit these files using Office Online without leaking and storing the files on the device. You can also block users from seeing attachments on an unmanaged device.

Here are the steps:

1. [Connect to Exchange Online PowerShell](/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

2. Every Microsoft 365 organization with Exchange Online mailboxes has a built-in Outlook on the web (formerly known as Outlook Web App or OWA) mailbox policy named OwaMailboxPolicy-Default. Admins can also [create](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/create-outlook-web-app-mailbox-policy) custom policies.

   To see the available Outlook on the web mailbox policies, run the following command:

   ```powershell
   Get-OwaMailboxPolicy | Format-Table Name,ConditionalAccessPolicy
   ```
   
3. To allow viewing attachments but no downloading, run the following command on the affected policies:

   ```powershell
   Set-OwaMailboxPolicy -Identity "<PolicyName>" -ConditionalAccessPolicy ReadOnly
   ```

   For example:

   ```powershell
   Set-OwaMailboxPolicy -Identity "OwaMailboxPolicy-Default" -ConditionalAccessPolicy ReadOnly
   ```

4. To block attachments, run the following command on the affected policies:

   ```powershell
   Set-OwaMailboxPolicy -Identity "<PolicyName>" -ConditionalAccessPolicy ReadOnlyPlusAttachmentsBlocked
   ```

   For example:

   ```powershell
   Set-OwaMailboxPolicy -Identity "OwaMailboxPolicy-Default" -ConditionalAccessPolicy ReadOnlyPlusAttachmentsBlocked
   ```

5. In the Azure portal, [create a new Conditional Access policy](/azure/active-directory/conditional-access/concept-conditional-access-policies) with these settings:

   **Assignments** \> **Users and groups**: Select appropriate users and groups to include and exclude.

   **Assignments** \> **Cloud apps or actions** \> **Cloud apps** \> **Include** \> **Select apps**: Select **Office 365 Exchange Online**.

   **Access controls** \> **Session**: Select **Use app enforced restrictions**.

## Require that iOS and Android devices must use Outlook

To ensure that iOS and Android devices can access work or school content using Outlook for iOS and Android only, you need a Conditional Access policy that targets those potential users.

See the steps to configure this policy in [Manage messaging collaboration access by using Outlook for iOS and Android](/mem/intune/apps/app-configuration-policies-outlook#apply-conditional-access).

## Set up message encryption

With Microsoft Purview Message Encryption, which uses the protection features in Azure Information Protection, your organization can easily share protected email with anyone on any device. Users can send and receive protected messages with other Microsoft 365 organizations as well as non-customers using Outlook.com, Gmail, and other email services.

For more information, see [Set up Message Encryption](/purview/set-up-new-message-encryption-capabilities).

## Next steps

:::image type="content" source="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png" alt-text="The Policies for Microsoft 365 cloud apps" lightbox="../../media/microsoft-365-policies-configurations/identity-device-access-steps-next-step-4.png":::

Configure Conditional Access policies for:

- [Microsoft Teams](zero-trust-identity-device-access-policies-teams.md)
- [SharePoint](zero-trust-identity-device-access-policies-sharepoint.md)
