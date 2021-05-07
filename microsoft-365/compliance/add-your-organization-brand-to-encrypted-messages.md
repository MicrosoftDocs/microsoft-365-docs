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
ms.custom: 
- seo-marvel-apr2020
- seo-marvel-jun2020
description: Learn how Office 365 global administrators can apply your organization's branding to encrypted email messages & contents of the encryption portal.
---

# Add your organization's brand to your Microsoft 365 for business Message Encryption encrypted messages

You can apply your company branding to customize the look of your organization's email messages and the encryption portal. You'll need to apply global administrator permissions to your work or school account before you can get started. Once you have these permissions, use the Get-OMEConfiguration and Set-OMEConfiguration Windows PowerShell cmdlets to customize these parts of encrypted email messages:
  
- Introductory text

- Disclaimer text

- URL for Your organization's privacy statement

- Text in the OME portal

- Logo that appears in the email message and OME portal, or whether to use a logo at all

- Background color in the email message and OME portal

You can also revert back to the default look and feel at any time.

If you'd like more control, use Office 365 Advanced Message Encryption to create multiple templates for encrypted emails originating from your organization. Use these templates to control parts of the end-user experience. For example, specify whether recipients can use Google, Yahoo, and Microsoft Accounts to sign in to the encryption portal. Use templates to fulfill several use cases, such as:

- Individual departments, such as Finance, Sales, and so on.

- Different products

- Different geographical regions or countries

- Whether you want to allow emails to be revoked

- Whether you want emails sent to external recipients to expire after a specified number of days.

Once you've created the templates, you can apply them to encrypted emails by using Exchange mail flow rules. If you have Office 365 Advanced Message Encryption, you can revoke any email that you've branded by using these templates.

## Work with OME branding templates

You can modify several features within a branding template. You can modify, but not remove, the default template. If you have Advanced Message Encryption, you can also create, modify, and remove custom templates. Use Windows PowerShell to work with one branding template at a time.

- [Set-OMEConfiguration](/powershell/module/exchange/set-omeconfiguration) - Modify the default branding template or a custom branding template that you created.
- [New-OMEConfiguration](/powershell/module/exchange/new-omeconfiguration) - Create a new branding template, Advanced Message Encryption only.
- [Remove-OMEConfiguration](/powershell/module/exchange/remove-omeconfiguration) - Remove a custom branding template, Advanced Message Encryption only. You can't delete the default branding template.
  
## Modify an OME branding template

Use Windows PowerShell to modify one branding template at a time. If you have Advanced Message Encryption, you can also create, modify, and remove custom templates.

1. Using a work or school account that has global administrator permissions in your organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Use the Set-OMEConfiguration cmdlet as described in [Set-OMEConfiguration](/powershell/module/exchange/Set-OMEConfiguration) or use the following graphic and table for guidance.

![Customizable email parts](../media/ome-template-breakout.png)

