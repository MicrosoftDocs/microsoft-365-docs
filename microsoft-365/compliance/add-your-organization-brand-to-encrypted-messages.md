---
title: "Add your organization brand to your encrypted messages"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.date: 4/1/2020
search.appverid:
- MET150
- MOE150
ms.assetid: 7a29260d-2959-42aa-8916-feceff6ee51d
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
description: "As an Office 365 global administrator, you can apply your organization's branding to  your organization's encrypted email messages and to the contents of the encryption portal."
---

# Add your organization's brand to your encrypted messages

As an Exchange Online or Exchange Online Protection administrator, you can apply your company branding to customize the look of your organization's Office 365 Message Encryption email messages and the contents of the encryption portal. Using the Get-OMEConfiguration and Set-OMEConfiguration Windows PowerShell cmdlets, you can customize the following aspects of the viewing experience for recipients of encrypted email messages:
  
- Introductory text of the email that contains the encrypted message

- Disclaimer text of the email that contains the encrypted message

- URL of the privacy statement for your organization

- Text that appears in the OME portal

- Logo that appears in the email message and OME portal, or whether to use a logo at all

- Background color in the email message and OME portal

You can also revert back to the default look and feel at any time.

If you'd like more control, you can use Office 365 Advanced Message Encryption and create multiple templates for encrypted emails originating from your organization. Using these templates, you can control more than just the look and feel of the email messages, but also control parts of the end-user experience. For example, you can specify whether recipients of mail that have this template applied and who use Google, Yahoo, and Microsoft Accounts can use these accounts to sign in to the Office 365 Message Encryption portal. You might use templates to fulfill several use cases, such as:

- Templates for each department, such as Finance, Sales, and so on.

- Templates for different products

- Templates for different geographical regions or countries

- Whether you want to allow emails to be revoked

- Whether you want emails sent to external recipients to expire after a specified number of days.

Once you've created the templates, you can apply them to encrypted emails by using Exchange mail flow rules. If you have Office 365 Advanced Message Encryption, you can revoke any email that you've branded by using these templates.

## Work with OME branding templates

You can modify several features within a branding template. You can modify, but not remove, the default template. If you have Advanced Message Encryption, you can also create, modify, and remove custom templates. Use Windows PowerShell to work with one branding template at a time. You'll need a work or school account that has global administrator permissions in your Office 365 organization to use these cmdlets.

- [Set-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/set-omeconfiguration) - Modify the default branding template or a custom branding template that you created.
- [New-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/new-omeconfiguration) - Create a new branding template, Advanced Message Encryption only.
- [Remove-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/remove-omeconfiguration) - Remove a custom branding template, Advanced Message Encryption only. You can't delete the default branding template.
  
## Modify an OME branding template

Use Windows PowerShell to modify one branding template at a time. If you have Advanced Message Encryption, you can also create, modify, and remove custom templates.

1. Using a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Modify the template by using the Set-OMEConfiguration cmdlet as described in [Set-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/Set-OMEConfiguration) or use the following graphic and table for guidance.

![Customizable email parts](../media/ome-template-breakout.png)

|**To customize this feature of the encryption experience**|**Use these commands**|
|:-----|:-----|
|Background color|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -BackgroundColor "<Hexadecimal color code>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -BackgroundColor "#ffffff"`|
|Logo|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -Image <Byte[]>` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -Image (Get-Content "C:\Temp\contosologo.png" -Encoding byte)` <br/> Supported file formats: .png, .jpg, .bmp, or .tiff  <br/> Optimal size of logo file: less than 40 KB  <br/> Optimal size of logo image: 170x70 pixels. If your image exceeds these dimensions, the service resizes your logo for display in the portal. The service doesn't modify the graphic file itself. For best results, use the optimal size.|
|Text next to the sender's name and email address|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -IntroductionText "<String up to 1024 characters>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -IntroductionText "has sent you a secure message."`|
|Text that appears on the "Read Message" button|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -ReadButtonText "<String up to 1024 characters>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -ReadButtonText "Read Secure Message."`|
|Text that appears below the "Read Message" button|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -EmailText "<String up to 1024 characters>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -EmailText "Encrypted message from ContosoPharma secure messaging system."`|
|URL for the Privacy Statement link|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -PrivacyStatementURL "<URL>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -PrivacyStatementURL "https://contoso.com/privacystatement.html"`|
|Disclaimer statement in the email that contains the encrypted message|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -DisclaimerText "<Disclaimer statement. String of up to 1024 characters.>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -DisclaimerText "This message is confidential for the use of the addressee only."`|
|Text that appears at the top of the encrypted mail viewing portal|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -PortalText "<Text for your portal. String of up to 128 characters.>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -PortalText "ContosoPharma secure email portal."`|
|To enable or disable authentication with a one-time pass code for this custom template|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -OTPEnabled <$true|$false>` <br/> **Examples:** <br/>To enable one-time passcodes for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -OTPEnabled $true` <br/> To disable one-time passcodes for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -OTPEnabled $false`|
|To enable or disable authentication with Microsoft, Google, or Yahoo identities for this custom template|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -SocialIdSignIn <$true|$false>` <br/> **Examples:** <br/>To enable social IDs for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -SocialIdSignIn $true` <br/> To disable social IDs for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -SocialIdSignIn $false`|

## Create an OME branding template (Advanced Message Encryption)

If you have Office 365 Advanced Message Encryption, you can create custom branding templates for your organization by using the [New-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/new-omeconfiguration) cmdlet. Once you've created the template, you modify the template by using the Set-OMEConfiguration cmdlet as described in [Modify an OME branding template](#modify-an-ome-branding-template). You can create multiple templates.

