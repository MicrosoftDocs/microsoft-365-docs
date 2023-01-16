---
title: "Set up Microsoft Purview Message Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 4/16/2022
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: high
search.appverid:
- MET150
ms.assetid: 7ff0c040-b25c-4378-9904-b1b50210d00e
ms.collection:
- tier1
- purview-compliance
description: Learn about Microsoft Purview Message Encryption that enables protected email communication with people inside and outside your organization.
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkMAC
- admindeeplinkEXCHANGE
---

# Set up Message Encryption

Microsoft Purview Message Encryption allows organizations to share protected email with anyone on any device. Users can exchange protected messages with other Microsoft 365 organizations, as well as third-parties using Outlook.com, Gmail, and other email services.

Follow the steps below to ensure that Microsoft Purview Message Encryption is available in your organization.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Verify that Azure Rights Management is active

Microsoft Purview Message Encryption leverages the protection features in [Azure Rights Management Services (Azure RMS)](/azure/information-protection/what-is-information-protection), the technology used by [Azure Information Protection](/azure/information-protection/what-is-azure-rms) to protect emails and documents via encryption and access controls.

The only prerequisite for using Microsoft Purview Message Encryption is that [Azure Rights Management](/azure/information-protection/what-is-azure-rms) must be activated in your organization's tenant. If it is, Microsoft 365 activates message encryption automatically and you don't need to do anything.

Azure RMS is also activated automatically for most eligible plans, so you probably don't have to do anything in this regard either. See [Activating Azure Rights Management](/azure/information-protection/activate-service) for more information.

> [!IMPORTANT]
> If you use Active Directory Rights Management service (AD RMS) with Exchange Online, you need to [migrate to Azure Information Protection](/azure/information-protection/migrate-from-ad-rms-to-azure-rms) before you can use message encryption. Microsoft Purview Message Encryption is not compatible with AD RMS.

For more information, see:

- [Message Encryption FAQ](ome-faq.yml) to check whether your subscription plan includes Azure Information Protection (which includes Azure RMS functionality).
- [Azure Information Protection](https://azure.microsoft.com/services/information-protection/) for information about purchasing an eligible subscription.

### Manually activating Azure Rights Management

If you disabled Azure RMS, or if it was not automatically activated for any reason, you can activate it manually. 

For instructions, see [How to activate or confirm the status of the protection service](/azure/information-protection/activate-service#how-to-activate-or-confirm-the-status-of-the-protection-service).

## Configure management of your Azure Information Protection tenant key

This is an optional step. Allowing Microsoft to manage the root key for Azure Information Protection is the default setting and recommended best practice for most organizations. If this is the case, you don't need to do anything.

There are many reasons, for example compliance requirements, that may necessitate you generating and managing your own root key, also known as "bring your own key" (BYOK). If this is the case, we recommend that you complete the required steps before setting up Microsoft Purview Message Encryption. See [Planning and implementing your Azure Information Protection tenant key](/information-protection/plan-design/plan-implement-tenant-key) for more.

## Verify Microsoft Purview Message Encryption configuration in Exchange Online PowerShell

You can verify that your Microsoft 365 tenant is properly configured to use Microsoft Purview Message Encryption in [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell).

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) using an account with global administrator permissions in your Microsoft 365 tenant.

2. Run the Get-IRMConfiguration cmdlet.

     You should see a value of `$True` for the AzureRMSLicensingEnabled parameter, which indicates that Microsoft Purview Message Encryption is configured in your tenant. If it is not, use Set-IRMConfiguration to set the value of AzureRMSLicensingEnabled to `$True` to enable Microsoft Purview Message Encryption.

3. Run the Test-IRMConfiguration cmdlet using the following syntax:

   ```powershell
   Test-IRMConfiguration [-Sender <email address> -Recipient <email address>]
   ```

   **Example**:

   ```powershell
   Test-IRMConfiguration -Sender securityadmin@contoso.com -Recipient securityadmin@contoso.com
   ```

   - For sender and recipient, use the email address of any user in your Microsoft 365 tenant.

     Your results should be similar to:

     ```console
     Results : Acquiring RMS Templates ...
                - PASS: RMS Templates acquired.  Templates available: Contoso  - Confidential View Only, Contoso  - Confidential, Do Not
            Forward.
            Verifying encryption ...
                - PASS: Encryption verified successfully.
            Verifying decryption ...
                - PASS: Decryption verified successfully.
            Verifying IRM is enabled ...
                - PASS: IRM verified successfully.

            OVERALL RESULT: PASS
     ```

   - Your organization name will replace *Contoso*.

   - The default template names may be different from those displayed above. See [Configuring and managing templates for Azure Information Protection](/azure/information-protection/configure-policy-templates) for more.

4. If the test fails with an error message **Failed to acquire RMS templates**, execute the following commands and run the Test-IRMConfiguration cmdlet to verify that it passes. Connect to the [AIPService module](/powershell/module/aipservice/?view=azureipps) to run the cmdlet.

   ```powershell
   $RMSConfig = Get-AipServiceConfiguration
   $LicenseUri = $RMSConfig.LicensingIntranetDistributionPointUrl
   Set-IRMConfiguration -LicensingLocation $LicenseUri
   Set-IRMConfiguration -InternalLicensingEnabled $true
   ```
5. Run the Remove-PSSession cmdlet to disconnect from the Rights Management service.

     ```powershell
     Remove-PSSession $session
     ```

## Next steps: Define mail flow rules to use Microsoft Purview Message Encryption

If there are previously configured mail flow rules to encrypt email in your organization, you need to update the existing rules to use Microsoft Purview Message Encryption. For new deployments, you need to create new mail flow rules.

> [!IMPORTANT]
> If you do not update existing mail flow rules, your users will continue to receive encrypted mail that uses the previous HTML attachment format, instead of the new seamless experience.

Mail flow rules determine under what conditions email messages should be encrypted, as well as conditions for removing that encryption. When you set an action for a rule, any messages that match the rule conditions are encrypted when they're sent.

For steps on creating mail flow rules message encryption, see [Define mail flow rules to encrypt email messages in Office 365](define-mail-flow-rules-to-encrypt-email.md).

To update existing rules to use Microsoft Purview Message Encryption:

1. In the Microsoft 365 admin center, go to **Admin centers** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2059104" target="_blank">**Exchange**</a>.
2. In the Exchange admin center, go to **Mail flow > Rules**.
3. For each rule, in **Do the following**:
    - Select **Modify the message security**.
    - Select **Apply Office 365 Message Encryption and rights protection**.
    - Select **Encrypt** from the RMS template list.
    - Select **Save**.
    - Select **OK**.