|**To customize this feature of the encryption experience**|**Use these commands**|
|:-----|:-----|
|Background color|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -BackgroundColor "<#RRGGBB hexadecimal color code or name value>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -BackgroundColor "#ffffff"` <br/> For more information about background colors, see the [Background colors](#background-color-reference) section later in this article.|
|Logo|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -Image <Byte[]>` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -Image (Get-Content "C:\Temp\contosologo.png" -Encoding byte)` <br/> Supported file formats: .png, .jpg, .bmp, or .tiff  <br/> Optimal size of logo file: less than 40 KB  <br/> Optimal size of logo image: 170x70 pixels. If your image exceeds these dimensions, the service resizes your logo for display in the portal. The service doesn't modify the graphic file itself. For best results, use the optimal size.|
|Text next to the sender's name and email address|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -IntroductionText "<String up to 1024 characters>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -IntroductionText "has sent you a secure message."`|
|Text that appears on the "Read Message" button|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -ReadButtonText "<String up to 1024 characters>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -ReadButtonText "Read Secure Message."`|
|Text that appears below the "Read Message" button|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -EmailText "<String up to 1024 characters>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -EmailText "Encrypted message from ContosoPharma secure messaging system."`|
|URL for the Privacy Statement link|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -PrivacyStatementURL "<URL>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -PrivacyStatementURL "https://contoso.com/privacystatement.html"`|
|Disclaimer statement in the email that contains the encrypted message|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -DisclaimerText "<Disclaimer statement. String of up to 1024 characters.>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -DisclaimerText "This message is confidential for the use of the addressee only."`|
|Text that appears at the top of the encrypted mail viewing portal|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -PortalText "<Text for your portal. String of up to 128 characters.>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -PortalText "ContosoPharma secure email portal."`|
|To enable or disable authentication with a one-time pass code for this custom template|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -OTPEnabled <$true|$false>` <br/> **Examples:** <br/>To enable one-time passcodes for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -OTPEnabled $true` <br/> To disable one-time passcodes for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -OTPEnabled $false`|
|To enable or disable authentication with Microsoft, Google, or Yahoo identities for this custom template|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -SocialIdSignIn <$true|$false>` <br/> **Examples:** <br/>To enable social IDs for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -SocialIdSignIn $true` <br/> To disable social IDs for this custom template <br/>  `Set-OMEConfiguration -Identity "Branding Template 1" -SocialIdSignIn $false`|

## Create an OME branding template (Advanced Message Encryption)

If you have Office 365 Advanced Message Encryption, you can create custom branding templates for your organization by using the [New-OMEConfiguration](/powershell/module/exchange/new-omeconfiguration) cmdlet. Once you've created the template, you modify the template by using the Set-OMEConfiguration cmdlet as described in [Modify an OME branding template](#modify-an-ome-branding-template). You can create multiple templates.

To create a new custom branding template:

1. Using a work or school account that has global administrator permissions in your organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Use the [New-OMEConfiguration](/powershell/module/exchange/new-omeconfiguration) cmdlet to create a new template.

   ```powershell
   New-OMEConfiguration -Identity "<OMEConfigurationName>"
   ```

   For example,

   ```powershell
   New-OMEConfiguration -Identity "Custom branding template"
   ```

## Return the default branding template to its original values

To remove all modifications from the default template, including brand customizations, and so on, complete these steps:
  
1. Using a work or school account that has global administrator permissions in your organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Use the **Set-OMEConfiguration** cmdlet as described in [Set-OMEConfiguration](/powershell/module/exchange/Set-OMEConfiguration). To remove your organization's branded customizations from the DisclaimerText, EmailText, and PortalText values, set the value to an empty string, `""`. For all image values, such as Logo, set the value to  `"$null"`.

   The following table describes the encryption customization option defaults.

   |To revert this feature of the encryption experience back to the default text and image|Use these commands|
   |:-----|:-----|
   |Default text that comes with encrypted email messages.  The default text appears above the instructions for viewing encrypted messages|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -EmailText "<empty string>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -EmailText ""`|
   |Disclaimer statement in the email that contains the encrypted message|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" DisclaimerText "<empty string>"` <br/> **Example:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -DisclaimerText ""`|
   |Text that appears at the top of the encrypted mail viewing portal|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -PortalText "<empty string>"` <br/> **Example reverting back to default:** <br/>  `Set-OMEConfiguration -Identity "OME Configuration" -PortalText ""`|
   |Logo|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -Image <"$null">` <br/> **Example reverting back to default:** <br/>  `Set-OMEConfiguration -Identity "OME configuration" -Image $null`|
   |Background color|`Set-OMEConfiguration -Identity "<OMEConfigurationName>" -BackgroundColor "$null">` <br/> **Example reverting back to default:** <br/> `Set-OMEConfiguration -Identity "OME configuration" -BackgroundColor $null`|

## Remove a custom branding template (Advanced Message Encryption)

You can only remove or delete branding templates that you've made. You can't remove the default branding template.

To remove a custom branding template:
  
1. Using a work or school account that has global administrator permissions in your organization, start a Windows PowerShell session and connect to Exchange Online. For instructions, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Use the **Remove-OMEConfiguration** cmdlet as follows:

   ```powershell
   Remove-OMEConfiguration -Identity ""<OMEConfigurationName>"
   ```

   For example,

   ```powershell
   Remove-OMEConfiguration -Identity "Branding template 1"
   ```

   For more information, see [Remove-OMEConfiguration](/powershell/module/exchange/remove-omeconfiguration).

## Create an Exchange mail flow rule that applies your custom branding to encrypted emails

[!IMPORTANT] If there is any 3rd party component that scans and modifies mail, it can prevent OME branding being applied correctly and shown to your recipients.

