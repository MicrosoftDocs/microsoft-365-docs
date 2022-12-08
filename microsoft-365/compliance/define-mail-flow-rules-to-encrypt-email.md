---
title: "Define mail flow rules to encrypt email messages"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
search.appverid:
- MET150
- MOE150
ms.assetid: 9b7daf19-d5f2-415b-bc43-a0f5f4a585e8
ms.collection:
- purview-compliance
- tier2
ms.custom: 
- admindeeplinkMAC
- admindeeplinkEXCHANGE
description: "Admins can learn to create mail flow rules (transport rules) to encrypt and decrypt messages using Microsoft Purview Message Encryption."
---

# Define mail flow rules to encrypt email messages

As an administrator that manages Exchange Online, you can create mail flow rules (also known as transport rules) to help protect email messages you send and receive. You can set up rules to encrypt any outgoing email messages and remove encryption from encrypted messages coming from inside your organization or from replies to encrypted messages sent from your organization. You can use the <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">Exchange admin center (EAC)</a> or Exchange Online PowerShell to create these rules. In addition to overall encryption rules, you can also choose to enable or disable individual message encryption options for end users.

You can't encrypt inbound mail from senders outside of your organization.

If you recently migrated from Active Directory RMS to Azure Information Protection, you'll need to review your existing mail flow rules to ensure that they continue to work in your new environment. Also, to use Microsoft Purview Message Encryption with Azure Information Protection, you need to update your existing mail flow rules. Otherwise, your users will continue to receive encrypted mail that uses the previous HTML attachment format instead of the new, seamless experience. If you haven't set up message encryption yet, see [Set up Microsoft Purview Message Encryption](set-up-new-message-encryption-capabilities.md) for information.

For information about the components that make up mail flow rules and how mail flow rules work, see [Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules). For additional information about how mail flow rules work with Azure Information Protection, see [Configuring Exchange Online mail flow rules for Azure Information Protection labels](/azure/information-protection/deploy-use/configure-exo-rules).

