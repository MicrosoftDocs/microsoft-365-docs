---
title: "Manage Office 365 Message Encryption"
ms.author: krowley
author: kccross
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.date: 5/8/2019
search.appverid:
- MET150
ms.assetid: 09f6737e-f03f-4bc8-8281-e46d24ee2a74
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
description: "Once you've finished setting up Office 365 Message Encryption (OME), you can customize the configuration of your deployment in several ways. For example, you can configure whether to enable one-time pass codes, display the Protect button in Outlook on the web, and more. The tasks in this article describe how."
---

# Manage Office 365 Message Encryption

Once you've finished setting up Office 365 Message Encryption (OME), you can customize the configuration of your deployment in several ways. For example, you can configure whether to enable one-time pass codes, display the **Encrypt** button in Outlook on the web, and more. The tasks in this article describe how.

## Manage whether Google, Yahoo, and Microsoft Account recipients can use these accounts to sign in to the Office 365 Message Encryption portal

When you set up the new Office 365 Message Encryption capabilities, users in your organization can send messages to recipients that are outside of your Office 365 organization. If the recipient uses a *social ID* such as a Google account, Yahoo account, or Microsoft account, the recipient can sign in to the OME portal with a social ID. If you want, you can choose not to allow recipients to use social IDs to sign in to the OME portal.
  
### To manage whether recipients can use social IDs to sign in to the OME portal
  