After you've either modified the default template or created new branding templates, you can create Exchange mail flow rules to apply your custom branding based on certain conditions. Such a rule will apply custom branding in the following scenarios:

- If the email was manually encrypted by the end user using Outlook or Outlook on the web, formerly Outlook Web App

- If the email was automatically encrypted by an Exchange mail flow rule or Data Loss Prevention policy

For information on how to create an Exchange mail flow rule that applies encryption, see [Define mail flow rules to encrypt email messages in Office 365](define-mail-flow-rules-to-encrypt-email.md).

1. In a web browser, using a work or school account that has been granted global administrator permissions, [sign in to Office 365](https://support.office.com/article/b9582171-fd1f-4284-9846-bdd72bb28426#ID0EAABAAA=Web_browser).

2. Choose the **Admin** tile.

3. In the Microsoft 365 admin center, choose **Admin centers** \> **Exchange**.

4. In the EAC, go to **Mail flow** \> **Rules** and select **New** ![New icon](../media/457cd93f-22c2-4571-9f83-1b129bcfb58e.gif) \> **Create a new rule**. For more information about using the EAC, see [Exchange admin center in Exchange Online](/exchange/exchange-admin-center).

5. In **Name**, type a name for the rule, such as Branding for sales department.

6. In **Apply this rule if**, select the condition **The sender is located inside the organization** and other conditions you want from the list of available conditions. For example, you might want to apply a particular branding template to:

   - All encrypted emails sent from members of the finance department
   - Encrypted emails sent with a certain keyword such as "External" or "Partner"
   - Encrypted emails sent to a particular domain

7. From **Do the following**, select **Modify the message security** \> **Apply custom branding to OME messages**. Next, from the drop-down, select a branding template.

8. (Optional) You can configure the mail flow rule to apply encryption and custom branding. From **Do the following**, select **Modify the message security**, and then choose **Apply Office 365 Message Encryption and rights protection**. Select an RMS template from the list, choose **Save**, and then choose **OK**.
  
   The list of templates includes default templates and options and any custom templates you create. If the list is empty, ensure that you have set up Office 365 Message Encryption with the new capabilities. For instructions, see [Set up new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md). For information about the default templates, see [Configuring and managing templates for Azure Information Protection](/information-protection/deploy-use/configure-policy-templates). For information about the **Do Not Forward** option, see [Do Not Forward option for emails](/information-protection/deploy-use/configure-usage-rights#do-not-forward-option-for-emails). For information about the **encrypt only** option, see [Encrypt Only option for emails](/information-protection/deploy-use/configure-usage-rights#encrypt-only-option-for-emails).

   Choose **add action** if you want to specify another action.

## Background color reference

The color names that you can use for the background color are limited. Instead of a color name, you can use a hex code value (#RRGGBB). You can use a hex code value that corresponds to a color name, or you can use a custom hex code value. Be sure to enclose the hex code value in quotation marks (for example, `"#f0f8ff"`).

The available background color names and their corresponding hex code values are described in the following table.

|**Color name**|**Color code**|
|---|---|
|`aliceblue`|#f0f8ff|
|`antiquewhite`|#faebd7|
|`aqua`|#00ffff|
|`aquamarine`|#7fffd4|
|`azure`|#f0ffff|
|`beige`|#f5f5dc|
|`bisque`|#ffe4c4|
|`black`|#000000|
|`blanchedalmond`|#ffebcd|
|`blue`|#0000ff|
|`blueviolet`|#8a2be2|
|`brown`|#a52a2a|
|`burlywood`|#deb887|
|`cadetblue`|#5f9ea0|
|`chartreuse`|#7fff00|
|`chocolate`|#d2691e|
|`coral`|#ff7f50|
|`cornflowerblue`|#6495ed|
|`cornsilk`|#fff8dc|
|`crimson`|#dc143c|
|`cyan`|#00ffff|
|`darkblue`|#00008b|
|`darkcyan`|#008b8b|
|`darkgoldenrod`|#b8860b|
|`darkgray`|#a9a9a9|
|`darkgreen`|#006400|
|`darkkhaki`|#bdb76b|
|`darkmagenta`|#8b008b|
|`darkolivegreen`|#556b2f|
|`darkorange`|#ff8c00|
|`darkorchid`|#9932cc|
|`darkred`|#8b0000|
|`darksalmon`|#e9967a|
|`darkseagreen`|#8fbc8f|
|`darkslateblue`|#483d8b|
|`darkslategray`|#2f4f4f|
|`darkturquoise`|#00ced1|
|`darkviolet`|#9400d3|
|`deeppink`|#ff1493|
|`deepskyblue`|#00bfff|
|`dimgray`|#696969|
|`dodgerblue`|#1e90ff|
|`firebrick`|#b22222|
|`floralwhite`|#fffaf0|
|`forestgreen`|#228b22|
|`fuchsia`|#ff00ff|
|`gainsboro`|#dcdcdc|
|`ghostwhite`|#f8f8ff|
|`gold`|#ffd700|
|`goldenrod`|#daa520|
|`gray`|#808080|
|`green`|#008000|
|`greenyellow`|#adff2f|
|`honeydew`|#f0fff0|
|`hotpink`|#ff69b4|
|`indianred`|#cd5c5c|
|`indigo`|#4b0082|
|`ivory`|#fffff0|
|`khaki`|#f0e68c|
|`lavender`|#e6e6fa|
|`lavenderblush`|#fff0f5|
|`lawngreen`|#7cfc00|
|`lemonchiffon`|#fffacd|
|`lightblue`|#add8e6|
|`lightcoral`|#f08080|
|`lightcyan`|#e0ffff|
|`lightgoldenrodyellow`|#fafad2|
|`lightgray`|#d3d3d3|
|`lightgrey`|#d3d3d3|
|`lightgreen`|#90ee90|
|`lightpink`|#ffb6c1|
|`lightsalmon`|#ffa07a|
|`lightseagreen`|#20b2aa|
|`lightskyblue`|#87cefa|
|`lightslategray`|#778899|
|`lightsteelblue`|#b0c4de|
|`lightyellow`|#ffffe0|
|`lime`|#00ff00|
|`limegreen`|#32cd32|
|`linen`|#faf0e6|
|`magenta`|#ff00ff|
|`maroon`|#800000|
|`mediumaquamarine`|#66cdaa|
|`mediumblue`|#0000cd|
|`mediumorchid`|#ba55d3|
|`mediumpurple`|#9370db|
|`mediumseagreen`|#3cb371|
|`mediumslateblue`|#7b68ee|
|`mediumspringgreen`|#00fa9a|
|`mediumturquoise`|#48d1cc|
|`mediumvioletred`|#c71585|
|`midnightblue`|#191970|
|`mintcream`|#f5fffa|
|`mistyrose`|#ffe4e1|
|`moccasin`|#ffe4b5|
|`navajowhite`|#ffdead|
|`navy`|#000080|
|`oldlace`|#fdf5e6|
|`olive`|#808000|
|`olivedrab`|#6b8e23|
|`orange`|#ffa500|
|`orangered`|#ff4500|
|`orchid`|#da70d6|
|`palegoldenrod`|#eee8aa|
|`palegreen`|#98fb98|
|`paleturquoise`|#afeeee|
|`palevioletred`|#db7093|
|`papayawhip`|#ffefd5|
|`peachpuff`|#ffdab9|
|`peru`|#cd853f|
|`pink`|#ffc0cb|
|`plum`|#dda0dd|
|`powderblue`|#b0e0e6|
|`purple`|#800080|
|`red`|#ff0000|
|`rosybrown`|#bc8f8f|
|`royalblue`|#4169e1|
|`saddlebrown`|#8b4513|
|`salmon`|#fa8072|
|`sandybrown`|#f4a460|
|`seagreen`|#00ff00|
|`seashell`|#fff5ee|
|`sienna`|#a0522d|
|`silver`|#c0c0c0|
|`skyblue`|#87ceeb|
|`slateblue`|#6a5acd|
|`slategray`|#708090|
|`snow`|#fffafa|
|`springgreen`|#00ff7f|
|`steelblue`|#4682b4|
|`tan`|#d2b48c|
|`teal`|#008080|
|`thistle`|#d8bfd8|
|`tomato`|#ff6347|
|`turquoise`|#40e0d0|
|`violet`|#ee82ee|
|`wheat`|#f5deb3|
|`white`|#ffffff|
|`whitesmoke`|#f5f5f5|
|`yellow`|#ffff00|
|`yellowgreen`|#9acd32|