> [!IMPORTANT]
> For hybrid Exchange environments, on-premises users can send and receive encrypted mail using message encryption only if email is routed through Exchange Online. To configure message encryption in a hybrid Exchange environment, you need to first [configure hybrid using the Hybrid Configuration wizard](/Exchange/exchange-hybrid) and then [configure mail to flow from Office 365 to your email server](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-to-route-mail#part-1-configure-mail-to-flow-from-office-365-to-your-on-premises-email-server) and [configure mail to flow from your email server to Office 365](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/set-up-connectors-to-route-mail#part-2-configure-mail-to-flow-from-your-email-server-to-office-365). Once you've configured mail to flow through Office 365, then you can configure mail flow rules for message encryption by using this guidance.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Create mail flow rules to encrypt email messages with Microsoft Purview Message Encryption

You can define mail flow rules for triggering message encryption with by using the EAC.

### Use the EAC to create a rule for encrypting email messages with Microsoft Purview Message Encryption

1. In a web browser, using a work or school account that has been granted global administrator permissions, [sign in to Office 365](https://support.office.com/article/b9582171-fd1f-4284-9846-bdd72bb28426#ID0EAABAAA=Web_browser).

2. Choose the **Admin** tile.

3. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, choose **Admin centers** \> **Exchange**.

4. In the EAC, go to **Mail flow** \> **Rules** and select **New** ![New icon.](../media/457cd93f-22c2-4571-9f83-1b129bcfb58e.gif) \> **Create a new rule**. For more information about using the EAC, see [Exchange admin center in Exchange Online](/exchange/exchange-admin-center).

5. In **Name**, type a name for the rule, such as Encrypt mail for DrToniRamos@hotmail.com.

6. In **Apply this rule if**, select a condition, and enter a value if necessary. For example, to encrypt messages going to DrToniRamos@hotmail.com:

   1. In **Apply this rule if**, select **the recipient is**.

   2. Select an existing name from the contact list or type a new email address in the **check names** box.

      - To select an existing name, select it from the list and then click **OK**.

      - To enter a new name, type an email address in the **check names** box and then select **check names** \> **OK**.

7. To add more conditions, choose **More options** and then choose **add condition** and select from the list.

   For example, to apply the rule only if the recipient is outside your organization, select **add condition** and then select **The recipient is external/internal** \> **Outside the organization** \> **OK**.

8. To enable message encryption, from **Do the following**, select **Modify the message security** and then choose **Apply Office 365 Message Encryption and rights protection**. Select an RMS template from the list, choose **Save**, and then choose **OK**.
  
  The list of templates includes all default templates and options as well as any custom templates you've created for use by Office 365. If the list is empty, ensure that you have set up Microsoft Purview Message Encryption as described in [Set up Microsoft Purview Message Encryption](set-up-new-message-encryption-capabilities.md). For information about the default templates, see [Configuring and managing templates for Azure Information Protection](/information-protection/deploy-use/configure-policy-templates). For information about the **Do Not Forward** option, see [Do Not Forward option for emails](/information-protection/deploy-use/configure-usage-rights#do-not-forward-option-for-emails). For information about the **encrypt-only** option, see [Encrypt-only option for emails](/information-protection/deploy-use/configure-usage-rights#encrypt-only-option-for-emails).

  You can choose **add action** if you want to specify another action.

### Use the EAC to update an existing mail flow rule to use Microsoft Purview Message Encryption

1. In a web browser, using a work or school account that has been granted global administrator permissions, [sign in to Office 365](https://support.office.com/article/b9582171-fd1f-4284-9846-bdd72bb28426#ID0EAABAAA=Web_browser).

2. Choose the **Admin** tile.

3. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, choose **Admin centers** \> **Exchange**.

4. In the EAC, go to **Mail flow** \> **Rules**.

5. In the list of mail flow rules, select the rule you want to modify to use with Microsoft Purview Message Encryption and then choose **Edit** ![Edit icon.](../media/ebd260e4-3556-4fb0-b0bb-cc489773042c.gif).

6. To enable encryption using Microsoft Purview Message Encryption, from **Do the following**, choose **Modify the message security** and then choose **Apply Office 365 Message Encryption and rights protection**. Select an RMS template from the list, choose **Save** and then choose **OK**.

   The list of templates includes all default templates and options as well as any custom templates you've created for use by Office 365. If the list is empty, ensure that you have set up Microsoft Purview Message Encryption as described in [Set up Microsoft Purview Message Encryption](set-up-new-message-encryption-capabilities.md). For information about the default templates, see [Configuring and managing templates for Azure Information Protection](/information-protection/deploy-use/configure-policy-templates). For information about the Do Not Forward option, see [Do Not Forward option for emails](/information-protection/deploy-use/configure-usage-rights#do-not-forward-option-for-emails). For information about the encrypt-only option, see [Encrypt Only option for emails](/information-protection/deploy-use/configure-usage-rights#encrypt-only-option-for-emails).

   You can choose **add action** if you want to specify another action.

7. From the **Do the following** list, remove any actions that are assigned to **Modify the message security** \> **Apply the previous version of OME**.

8. Choose **Save**.

## Create mail flow rules to remove encryption for email messages with Microsoft Purview Message Encryption

You can define mail flow rules to remove message encryption with Microsoft Purview Message Encryption by using the EAC.

### Use the EAC to create a rule to remove encryption from email messages with Microsoft Purview Message Encryption

You can remove encryption from messages that was applied by your organization. You can also remove encryption from any encrypted attachments to ensure the whole email message is without any protection.

1. In a web browser, using a work or school account that has been granted global administrator permissions, [sign in to Office 365](https://support.office.com/article/b9582171-fd1f-4284-9846-bdd72bb28426#ID0EAABAAA=Web_browser).

2. Choose the **Admin** tile.

3. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, choose **Admin centers** \> **Exchange**.

4. In the EAC, go to **Mail flow** \> **Rules** and select **New** ![New icon.](../media/457cd93f-22c2-4571-9f83-1b129bcfb58e.gif) \> **Create a new rule**. For more information about using the EAC, see [Exchange admin center in Exchange Online](/exchange/exchange-admin-center).

5. In **Name**, type a name for the rule, such as `Remove encryption from outgoing mail`.

6. In **Apply this rule if**, select the conditions where encryption should be removed from messages. Add **The sender is located** \> **Inside the organization** for sending mail _or_ **The recipient is located** \> **Inside the organization** for receiving mail.

7. In **Do the following**, select **Modify the message security** \> **Remove Office 365 Message Encryption and rights protection applied by the organization**.

8. (Optional) In **Do the following**, select **Modify the message security** \> **Remove attachment rights protection protection applied by the organization**.

Save the rule.

## Create mail flow rules for Office 365 Message Encryption without Microsoft Purview Message Encryption

If you haven't yet moved your organization to Microsoft Purview Message Encryption, Microsoft recommends that you make a plan to move as soon as it is reasonable for your organization. For instructions, see [Set up Microsoft Purview Message Encryption](set-up-new-message-encryption-capabilities.md). Otherwise, see [Defining mail flow rules for Office 365 Message Encryption that don't use Microsoft Purview Message Encryption](legacy-information-for-message-encryption.md#defining-mail-flow-rules-for-office-365-message-encryption-that-dont-use-microsoft-purview-message-encryption).

## Related content

[Encryption in Office 365](encryption.md)

[Set up Microsoft Purview Message Encryption](set-up-new-message-encryption-capabilities.md)

[Add branding to encrypted messages](add-your-organization-brand-to-encrypted-messages.md)

[Mail flow rules (transport rules) in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)
