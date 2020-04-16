---
title: "Configure the default anti-phishing policy in EOP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Admins can learn how to modify the anti-spoofing settings that are available in the default anti-phishing policy in Office 365 organizations with Exchange Online mailboxes."
---

# Configure the default anti-phishing policy in EOP

Office 365 organizations with Exchange Online mailboxes and standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes have a default anti-phishing policy. This policy contains a limited number of anti-spoofing features that are enabled by default. For more information, see [Spoof settings in anti-phishing policies](set-up-anti-phishing-policies.md#spoof-settings).

Office 365 organizations with Exchange Online mailboxes can modify the default anti-phishing policy in the Office 365 Security & Compliance Center or in Exchange Online PowerShell. Standalone EOP organizations without Exchange Online mailboxes can't modify their default anti-phishing policy.

For information about creating and modifying the more advanced ATP anti-phishing policies that are available in Office 365 Advanced Threat Protection, see [Configure ATP anti-phishing policies in Office 365](configure-atp-anti-phishing-policies.md).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Anti-phishing** page, use <https://protection.office.com/antiphishing>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can perform these procedures. To add, modify, and delete anti-phishing policies, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For read-only access to anti-phishing policies, you need to be a member of the **Security Reader** role group. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

- For our recommended settings for the default anti-phishing policy, see [EOP default anti-phishing policy settings](recommended-settings-for-eop-and-office365-atp.md#eop-default-anti-phishing-policy-settings).

- Allow up to 30 minutes for the updated policy to be applied.

- For information about where anti-phishing policies are applied in the filtering pipeline, see [Order and precedence of email protection in Office 365](how-policies-and-protections-are-combined.md).

### Use the Security & Compliance Center to modify the default anti-phishing policy

The default anti-phishing policy is named Office365 AntiPhish Default, and it doesn't appear in the list of policies. To modify the default anti-phishing policy, do the following steps:

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-phishing**.

2. On the **Anti-phishing** page, click **Default policy**.

3. The **Edit your policy Office365 AntiPhish Default** page appears. In the **Spoof** section, click **Edit**.

   Note that these settings are identical to the spoof settings that are available in ATP anti-phishing policies.

   - **Spoofing filter settings**: The default value is **On**, and we recommend that you leave it on. To turn it off, slide the toggle to **Off**. For more information, see [Learn more about spoof intelligence](learn-about-spoof-intelligence.md).

     > [!NOTE]
     > You don't need to disable anti-spoofing protection if your MX record doesn't point to Office 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

   - **Enable Unauthenticated Sender feature**: Adds a question mark to the sender's photo if the message fails email authentication checks. The default value is **On**. To turn it off, slide the toggle to **Off**.

   - **Actions**: Specify the action to take on messages that fail spoof intelligence:

     **If email is sent by someone who's not allowed to spoof your domain**:

     - **Move message to the recipients' Junk Email folders** (This is the default value.)
     - **Quarantine the message**

   - **Review your settings**: Instead of clicking on each individual step, the settings are displayed in a summary.

     - You can click **Edit** in each section to jump back to the relevant page.
     - You can toggle the following settings **On** or **Off** directly on this page:

       - **Enable antispoofing protection**
       - **Enable Unauthenticated Sender feature**

   When you're finished, click **Save** on any page.

4. Back on the **Edit your policy Office365 AntiPhish Default** page, review your settings and then click **Close**.

## Use the Security & Compliance Center to view the default anti-phishing policy

1. In the Security & Compliance Center, and go to **Threat management** \> **Policy** \> **ATP anti-phishing**.

2. Click **Default policy** to view the default anti-phishing policy.

## Use Exchange Online PowerShell to configure the default anti-phishing policy

### Use PowerShell to view the default anti-phish policy

To view the default anti-phish policy, run the following command:

```PowerShell
Get-AntiPhishPolicy -Identity "Office365 AntiPhish Default"
```

For detailed syntax and parameter information, see [Get-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/Get-AntiPhishPolicy).

### Use PowerShell to modify the default anti-phish policy

To modify the default anti-phish policy, use the following syntax:

```powershell
Set-AntiPhishPolicy -Identity "Office365 AntiPhish Default" [-AuthenticationFailAction <MoveToJmf | Quarantine>] [-EnableAntispoofEnforcement <$true | $false>] [-EnableUnauthenticatedSender <$true | $false>]
```

This example changes the action for spoofed messages that fail authentication checks to quarantine.

```powershell
Set-AntiPhishPolicy -Identity "Office365 AntiPhish Default" -AuthenticationFailAction Quarantine
```

For detailed syntax and parameter information, see [Set-AntiPhishPolicy](https://docs.microsoft.com/powershell/module/exchange/advanced-threat-protection/Set-AntiPhishPolicy).

## How do you know these procedures worked?

To verify that you've successfully configured the default anti-phishing policy, do any of the following steps:

- In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-phishing** \> click **Default policy** and view the details in the flyout.

- In Exchange Online PowerShell, run the following command and verify the settings:

  ```PowerShell
  Get-AntiPhishPolicy -Identity "Office365 AntiPhish Default"
  ```
