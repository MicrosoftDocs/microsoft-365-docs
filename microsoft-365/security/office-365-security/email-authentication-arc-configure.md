---
title: Configure trusted ARC sealers
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: high
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Authenticated Received Chain (ARC) is an email authentication method that tries to preserve authentication results across devices and any message modification that occurs between the sender and recipient.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 10/5/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Configure trusted ARC sealers

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, email authentication ([SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), and [DMARC](email-authentication-dmarc-configure.md)) verify email senders for the safety of the recipients.

But, some legitimate services might make changes to the message between the sender and recipient. For example, changes to the message might cause source IP address of the message to change, which can cause the following email authentication failures:

- SPF fails because of the new IP address.
- DKIM fails because of the content modification.
- DMARC fails because of the SPF and DKIM failures.

Authenticated Received Chain (ARC) helps reduce delivery failures due to legitimate email message changes by preserving the original email authentication information. You can configure your Microsoft 365 organization trust the service that modified the message, and to use that original information to help the message pass email authentication.

## ARC in Microsoft Defender for Office 365

Services that modify message content in transit before delivery can invalidate DKIM email signatures and affect the authentication of the message. These services can use ARC to provide details of the original authentication before the modifications occurred. Your organization can then trust these details to help authenticate the message.

Trusted ARC sealers let admins add a list of *trusted* intermediaries into the Microsoft Defender portal. Trusted ARC sealers allow Microsoft to honor ARC signatures from these trusted intermediaries, preventing these legitimate messages from failing the authentication chain.

> [!NOTE]
> Trusted ARC sealers is an admin-created list of intermediary domains that use ARC sealing. When an email is routed to Microsoft 365 through an ARC trusted intermediary, Microsoft 365 validates the ARC signature and (based on the ARC results) can honor the provided authentication details.

## When to use trusted ARC sealers?

Microsoft 365 organizations need a list of trusted ARC sealers only when intermediaries are a regular part of mail flow and when messages are affected in the following ways:

- The intermediary modifies the email header or email contents.
- The email modifications cause authentication to fail for other reasons (example, by removing attachments).

When an admin adds a trusted ARC sealer, Microsoft 365 validates and trusts the authentication results that the ARC sealer provides when delivering mail to your organization.

> [!NOTE]
> Add only legitimate, required services as trusted ARC sealers in your organization. Doing so helps affected messages pass email authentication checks, and prevents legitimate messages from being delivered to the Junk Email folder, quarantined, or rejected due to authentication failures.

## What do you need to know before you begin?

- You open the Microsoft Defender portal at <https://security.microsoft.com>. To go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](/powershell/exchange/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) (Defender portal only, not PowerShell): **Authorization and settings/Security settings/Core Security settings (manage)** or **Authorization and settings/Security settings/Core Security settings (read)**.
  - [Exchange Online permissions](/exchange/permissions-exo/permissions-exo): Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Azure AD permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator** or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

<a name='use-the-microsoft-365-defender-portal-to-add-trusted-arc-sealers'></a>

## Use the Microsoft Defender portal to add trusted ARC sealers

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Email Authentication Settings** in the **Rules** section \> **ARC** . Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, verify that the **ARC** tab is selected, and then select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add**.

   > [!TIP]
   > If **Trusted sealers** are already listed on the **ARC** tab, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.

3. In the **Add trusted ARC sealers** flyout that opens, enter the trusted signing domain in the box (for example, fabrikam.com).

   The domain name must match the domain that's shown in the `d` tag in the **ARC-Seal** and **ARC-Message-Signature** headers in affected email messages. You can use Outlook to see these headers. For instructions, see [View internet message headers in Outlook](https://support.microsoft.com/office/cd039382-dc6e-4264-ac74-c048563d212c).

   Repeat this step as many times as necessary. To remove an existing entry, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

   When you're finished in the **Add trusted ARC sealers** flyout, select **Save**

### Use Exchange Online PowerShell to add trusted ARC sealers

If you'd rather use PowerShell to view, add, or remove trusted ARC sealers, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

- **View existing trusted ARC sealers**

  ```powershell
  Get-ArcConfig
  ```

  If no trusted ARC sealers are configured, the command returns no results.