1. [Connect to Exchange Online Using Remote PowerShell](https://technet.microsoft.com/library/jj984289%28v=exchg.150%29.aspx).

2. Run the Set-OMEConfiguration cmdlet with the SocialIdSignIn parameter as follows:

   ```powershell
   Set-OMEConfiguration -Identity <"OMEConfigurationIdParameter"> -SocialIdSignIn <$true|$false>
   ```

   For example, to disable social IDs:

   ```powershell
   Set-OMEConfiguration -Identity "OME Configuration" -SocialIdSignIn $false
   ```

   To enable social IDs:

   ```powershell
   Set-OMEConfiguration -Identity "OME Configuration" -SocialIdSignIn $true
   ```

## Manage the use of one-time pass codes for the Office 365 Message Encryption portal

If the recipient of a message encrypted by OME doesn't use Outlook, regardless of the account used by the recipient, the recipient receives a limited-time web-view link that lets them read the message. This link includes a one-time pass code. As an administrator, you can decide if recipients can use one-time pass codes to sign in to the OME portal.
  
### To manage whether OME generates one-time pass codes
  
1. Use a work or school account that has global administrator permissions in your Office 365 organization and start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the Set-OMEConfiguration cmdlet with the OTPEnabled parameter:

   ```powershell
   Set-OMEConfiguration -Identity <"OMEConfigurationIdParameter "> -OTPEnabled <$true|$false>
   ```

   For example, to disable one-time pass codes:

   ```powershell
   Set-OMEConfiguration -Identity "OME Configuration" -OTPEnabled $false
   ```

   To enable one-time pass codes:

   ```powershell
   Set-OMEConfiguration -Identity "OME Configuration" -OTPEnabled $true
   ```

## Manage the display of the Encrypt button in Outlook on the web

As an administrator, you can manage whether to display this button to end users.
  
### To manage whether the Encrypt button appears in Outlook on the web
  
1. Use a work or school account that has global administrator permissions in your Office 365 organization and start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the Set-IRMConfiguration cmdlet with the -SimplifiedClientAccessEnabled parameter:

   ```powershell
   Set-IRMConfiguration -SimplifiedClientAccessEnabled <$true|$false>
   ```

   For example, to disable the **Encrypt** button:

   ```powershell
   Set-IRMConfiguration -SimplifiedClientAccessEnabled $false
   ```

   To enable the **Encrypt** button:

   ```powershell
   Set-IRMConfiguration -SimplifiedClientAccessEnabled $true
   ```

## Enable service-side decryption of email messages for iOS mail app users

The iOS mail app can't decrypt messages protected with Office 365 Message Encryption. As an Office 365 administrator, you can apply service-side decryption for messages delivered to the iOS mail app. When you choose to do use service-side decryption, the service sends a decrypted copy of the message to the iOS device. The client device stores a decrypted copy of the message. The message also retains information about usage rights even though the iOS mail app doesn't apply client-side usage rights to the user. The user can copy or print the message even if they didn't originally have the rights to do so. However, if the user attempts to complete an action that requires the Office 365 mail server, such as forwarding the message, the server won't permit the action if the user didn't originally have the usage right to do so. However, end users can work around "Do Not Forward" usage restriction by forwarding the message from a different account within the iOS mail app. Regardless of whether you set up service-side decryption of mail, attachments to encrypted and rights protected mail can't be viewed in the iOS mail app.
  
If you choose not to allow decrypted messages to be sent to iOS mail app users, users receive a message that states that they don't have the rights to view the message. By default, service-side decryption of email messages is not enabled.
  
For more information, and for a view of the client experience, see [View encrypted messages on your iPhone or iPad](https://support.office.com/article/4d631321-0d26-4bcc-a483-d294dd0b1caf).
  
### To manage whether iOS mail app users can view messages protected by Office 365 Message Encryption
  
1. Use a work or school account that has global administrator permissions in your Office 365 organization and start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the Set-ActiveSyncOrganizations cmdlet with the AllowRMSSupportForUnenlightenedApps parameter:

   ```powershell
   Set-ActiveSyncOrganizationSettings -AllowRMSSupportForUnenlightenedApps <$true|$false>
   ```

   For example, to configure the service to decrypt messages before they're sent to unenlightened apps like the iOS mail app:

   ```powershell
   Set-ActiveSyncOrganizationSettings -AllowRMSSupportForUnenlightenedApps $true
   ```

   Or, to configure the service not to send decrypted messages to unenlightened apps:

   ```powershell
   Set-ActiveSyncOrganizationSettings -AllowRMSSupportForUnenlightenedApps $false
   ```

> [!NOTE]
> Individual mailbox policies (OWA/ActiveSync) override these settings (i.e. if -IRMEnabled is set to False within the respective OWA Mailbox policy, or ActiveSync Mailbox policy, then these configurations would not apply).

## Enable service-side decryption of email attachments for web browser mail clients

Normally, when you use Office 365 message encryption, attachments are automatically encrypted. As an Office 365 administrator, you can apply service-side decryption for email attachments that users download from a web browser.
  
When you use service-side decryption, the service sends a decrypted copy of the file to the device. The message is still encrypted. The email attachment also keeps information about usage rights even though the browser doesn't apply client-side usage rights to the user. The user can copy or print the email attachment even if they didn't originally have the rights to do so. However, if the user tries to complete an action that requires the Office 365 mail server, such as forwarding the attachment, the server won't permit the action if the user didn't originally have the usage right to do so.
  
Regardless of whether you set up service-side decryption of attachments, users can't view any attachments to encrypted and rights protected mail in the iOS mail app.
  
If you choose not to allow decrypted email attachments, which is the default, users receive a message that states that they don't have the rights to view the attachment.
  
For more information about how Office 365 implements encryption for emails and email attachments with the Encrypt-Only option, see [Encrypt-Only option for emails.](https://docs.microsoft.com/azure/information-protection/deploy-use/configure-usage-rights#encrypt-only-option-for-emails)
  
### To manage whether email attachments are decrypted on download from a web browser
  
1. Use a work or school account that has global administrator permissions in your Office 365 organization and start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the Set-IRMConfiguration cmdlet with the DecryptAttachmentForEncryptOnly parameter:

   ```powershell
   Set-IRMConfiguration -DecryptAttachmentForEncryptOnly <$true|$false>
   ```

   For example, to configure the service to decrypt email attachments when a user downloads them from a web browser:

   ```powershell
   Set-IRMConfiguration -DecryptAttachmentForEncryptOnly $true
   ```

   To configure the service to leave encrypted email attachments as they are upon download:

   ```powershell
   Set-IRMConfiguration -DecryptAttachmentForEncryptOnly $false
   ```

## Ensure all external recipients use the OME Portal to read encrypted mail — Office 365 Advanced Message Encryption only

If you have Office 365 Advanced Message Encryption, you can use custom branding templates to force recipients to receive a wrapper mail that directs them to read encrypted email in the OME Portal instead of using Outlook or Outlook on the web. You might want to do this if you use want greater control over how recipients use the mail they receive. For example, if external recipients view email in the web portal, you can set an expiration date for the email, and you can revoke the email. These features are only supported through the OME Portal. You can use the Encrypt option and the Do Not Forward option when creating the mail flow rules.

### Create a custom template to force all external recipients to use the OME Portal and for encrypted email to be revocable and expire in 7 days

1. Use a work or school account that has global administrator permissions in your Office 365 organization and start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Run the New-OMEConfiguration cmdlet:

   ```powershell
   New-OMEConfiguration -Identity "<template name>" -ExternalMailExpiryInDays 7
   ```

   where `template name` is the name you want to use for the Office 365 Message Encryption custom branding template. For example,

   ```powershell
   New-OMEConfiguration -Identity "<One week expiration>" -ExternalMailExpiryInDays 7
   ```

3. Run the New-TransportRule cmdlet:

   ```powershell
   New-TransportRule -name "<mail flow rule name>" -FromScope "InOrganization" -ApplyRightsProtectionTemplate "<option name>" -ApplyRightsProtectionCustomizationTemplate "<template name>"
   ```

    where:

   - `mail flow rule name` is the name you want to use for the new mail flow rule.

   - `option name` is either `Encrypt` or `Do Not Forward`.

   - `template name` is the name you gave the custom branding template, for example `One week expiration`.

   To encrypt all external email with the "One week expiration" template and apply the Encrypt-Only option:

   ```powershell
   New-TransportRule -name "<All outgoing mail>" -FromScope "InOrganization" -ApplyRightsProtectionTemplate "Encrypt" -ApplyRightsProtectionCustomizationTemplate "<One week expiration>"
   ```

   To encrypt all external email with the "One week expiration" template and apply the Do Not Forward option:

   ```powershell
   New-TransportRule -name "<All outgoing mail>" -FromScope "InOrganization" -ApplyRightsProtectionTemplate "Do Not Forward" -ApplyRightsProtectionCustomizationTemplate "<One week expiration>"
   ```

## Customize the appearance of email messages and the OME portal

For detailed information about how you can customize OME for your organization, see [Add your organization's brand to your encrypted messages](add-your-organization-brand-to-encrypted-messages.md).
  
## Disable the new capabilities for OME

We hope it doesn't come to it, but if you need to, disabling the new capabilities for OME is very straightforward. First, you'll need to remove any mail flow rules you've created that use the new OME capabilities. For information about removing mail flow rules, see [Manage mail flow rules](https://technet.microsoft.com/library/jj657505%28v=exchg.150%29.aspx). Then, complete these steps in Exchange Online PowerShell.
  
### To disable the new capabilities for OME
  
1. Using a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. If you enabled the **Encrypt** button in Outlook on the web, disable it by running the Set-IRMConfiguration cmdlet with the SimplifiedClientAccessEnabled parameter. Otherwise, skip this step.

   ```powershell
   Set-IRMConfiguration -SimplifiedClientAccessEnabled $false
   ```

3. Disable the new capabilities for OME by running the Set-IRMConfiguration cmdlet with the AzureRMSLicensingEnabled parameter set to false:

   ```powershell
   Set-IRMConfiguration -AzureRMSLicensingEnabled $false
   ```