To create a new custom branding template:

1. Using a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Use the [New-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/new-omeconfiguration) cmdlet to create a new template.

   ```powershell
   New-OMEConfiguration -Identity <OMEConfigurationIdParameter>
   ```

   For example,

   ```powershell
   New-OMEConfiguration -Identity "Custom branding template"
   ```

## Return the default branding template to its original values

To remove all modifications from the default template, including brand customizations, and so on, complete these steps:
  
1. Using a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Use the **Set-OMEConfiguration** cmdlet as described in [Set-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/Set-OMEConfiguration). To remove your organization's branded customizations from the DisclaimerText, EmailText, and PortalText values, set the value to an empty string, `""`. For all image values, such as Logo, set the value to  `"$null"`.

   The following table describes the encryption customization option defaults.

   **To revert this feature of the encryption experience back to the default text and image**|**Use these commands**|
   |:-----|:-----|
   |Default text that accompanies encrypted email messages  <br/> The default text appears above the instructions for viewing encrypted messages|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -EmailText "<empty string>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -EmailText ""`|
   |Disclaimer statement in the email that contains the encrypted message|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> DisclaimerText "<empty string>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -DisclaimerText ""`|
   |Text that appears at the top of the encrypted mail viewing portal|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -PortalText "<empty string>"` <br/> **Example reverting back to default:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -PortalText ""`|
   |Logo|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -Image <"$null">` <br/> **Example reverting back to default:** <br/>  `Set-OMEConfiguration -Identity "OME configuration" -Image $null`|
   |Background color|`Set-OMEConfiguration -Identity <OMEConfigurationIdParameter> -BackgroundColor <"$null">` <br/> **Example reverting back to default:** <br/> `Set-OMEConfiguration -Identity "OME configuration" -BackgroundColor $null`|
   |

## Remove a custom branding template (Advanced Message Encryption)

You can only remove or delete branding templates that you've made. You can't remove the default branding template.

To remove a custom branding template:
  
1. Using a work or school account that has global administrator permissions in your Office 365 organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](https://aka.ms/exopowershell).

2. Use the **Remove-OMEConfiguration** cmdlet as follows:

   ```powershell
   Remove-OMEConfiguration -Identity "<OMEConfigurationIdParameter>
   ```

   For example,

   ```powershell
   Remove-OMEConfiguration -Identity "Branding template 1"
   ```

   For more information, see [Remove-OMEConfiguration](https://docs.microsoft.com/powershell/module/exchange/encryption-and-certificates/remove-omeconfiguration).

## Create an Exchange mail flow rule that applies your custom branding to encrypted emails

After you've either modified the default template or created new branding templates, you can create Exchange mail flow rules to apply your custom branding based on certain conditions. Such a rule will apply custom branding in the following scenarios:

- If the email was manually encrypted by the end user from the Outlook or Outlook on the web (formerly known as Outlook Web App) clients

- If the email was automatically encrypted by an Exchange mail flow rule or Office 365 Data Loss Prevention policy

For information on how to create an Exchange mail flow rule that applies encryption, see [Define mail flow rules to encrypt email messages in Office 365](define-mail-flow-rules-to-encrypt-email.md).

1. In a web browser, using a work or school account that has been granted global administrator permissions, [sign in to Office 365](https://support.office.com/article/b9582171-fd1f-4284-9846-bdd72bb28426#ID0EAABAAA=Web_browser).

2. Choose the **Admin** tile.

3. In the Microsoft 365 admin center, choose **Admin centers** \> **Exchange**.

4. In the EAC, go to **Mail flow** \> **Rules** and select **New** ![New icon](../media/457cd93f-22c2-4571-9f83-1b129bcfb58e.gif) \> **Create a new rule**. For more information about using the EAC, see [Exchange admin center in Exchange Online](https://docs.microsoft.com/exchange/exchange-admin-center).

5. In **Name**, type a name for the rule, such as Branding for sales department.

6. In **Apply this rule if**, select the condition **The sender is located inside the organization** as well as other conditions you want from the list of available conditions. For example, you might want to apply a particular branding template to:

   - All encrypted emails sent from members of the finance department
   - Encrypted emails sent with a certain keyword such as "External" or "Partner"
   - Encrypted emails sent to a particular domain

7. From **Do the following**, select **Modify the message security** > **Apply custom branding to OME messages**. Next, from the drop-down, select a branding template from those you created or modified.

8. (Optional) If you want the mail flow rule to apply encryption in addition to the custom branding, from **Do the following**, select **Modify the message security**, and then choose **Apply Office 365 Message Encryption and rights protection**. Select an RMS template from the list, choose **Save**, and then choose **OK**.
  
   The list of templates includes all default templates and options as well as any custom templates you've created for use by Office 365. If the list is empty, ensure that you have set up Office 365 Message Encryption with the new capabilities as described in [Set up new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md). For information about the default templates, see [Configuring and managing templates for Azure Information Protection](https://docs.microsoft.com/information-protection/deploy-use/configure-policy-templates). For information about the **Do Not Forward** option, see [Do Not Forward option for emails](https://docs.microsoft.com/information-protection/deploy-use/configure-usage-rights#do-not-forward-option-for-emails). For information about the **encrypt only** option, see [Encrypt Only option for emails](https://docs.microsoft.com/information-protection/deploy-use/configure-usage-rights#encrypt-only-option-for-emails).

   Choose **add action** if you want to specify another action.