- **Add or remove trusted ARC sealers**

  To *replace* any existing ARC sealers with the values you specify, use the following syntax:

  ```powershell
  Set-ArcConfig -Identity [TenantId\]Default -ArcTrustedSealers "Domain1","Domain2",..."DomainN"
  ```

  The TenantId\ value isn't required in your own organization, only in delegated organizations. It's a GUID that's visible in many admin portal URLs in Microsoft 365 (the tid= value). For example, a32d39e2-3702-4ff5-9628-31358774c091.

  This example configures "cohovineyard.com" and "tailspintoys.com" as the only trusted ARC sealers in the organization.

  ```powershell
  Set-ArcConfig -Identity Default -ArcTrustedSealers "cohovineyard.com","tailspintoys.com"
  ```

  To preserve existing values, be sure to include the ARC sealers that you want to keep along with the new ARC sealers that you want to add.

  To add or remove ARC sealers without affecting the other entries, see the Examples section in [Set-ArcConfig](/powershell/module/exchange/set-arcconfig).

## Validate a trusted ARC sealer

If there's an ARC seal from a third party before the message reaches Microsoft 365, check the message header for the latest ARC headers after the message is delivered.

In the last **ARC-Authentication-Results** header, look for `arc=pass` and `oda=1`. These values indicate:

- The previous ARC has been verified.
- The previous ARC sealer is trusted.
- The previous pass result can be used to override the current DMARC failure.

For example:

```text
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
40.107.65.78) smtp.rcpttodomain=microsoft.com
smtp.mailfrom=sampledoamin.onmicrosoft.com; dmarc=bestguesspass action=none
header.from=sampledoamin.onmicrosoft.com; dkim=none (message not signed);
arc=pass (0 oda=1 ltdi=1
spf=[1,1,smtp.mailfrom=sampledoamin.onmicrosoft.com]
dkim=[1,1,header.d=sampledoamin.onmicrosoft.com]
dmarc=[1,1,header.from=sampledoamin.onmicrosoft.com])
```

To check whether the ARC result was used to override a DMARC failure, look for `compauth=pass` and `reason=130` in the last **ARC-Authentication-Results** header. For example:


```text
Authentication-Results: spf=fail (sender IP is 51.163.158.241)
smtp.mailfrom=contoso.com; dkim=fail (body hash did not verify)
header.d=contoso.com;dmarc=fail action=none
header.from=contoso.com;compauth=pass reason=130
```

## Trusted ARC sealer mail flow diagrams

These diagrams contrast mail flow operations with and without a trusted ARC sealer when using any SPF, DKIM, and DMARC email authentication. In both diagrams, the Microsoft 365 organization uses legitimate services that must interrupt mail flow, which can violate email authentication standards by changing the source IP, and update the email message header.

This diagram demonstrates the result *without* a trusted ARC sealer:

:::image type="content" source="../../media/m365d-indirect-traffic-flow-without-trusted-arc-sealer.PNG" alt-text="Contoso publishes SPF, DKIM, and DMARC. A sender using SPF sends email from inside contoso.com to fabrikam.com, and this message passes through a legitimate third party service that modifies the sending IP address in the email header. During the DNS check at Microsoft 365, the message fails SPF due to the altered IP, and fails DKIM because the content was modified. DMARC fails because of the SPF and DKIM failures. The message is delivered to the Junk Email folder, quarantined, or rejected.":::

This diagram demonstrates the result *with* a trusted ARC sealer:

:::image type="content" source="../../media/m365d-indirect-traffic-flow-with-trusted-arc-sealer.PNG" alt-text="Contoso publishes SPF, DKIM, and DMARC, but also configures the required trusted ARC sealers. A sender using SPF sends email from inside contoso.com to fabrikam.com, and this message passes through a legitimate third party service that modifies the sending IP address in the email header. The service uses ARC sealing, and because the service is defined as a trusted ARC sealer in Microsoft 365, the modification is accepted. SPF fails for the new IP address. DKIM fails because of the content modification. DMARC fails because of the earlier failures. But ARC recognizes the modifications, issues a Pass, and accepts the changes. Spoof also receives a pass. The message is delivered to the Inbox.":::

## Next steps: After you set up ARC for Defender for Office 365

After setup, check your ARC Headers with Message Header Analyzer at <https://mha.azurewebsites.net>.

Review the [SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), [DMARC](email-authentication-dmarc-configure.md), configuration steps.
